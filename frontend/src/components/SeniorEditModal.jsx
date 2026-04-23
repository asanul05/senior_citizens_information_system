import { useState, useEffect } from "react";
import {
  Modal,
  Form,
  Input,
  Select,
  DatePicker,
  Row,
  Col,
  Divider,
  message,
  Spin,
  Switch,
  Space,
  Upload,
  Button,
} from "antd";
import dayjs from "dayjs";
import { seniorsApi, registrationApi } from "../services/api";

const { Option } = Select;
const { TextArea } = Input;

function RequiredLabel({ children }) {
  return (
    <span>
      <span style={{ color: "#ff4d4f", marginRight: 4 }}>*</span>
      {children}
    </span>
  );
}

function SeniorEditModal({ visible, seniorId, onClose, onSuccess }) {
  const [form] = Form.useForm();
  const [loading, setLoading] = useState(false);
  const [saving, setSaving] = useState(false);
  const [senior, setSenior] = useState(null);
  const [barangays, setBarangays] = useState([]);
  const [lookupOptions, setLookupOptions] = useState(null);
  const [transferDocFileList, setTransferDocFileList] = useState([]);
  const [uploadingTransferDoc, setUploadingTransferDoc] = useState(false);
  const [nameChangeDocFileList, setNameChangeDocFileList] = useState([]);
  const [uploadingNameChangeDoc, setUploadingNameChangeDoc] = useState(false);
  const selectedBarangayId = Form.useWatch("barangay_id", form);
  const selectedFirstName = Form.useWatch("first_name", form);
  const selectedMiddleName = Form.useWatch("middle_name", form);
  const selectedLastName = Form.useWatch("last_name", form);
  const selectedExtension = Form.useWatch("extension", form);
  const isBarangayTransfer =
    senior?.barangay_id !== undefined &&
    selectedBarangayId !== undefined &&
    Number(selectedBarangayId) !== Number(senior.barangay_id);

  const isNameChange =
    !!senior &&
    ((selectedFirstName ?? "") !== (senior.first_name ?? "") ||
      (selectedMiddleName ?? "") !== (senior.middle_name ?? "") ||
      (selectedLastName ?? "") !== (senior.last_name ?? "") ||
      (selectedExtension ?? "") !== (senior.extension ?? ""));

  useEffect(() => {
    if (visible && seniorId) {
      fetchSenior();
      fetchLookupOptions();
      fetchBarangays();
    }
  }, [visible, seniorId]);

  useEffect(() => {
    if (!isBarangayTransfer) {
      form.setFieldValue("transfer_supporting_document_path", null);
      setTransferDocFileList([]);
    }
  }, [isBarangayTransfer, form]);

  useEffect(() => {
    if (!isNameChange) {
      form.setFieldValue("name_change_reason_type", null);
      form.setFieldValue("name_change_reason_details", null);
      form.setFieldValue("name_change_supporting_document_path", null);
      setNameChangeDocFileList([]);
    }
  }, [isNameChange, form]);

  const fetchSenior = async () => {
    setLoading(true);
    try {
      const response = await seniorsApi.getById(seniorId);
      const seniorData = response.data.data;
      setSenior(seniorData);

      // Set form values
      form.setFieldsValue({
        first_name: seniorData.first_name,
        middle_name: seniorData.middle_name,
        last_name: seniorData.last_name,
        extension: seniorData.extension,
        birthdate: seniorData.birthdate ? dayjs(seniorData.birthdate) : null,
        gender_id: seniorData.gender_id,
        civil_status_id: seniorData.civil_status_id,
        barangay_id: seniorData.barangay_id,
        birthplace: seniorData.birthplace,
        house_number: seniorData.house_number,
        street: seniorData.street,
        purok: seniorData.purok,
        educational_attainment_id: seniorData.educational_attainment_id,
        is_active: seniorData.is_active,
        mobile_number: seniorData.contact?.mobile,
        telephone_number: seniorData.contact?.telephone_number,
        email: seniorData.contact?.email,
        notes: seniorData.notes,
      });
      setTransferDocFileList([]);
    } catch (error) {
      console.error("Failed to fetch senior:", error);
      message.error("Failed to load senior information");
    } finally {
      setLoading(false);
    }
  };

  const fetchLookupOptions = async () => {
    try {
      const response = await registrationApi.getLookupOptions();
      setLookupOptions(response.data.data);
    } catch (error) {
      console.error("Failed to fetch lookup options:", error);
    }
  };

  const fetchBarangays = async () => {
    try {
      const response = await registrationApi.getBarangays();
      setBarangays(response.data.data || []);
    } catch (error) {
      console.error("Failed to fetch barangays:", error);
    }
  };

  const handleSubmit = async () => {
    try {
      const values = await form.validateFields();
      setSaving(true);

      // Format birthdate
      const payload = {
        ...values,
        birthdate: values.birthdate
          ? values.birthdate.format("YYYY-MM-DD")
          : null,
      };

      if (!isBarangayTransfer) {
        delete payload.transfer_reason;
        delete payload.transfer_supporting_document_path;
      }

      if (!isNameChange) {
        delete payload.name_change_reason_type;
        delete payload.name_change_reason_details;
        delete payload.name_change_supporting_document_path;
      }

      await seniorsApi.update(seniorId, payload);
      message.success("Senior citizen information updated successfully");
      onSuccess?.();
      onClose();
    } catch (error) {
      if (error.errorFields) {
        message.warning("Please complete required fields before saving.");
        return;
      }
      console.error("Failed to update senior:", error);
      message.error(
        error.response?.data?.message || "Failed to update senior citizen",
      );
    } finally {
      setSaving(false);
    }
  };

  const handleCancel = () => {
    form.resetFields();
    setSenior(null);
    setTransferDocFileList([]);
    setNameChangeDocFileList([]);
    onClose();
  };

  const beforeUploadTransferDocument = (file) => {
    const allowedTypes = ["image/jpeg", "image/jpg", "image/png", "application/pdf"];
    if (!allowedTypes.includes(file.type)) {
      message.error("Only JPG, PNG, or PDF files are allowed.");
      return Upload.LIST_IGNORE;
    }

    const isValidSize = file.size / 1024 / 1024 <= 5;
    if (!isValidSize) {
      message.error("File must be 5MB or smaller.");
      return Upload.LIST_IGNORE;
    }

    return true;
  };

  const handleTransferDocumentUpload = async ({ file, onSuccess, onError }) => {
    if (!seniorId) {
      onError?.(new Error("Senior ID is not available."));
      return;
    }

    try {
      setUploadingTransferDoc(true);
      const formData = new FormData();
      formData.append("document", file);

      const response = await seniorsApi.uploadTransferDocument(seniorId, formData);
      const uploadedPath = response.data?.data?.supporting_document_path || null;

      form.setFieldValue("transfer_supporting_document_path", uploadedPath);
      message.success("Transfer supporting document uploaded.");
      onSuccess?.("ok");
    } catch (error) {
      message.error(error.response?.data?.message || "Failed to upload transfer document.");
      onError?.(error);
    } finally {
      setUploadingTransferDoc(false);
    }
  };

  const handleNameChangeDocumentUpload = async ({ file, onSuccess, onError }) => {
    if (!seniorId) {
      onError?.(new Error("Senior ID is not available."));
      return;
    }

    try {
      setUploadingNameChangeDoc(true);
      const formData = new FormData();
      formData.append("document", file);

      const response = await seniorsApi.uploadNameChangeDocument(seniorId, formData);
      const uploadedPath = response.data?.data?.supporting_document_path || null;

      form.setFieldValue("name_change_supporting_document_path", uploadedPath);
      message.success("Name change supporting document uploaded.");
      onSuccess?.("ok");
    } catch (error) {
      message.error(error.response?.data?.message || "Failed to upload name change document.");
      onError?.(error);
    } finally {
      setUploadingNameChangeDoc(false);
    }
  };

  return (
    <Modal
      title={`Edit Senior Citizen: ${senior?.first_name || ""} ${senior?.last_name || ""}`}
      open={visible}
      onOk={handleSubmit}
      onCancel={handleCancel}
      confirmLoading={saving}
      width={800}
      okText="Save Changes"
    >
      <Spin spinning={loading}>
        <Form form={form} layout="vertical" requiredMark="optional">
          {/* Personal Information */}
          <Divider orientation="left">Personal Information</Divider>
          <Row gutter={16}>
            <Col span={8}>
              <Form.Item
                name="first_name"
                label="First Name"
                rules={[{ required: true, message: "Required" }]}
              >
                <Input />
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="middle_name" label="Middle Name">
                <Input />
              </Form.Item>
            </Col>
            <Col span={6}>
              <Form.Item
                name="last_name"
                label="Last Name"
                rules={[{ required: true, message: "Required" }]}
              >
                <Input />
              </Form.Item>
            </Col>
            <Col span={2}>
              <Form.Item name="extension" label="Ext.">
                <Input placeholder="Jr" />
              </Form.Item>
            </Col>
          </Row>

          {isNameChange && (
            <Row gutter={16}>
              <Col span={12}>
                <Form.Item
                  name="name_change_reason_type"
                  label={<RequiredLabel>Name Change Type</RequiredLabel>}
                  rules={[{ required: true, message: "Name change type is required" }]}
                >
                  <Select placeholder="Select reason type">
                    <Option value="marriage">Marriage</Option>
                    <Option value="psa_correction">PSA Correction</Option>
                    <Option value="court_order">Court Order</Option>
                    <Option value="widow_revert">Widow Reverting to Maiden Name</Option>
                    <Option value="other">Other</Option>
                  </Select>
                </Form.Item>
              </Col>
              <Col span={12}>
                <Form.Item
                  name="name_change_reason_details"
                  label={<RequiredLabel>Reason Details</RequiredLabel>}
                  rules={[{ required: true, message: "Reason details are required" }]}
                >
                  <Input placeholder="Explain the reason for this name change" />
                </Form.Item>
              </Col>
              <Col span={24}>
                <Form.Item
                  name="name_change_supporting_document_path"
                  rules={[{ required: true, message: "At least one supporting document is required" }]}
                  noStyle
                >
                  <Input type="hidden" />
                </Form.Item>
                <Form.Item
                  label={<RequiredLabel>Supporting Document</RequiredLabel>}
                  extra="Upload at least one document (JPG, PNG, PDF). Max 5MB."
                  required
                >
                  <Upload
                    beforeUpload={beforeUploadTransferDocument}
                    customRequest={handleNameChangeDocumentUpload}
                    fileList={nameChangeDocFileList}
                    onChange={({ fileList }) => setNameChangeDocFileList(fileList.slice(-1))}
                    onRemove={() => {
                      form.setFieldValue("name_change_supporting_document_path", null);
                      setNameChangeDocFileList([]);
                      return true;
                    }}
                    maxCount={1}
                    accept=".jpg,.jpeg,.png,.pdf"
                  >
                    <Button loading={uploadingNameChangeDoc}>Upload Name Change Document</Button>
                  </Upload>
                </Form.Item>
              </Col>
            </Row>
          )}

          <Row gutter={16}>
            <Col span={8}>
              <Form.Item
                name="birthdate"
                label="Birthdate"
                rules={[{ required: true, message: "Required" }]}
              >
                <DatePicker style={{ width: "100%" }} />
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item
                name="gender_id"
                label="Gender"
                rules={[{ required: true, message: "Required" }]}
              >
                <Select placeholder="Select Gender">
                  {lookupOptions?.genders?.map((g) => (
                    <Option key={g.id} value={g.id}>
                      {g.name}
                    </Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item
                name="civil_status_id"
                label="Civil Status"
                rules={[{ required: true, message: "Required" }]}
              >
                <Select placeholder="Select Status">
                  {lookupOptions?.civil_statuses?.map((cs) => (
                    <Option key={cs.id} value={cs.id}>
                      {cs.name}
                    </Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={16}>
            <Col span={12}>
              <Form.Item
                name="educational_attainment_id"
                label="Educational Attainment"
              >
                <Select placeholder="Select" allowClear>
                  {lookupOptions?.educational_attainments?.map((ea) => (
                    <Option key={ea.id} value={ea.id}>
                      {ea.name}
                    </Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
          </Row>

          {/* Address */}
          <Divider orientation="left">Address</Divider>
          <Row gutter={16}>
            <Col span={8}>
              <Form.Item name="house_number" label="House No.">
                <Input />
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="street" label="Street">
                <Input />
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item
                name="barangay_id"
                label="Barangay"
                rules={[{ required: true, message: "Required" }]}
              >
                <Select
                  placeholder="Select Barangay"
                  showSearch
                  optionFilterProp="children"
                >
                  {barangays.map((b) => (
                    <Option key={b.id} value={b.id}>
                      {b.name}
                    </Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
          </Row>

          {isBarangayTransfer && (
            <Row gutter={16}>
              <Col span={24}>
                <Form.Item
                  name="transfer_reason"
                  label={<RequiredLabel>Transfer Reason</RequiredLabel>}
                  rules={[{ required: true, message: "Transfer reason is required" }]}
                >
                  <TextArea
                    rows={3}
                    placeholder="Explain why this senior is being transferred to a new barangay"
                  />
                </Form.Item>
              </Col>
              <Col span={24}>
                <Form.Item name="transfer_supporting_document_path" noStyle>
                  <Input type="hidden" />
                </Form.Item>
                <Form.Item label="Supporting Document">
                <Upload
                  beforeUpload={beforeUploadTransferDocument}
                  customRequest={handleTransferDocumentUpload}
                  fileList={transferDocFileList}
                  onChange={({ fileList }) => setTransferDocFileList(fileList.slice(-1))}
                  onRemove={() => {
                    form.setFieldValue("transfer_supporting_document_path", null);
                    setTransferDocFileList([]);
                    return true;
                  }}
                  maxCount={1}
                  accept=".jpg,.jpeg,.png,.pdf"
                >
                  <Button loading={uploadingTransferDoc}>Upload Transfer Document</Button>
                </Upload>
                </Form.Item>
              </Col>
            </Row>
          )}

          {/* Contact Information */}
          <Divider orientation="left">Contact Information</Divider>
          <Row gutter={16}>
            <Col span={8}>
              <Form.Item name="mobile_number" label="Mobile Number">
                <Input />
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="telephone_number" label="Telephone">
                <Input />
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="email" label="Email">
                <Input type="email" />
              </Form.Item>
            </Col>
          </Row>

          {/* Status */}
          <Divider orientation="left">Status</Divider>
          <Row gutter={16}>
            <Col span={8}>
              <Form.Item
                name="is_active"
                label="Active"
                valuePropName="checked"
              >
                <Switch
                  checkedChildren="Yes"
                  unCheckedChildren="No"
                />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={16}>
            <Col span={24}>
              <Form.Item name="notes" label="Notes">
                <TextArea rows={3} placeholder="Additional notes..." />
              </Form.Item>
            </Col>
          </Row>
        </Form>
      </Spin>
    </Modal>
  );
}

export default SeniorEditModal;
