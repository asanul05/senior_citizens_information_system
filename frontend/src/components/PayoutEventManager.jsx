import { useEffect, useMemo, useState } from 'react';
import {
    Button,
    Card,
    Col,
    DatePicker,
    Descriptions,
    Divider,
    Drawer,
    Form,
    Input,
    InputNumber,
    Modal,
    Row,
    Select,
    Space,
    Table,
    Tag,
    Upload,
    message,
} from 'antd';
import {
    CheckCircleTwoTone,
    EyeOutlined,
    FileExcelOutlined,
    PlusOutlined,
    UploadOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { MapContainer, TileLayer, CircleMarker, useMapEvents } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import { benefitsApi } from '../services/api';

const { RangePicker } = DatePicker;

const eventStatusOptions = [
    { label: 'Draft', value: 'draft' },
    { label: 'Scheduled', value: 'scheduled' },
    { label: 'In Progress', value: 'in_progress' },
    { label: 'Completed', value: 'completed' },
    { label: 'Cancelled', value: 'cancelled' },
];

const locationTypeOptions = [
    { label: 'Branch / Office', value: 'branch' },
    { label: 'Custom Venue', value: 'custom' },
];

const releaseModeOptions = [
    { label: 'Self', value: 'self' },
    { label: 'Representative', value: 'representative' },
];

const processStatusOptions = [
    { label: 'Released', value: 'released' },
    { label: 'Absent', value: 'absent' },
    { label: 'Deferred', value: 'deferred' },
    { label: 'Cancelled', value: 'cancelled' },
];

const documentCategoryConfig = [
    {
        key: 'representative_valid_id',
        label: 'Representative Valid ID',
        modes: ['representative'],
    },
    {
        key: 'authorization_letter',
        label: 'Authorization Letter',
        modes: ['representative'],
    },
    {
        key: 'proof_of_relationship',
        label: 'Proof of Relationship',
        modes: ['representative'],
    },
    {
        key: 'medical_certificate',
        label: 'Medical Certificate',
        modes: ['representative'],
    },
    {
        key: 'proof_of_life_photo',
        label: 'Proof of Life Photo',
        modes: ['self', 'representative'],
        proofOfLifeOnly: true,
    },
    {
        key: 'senior_acknowledgment',
        label: 'Senior Acknowledgment',
        modes: ['self', 'representative'],
    },
    {
        key: 'benefit_received_photo',
        label: 'Photo of Senior Benefit Received',
        modes: ['self', 'representative'],
        finalProof: true,
    },
];

const DEFAULT_CENTER = [6.9214, 122.0790];

function LocationPickerMap({ latitude, longitude, onChange }) {
    function MapClickHandler() {
        useMapEvents({
            click(event) {
                onChange({
                    latitude: Number(event.latlng.lat.toFixed(7)),
                    longitude: Number(event.latlng.lng.toFixed(7)),
                });
            },
        });

        return null;
    }

    const hasPoint = Number.isFinite(latitude) && Number.isFinite(longitude);
    const center = hasPoint ? [latitude, longitude] : DEFAULT_CENTER;

    return (
        <div style={{ height: 280, width: '100%', borderRadius: 8, overflow: 'hidden', border: '1px solid #f0f0f0' }}>
            <MapContainer center={center} zoom={13} style={{ height: '100%', width: '100%' }}>
                <TileLayer
                    attribution="&copy; OpenStreetMap contributors"
                    url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                />
                <MapClickHandler />
                {hasPoint && (
                    <CircleMarker
                        center={[latitude, longitude]}
                        radius={10}
                        pathOptions={{ color: '#1677ff', fillColor: '#1677ff', fillOpacity: 0.45 }}
                    />
                )}
            </MapContainer>
        </div>
    );
}

function buildFamilyMemberName(member) {
    return [member.first_name, member.middle_name, member.last_name, member.extension]
        .filter(Boolean)
        .join(' ')
        .replace(/\s+/g, ' ')
        .trim();
}

function getDocumentMeta(category) {
    return documentCategoryConfig.find((item) => item.key === category) || {
        key: category,
        label: category.replaceAll('_', ' '),
    };
}

function getVisibleDocumentCategories(releaseMode, benefitType) {
    return documentCategoryConfig.filter((item) => {
        if (!item.modes?.includes(releaseMode || 'self')) {
            return false;
        }

        if (item.proofOfLifeOnly && !benefitType?.require_proof_of_life) {
            return false;
        }

        return true;
    });
}

function downloadBlob(response, filename) {
    const blob = new Blob([response.data], {
        type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    });
    const url = window.URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = filename;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    window.URL.revokeObjectURL(url);
}

function PayoutEventManager({ benefitTypes }) {
    const [events, setEvents] = useState([]);
    const [loading, setLoading] = useState(false);
    const [options, setOptions] = useState({ branches: [], document_categories: [] });
    const [eventModalOpen, setEventModalOpen] = useState(false);
    const [editingEvent, setEditingEvent] = useState(null);
    const [eventForm] = Form.useForm();
    const [rosterDrawerOpen, setRosterDrawerOpen] = useState(false);
    const [selectedEvent, setSelectedEvent] = useState(null);
    const [availableClaims, setAvailableClaims] = useState([]);
    const [claimPickerOpen, setClaimPickerOpen] = useState(false);
    const [selectedClaimIds, setSelectedClaimIds] = useState([]);
    const [processModalOpen, setProcessModalOpen] = useState(false);
    const [selectedRosterEntry, setSelectedRosterEntry] = useState(null);
    const [processForm] = Form.useForm();

    useEffect(() => {
        loadEvents();
        loadOptions();
    }, []);

    const releaseMode = Form.useWatch('release_mode', processForm) || 'self';
    const representativeMode = Form.useWatch(['representative', 'representative_mode'], processForm) || 'family_member';

    const visibleDocumentCategories = useMemo(
        () => getVisibleDocumentCategories(releaseMode, selectedEvent?.benefit_type),
        [releaseMode, selectedEvent]
    );

    const selectedEntryDocuments = selectedRosterEntry?.documents || [];

    const loadEvents = async () => {
        setLoading(true);
        try {
            const response = await benefitsApi.getPayoutEvents();
            setEvents(response.data.data || []);
        } catch {
            message.error('Failed to load payout events');
        } finally {
            setLoading(false);
        }
    };

    const loadOptions = async () => {
        try {
            const response = await benefitsApi.getReleaseLocationOptions();
            setOptions(response.data.data || { branches: [], document_categories: [] });
        } catch {
            message.error('Failed to load payout event options');
        }
    };

    const loadEventDetail = async (eventId, focusEventClaimId = null) => {
        const response = await benefitsApi.getPayoutEvent(eventId);
        const eventData = response.data.data;
        setSelectedEvent(eventData);

        if (focusEventClaimId) {
            const refreshedEntry = (eventData.payout_claims || []).find((claim) => claim.id === focusEventClaimId);
            if (refreshedEntry) {
                setSelectedRosterEntry(refreshedEntry);
            }
        }

        return eventData;
    };

    const openEventModal = (record = null) => {
        setEditingEvent(record);
        eventForm.setFieldsValue(record ? {
            ...record,
            schedule_range: record.scheduled_from && record.scheduled_until
                ? [dayjs(record.scheduled_from), dayjs(record.scheduled_until)]
                : (record.scheduled_at ? [dayjs(record.scheduled_at), dayjs(record.scheduled_at)] : null),
        } : {
            status: 'draft',
            location_type: 'branch',
            schedule_range: null,
        });
        setEventModalOpen(true);
    };

    const handleSaveEvent = async () => {
        try {
            const values = await eventForm.validateFields();
            const payload = {
                ...values,
                scheduled_from: values.schedule_range?.[0]?.format('YYYY-MM-DD HH:mm:ss'),
                scheduled_until: values.schedule_range?.[1]?.format('YYYY-MM-DD HH:mm:ss'),
            };
            delete payload.schedule_range;

            if (editingEvent) {
                await benefitsApi.updatePayoutEvent(editingEvent.id, payload);
                message.success('Payout event updated successfully');
            } else {
                await benefitsApi.createPayoutEvent(payload);
                message.success('Payout event created successfully');
            }
            setEventModalOpen(false);
            loadEvents();
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to save payout event');
        }
    };

    const openRoster = async (record) => {
        try {
            await loadEventDetail(record.id);
            setRosterDrawerOpen(true);
        } catch {
            message.error('Failed to load payout roster');
        }
    };

    const openClaimPicker = async () => {
        if (!selectedEvent) return;
        try {
            const response = await benefitsApi.getAvailableEventClaims(selectedEvent.id);
            setAvailableClaims(response.data.data || []);
            setSelectedClaimIds([]);
            setClaimPickerOpen(true);
        } catch {
            message.error('Failed to load approved claims');
        }
    };

    const attachClaims = async () => {
        try {
            await benefitsApi.attachEventClaims(selectedEvent.id, { benefit_claim_ids: selectedClaimIds });
            message.success('Claims added to payout event');
            setClaimPickerOpen(false);
            await loadEventDetail(selectedEvent.id);
            loadEvents();
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to add claims');
        }
    };

    const openProcessModal = (entry) => {
        setSelectedRosterEntry(entry);
        processForm.setFieldsValue({
            status: entry.status === 'listed' ? 'released' : entry.status,
            release_mode: entry.release_mode || 'self',
            requirement_checks: (selectedEvent?.benefit_type?.payout_requirements || []).map((requirement) => {
                const existing = (entry.requirement_checks || []).find((check) => check.requirement?.id === requirement.id);
                return {
                    benefit_payout_requirement_id: requirement.id,
                    status: existing?.status || 'missing',
                    remarks: existing?.remarks || '',
                };
            }),
            representative: entry.representative || { representative_mode: 'family_member' },
            remarks: entry.remarks,
        });
        setProcessModalOpen(true);
    };

    const handleProcess = async () => {
        try {
            const values = await processForm.validateFields();
            await benefitsApi.processEventClaim(selectedEvent.id, selectedRosterEntry.id, values);
            message.success('Payout roster entry processed');
            setProcessModalOpen(false);
            await loadEventDetail(selectedEvent.id, selectedRosterEntry.id);
            loadEvents();
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to process payout entry');
        }
    };

    const handleUpload = async ({ file, onSuccess, onError }, category) => {
        try {
            const formData = new FormData();
            formData.append('document', file);
            formData.append('document_category', category);
            await benefitsApi.uploadEventClaimDocument(selectedEvent.id, selectedRosterEntry.id, formData);
            onSuccess?.('ok');
            message.success(`${getDocumentMeta(category).label} uploaded successfully`);
            await loadEventDetail(selectedEvent.id, selectedRosterEntry.id);
        } catch (error) {
            onError?.(error);
            message.error(error.response?.data?.message || 'Failed to upload document');
        }
    };

    const handleFamilyMemberChange = (familyMemberId) => {
        const familyMember = (selectedRosterEntry?.senior?.family_members || []).find((member) => member.id === familyMemberId);
        if (!familyMember) {
            return;
        }

        processForm.setFieldsValue({
            representative: {
                ...processForm.getFieldValue('representative'),
                family_member_id: familyMember.id,
                full_name: buildFamilyMemberName(familyMember),
                relationship: familyMember.relationship || undefined,
                mobile_number: familyMember.mobile_number || undefined,
            },
        });
    };

    const handleExportSummary = async () => {
        try {
            message.loading({ content: 'Exporting payout summary...', key: 'payout-export-summary' });
            const response = await benefitsApi.exportPayoutEventsSummary();
            downloadBlob(response, `payout_events_summary_${Date.now()}.xlsx`);
            message.success({ content: 'Payout summary exported', key: 'payout-export-summary' });
        } catch {
            message.error({ content: 'Failed to export payout summary', key: 'payout-export-summary' });
        }
    };

    const handleExportRoster = async () => {
        if (!selectedEvent) {
            return;
        }

        try {
            message.loading({ content: 'Exporting payout roster...', key: 'payout-export-roster' });
            const response = await benefitsApi.exportPayoutEventRoster(selectedEvent.id);
            downloadBlob(response, `${selectedEvent.reference_code || 'payout_event'}_roster_${Date.now()}.xlsx`);
            message.success({ content: 'Payout roster exported', key: 'payout-export-roster' });
        } catch {
            message.error({ content: 'Failed to export payout roster', key: 'payout-export-roster' });
        }
    };

    const renderDocumentUploadRow = (category) => {
        const uploads = selectedEntryDocuments.filter((item) => item.document_category === category.key);
        const latestUpload = uploads[uploads.length - 1];

        return (
            <Row key={category.key} gutter={12} align="middle" style={{ marginBottom: 12 }}>
                <Col span={10}>
                    <Space>
                        <span>{category.label}</span>
                        {uploads.length > 0 && <CheckCircleTwoTone twoToneColor="#52c41a" />}
                    </Space>
                </Col>
                <Col span={8}>
                    <Upload
                        showUploadList={false}
                        customRequest={(requestOptions) => handleUpload(requestOptions, category.key)}
                        accept=".jpg,.jpeg,.png,.pdf"
                    >
                        <Button icon={<UploadOutlined />}>Upload</Button>
                    </Upload>
                </Col>
                <Col span={6}>
                    {uploads.length > 0 ? (
                        <Tag color="green">
                            {uploads.length} uploaded{latestUpload?.original_filename ? ` • ${latestUpload.original_filename}` : ''}
                        </Tag>
                    ) : (
                        <Tag>Not uploaded</Tag>
                    )}
                </Col>
            </Row>
        );
    };

    return (
        <Card>
            <Space style={{ marginBottom: 16 }}>
                <Button type="primary" icon={<PlusOutlined />} onClick={() => openEventModal()}>
                    Create Payout Event
                </Button>
                <Button icon={<FileExcelOutlined />} onClick={handleExportSummary}>
                    Export Summary
                </Button>
            </Space>

            <Table
                rowKey="id"
                loading={loading}
                dataSource={events}
                columns={[
                    { title: 'Reference', dataIndex: 'reference_code', key: 'reference_code' },
                    { title: 'Title', dataIndex: 'title', key: 'title' },
                    { title: 'Benefit', key: 'benefit', render: (_, record) => record.benefit_type?.name || '—' },
                    { title: 'Scheduled', key: 'scheduled', render: (_, record) => record.schedule_label || '—' },
                    { title: 'Location', key: 'location', render: (_, record) => record.release_location_label || '—' },
                    { title: 'Status', dataIndex: 'status', key: 'status', render: (value) => <Tag>{value?.replaceAll('_', ' ')}</Tag> },
                    { title: 'Released', key: 'released', render: (_, record) => record.totals?.released || 0 },
                    {
                        title: 'Actions',
                        key: 'actions',
                        render: (_, record) => (
                            <Space>
                                <Button size="small" onClick={() => openEventModal(record)}>Edit</Button>
                                <Button size="small" type="primary" onClick={() => openRoster(record)}>Open Roster</Button>
                            </Space>
                        ),
                    },
                ]}
            />

            <Modal
                title={editingEvent ? 'Edit Payout Event' : 'Create Payout Event'}
                open={eventModalOpen}
                onCancel={() => setEventModalOpen(false)}
                onOk={handleSaveEvent}
                width={760}
            >
                <Form form={eventForm} layout="vertical">
                    <Form.Item name="benefit_type_id" label="Benefit Type" rules={[{ required: true, message: 'Required' }]}>
                        <Select options={benefitTypes.map((item) => ({ label: item.name, value: item.id }))} />
                    </Form.Item>
                    <Form.Item name="title" label="Title" rules={[{ required: true, message: 'Required' }]}>
                        <Input />
                    </Form.Item>
                    <Row gutter={16}>
                        <Col span={16}>
                            <Form.Item name="schedule_range" label="Scheduled From / Until" rules={[{ required: true, message: 'Required' }]}>
                                <RangePicker showTime style={{ width: '100%' }} />
                            </Form.Item>
                        </Col>
                        <Col span={8}>
                            <Form.Item name="status" label="Status">
                                <Select options={eventStatusOptions} />
                            </Form.Item>
                        </Col>
                    </Row>
                    <Form.Item name="location_type" label="Location Type" rules={[{ required: true, message: 'Required' }]}>
                        <Select options={locationTypeOptions} />
                    </Form.Item>
                    <Form.Item shouldUpdate noStyle>
                        {({ getFieldValue, setFieldsValue }) => getFieldValue('location_type') === 'branch' ? (
                            <Form.Item name="branch_id" label="Branch / Office" rules={[{ required: true, message: 'Required' }]}>
                                <Select options={options.branches.map((branch) => ({ label: branch.name, value: branch.id }))} />
                            </Form.Item>
                        ) : (
                            <>
                                <Form.Item name="location_name" label="Venue Name" rules={[{ required: true, message: 'Required' }]}>
                                    <Input />
                                </Form.Item>
                                <Form.Item name="location_address" label="Venue Address">
                                    <Input />
                                </Form.Item>
                                <Form.Item label="Pin Location">
                                    <LocationPickerMap
                                        latitude={getFieldValue('location_latitude')}
                                        longitude={getFieldValue('location_longitude')}
                                        onChange={({ latitude, longitude }) => {
                                            setFieldsValue({
                                                location_latitude: latitude,
                                                location_longitude: longitude,
                                            });
                                        }}
                                    />
                                </Form.Item>
                                <Row gutter={16}>
                                    <Col span={12}>
                                        <Form.Item
                                            name="location_latitude"
                                            label="Latitude"
                                            rules={[{ required: true, message: 'Required for custom venues' }]}
                                        >
                                            <InputNumber min={-90} max={90} step={0.0000001} style={{ width: '100%' }} />
                                        </Form.Item>
                                    </Col>
                                    <Col span={12}>
                                        <Form.Item
                                            name="location_longitude"
                                            label="Longitude"
                                            rules={[{ required: true, message: 'Required for custom venues' }]}
                                        >
                                            <InputNumber min={-180} max={180} step={0.0000001} style={{ width: '100%' }} />
                                        </Form.Item>
                                    </Col>
                                </Row>
                            </>
                        )}
                    </Form.Item>
                    <Form.Item name="notes" label="Notes">
                        <Input.TextArea rows={3} />
                    </Form.Item>
                </Form>
            </Modal>

            <Drawer
                title={selectedEvent ? `${selectedEvent.reference_code} Roster` : 'Payout Roster'}
                open={rosterDrawerOpen}
                onClose={() => setRosterDrawerOpen(false)}
                width={1080}
                extra={(
                    <Space>
                        <Button icon={<FileExcelOutlined />} onClick={handleExportRoster} disabled={!selectedEvent}>
                            Export Roster
                        </Button>
                        <Button onClick={openClaimPicker}>Add Approved Claims</Button>
                    </Space>
                )}
            >
                {selectedEvent && (
                    <>
                        <Descriptions size="small" column={2} bordered style={{ marginBottom: 16 }}>
                            <Descriptions.Item label="Benefit">{selectedEvent.benefit_type?.name}</Descriptions.Item>
                            <Descriptions.Item label="Location">{selectedEvent.release_location_label}</Descriptions.Item>
                            <Descriptions.Item label="Scheduled">{selectedEvent.schedule_label}</Descriptions.Item>
                            <Descriptions.Item label="Status">{selectedEvent.status?.replaceAll('_', ' ')}</Descriptions.Item>
                        </Descriptions>

                        <Table
                            rowKey="id"
                            dataSource={selectedEvent.payout_claims || []}
                            columns={[
                                { title: 'Senior', key: 'senior', render: (_, record) => record.senior?.full_name || '—' },
                                { title: 'OSCA ID', key: 'osca_id', render: (_, record) => record.senior?.osca_id || '—' },
                                { title: 'Amount', key: 'amount', render: (_, record) => `PHP ${Number(record.benefit_claim?.amount || 0).toLocaleString()}` },
                                { title: 'Status', dataIndex: 'status', key: 'status', render: (value) => <Tag>{value?.replaceAll('_', ' ')}</Tag> },
                                { title: 'Claimed Via', dataIndex: 'release_mode', key: 'release_mode', render: (value) => value ? value.replaceAll('_', ' ') : '—' },
                                { title: 'Representative', key: 'representative', render: (_, record) => record.representative?.full_name || '—' },
                                {
                                    title: 'Documents',
                                    key: 'documents',
                                    render: (_, record) => (
                                        <Space wrap>
                                            <Tag>{record.documents?.length || 0} file(s)</Tag>
                                            {(record.uploaded_document_categories || []).includes('benefit_received_photo') && (
                                                <Tag color="green">Received Photo</Tag>
                                            )}
                                        </Space>
                                    ),
                                },
                                {
                                    title: 'Actions',
                                    key: 'actions',
                                    render: (_, record) => (
                                        <Space>
                                            <Button size="small" type="primary" onClick={() => openProcessModal(record)}>
                                                Process
                                            </Button>
                                        </Space>
                                    ),
                                },
                            ]}
                        />
                    </>
                )}
            </Drawer>

            <Modal
                title="Add Approved Claims"
                open={claimPickerOpen}
                onCancel={() => setClaimPickerOpen(false)}
                onOk={attachClaims}
                okButtonProps={{ disabled: selectedClaimIds.length === 0 }}
                width={900}
            >
                <Table
                    rowKey="id"
                    dataSource={availableClaims}
                    rowSelection={{
                        selectedRowKeys: selectedClaimIds,
                        onChange: setSelectedClaimIds,
                    }}
                    columns={[
                        { title: 'Senior', key: 'senior', render: (_, record) => record.senior?.full_name || '—' },
                        { title: 'OSCA ID', key: 'osca_id', render: (_, record) => record.senior?.osca_id || '—' },
                        { title: 'Claim Year', dataIndex: 'claim_year', key: 'claim_year' },
                        { title: 'Amount', dataIndex: 'amount', key: 'amount', render: (value) => `PHP ${Number(value || 0).toLocaleString()}` },
                    ]}
                />
            </Modal>

            <Modal
                title="Process Payout Roster Entry"
                open={processModalOpen}
                onCancel={() => setProcessModalOpen(false)}
                onOk={handleProcess}
                width={980}
            >
                {selectedRosterEntry && (
                    <>
                        <Descriptions size="small" bordered column={2} style={{ marginBottom: 16 }}>
                            <Descriptions.Item label="Senior">{selectedRosterEntry.senior?.full_name}</Descriptions.Item>
                            <Descriptions.Item label="Benefit">{selectedEvent?.benefit_type?.name}</Descriptions.Item>
                            <Descriptions.Item label="OSCA ID">{selectedRosterEntry.senior?.osca_id}</Descriptions.Item>
                            <Descriptions.Item label="Amount">PHP {Number(selectedRosterEntry.benefit_claim?.amount || 0).toLocaleString()}</Descriptions.Item>
                        </Descriptions>
                        <Form form={processForm} layout="vertical">
                            <Row gutter={16}>
                                <Col span={12}>
                                    <Form.Item name="status" label="Outcome" rules={[{ required: true, message: 'Required' }]}>
                                        <Select options={processStatusOptions} />
                                    </Form.Item>
                                </Col>
                                <Col span={12}>
                                    <Form.Item name="release_mode" label="Claimed By" rules={[{ required: true, message: 'Required' }]}>
                                        <Select options={releaseModeOptions} />
                                    </Form.Item>
                                </Col>
                            </Row>

                            <Divider orientation="left">Requirement Checklist</Divider>
                            <Form.List name="requirement_checks">
                                {(fields) => (
                                    <>
                                        {fields.map((field, index) => {
                                            const requirement = selectedEvent?.benefit_type?.payout_requirements?.[index];
                                            return (
                                                <Row gutter={12} key={field.key}>
                                                    <Col span={8}>
                                                        <Form.Item {...field} name={[field.name, 'benefit_payout_requirement_id']} hidden>
                                                            <Input />
                                                        </Form.Item>
                                                        <Form.Item label={requirement?.name || `Requirement ${index + 1}`}>
                                                            <Input value={`${requirement?.category || ''} ${requirement?.is_required ? '(Required)' : '(Optional)'}`} disabled />
                                                        </Form.Item>
                                                    </Col>
                                                    <Col span={6}>
                                                        <Form.Item {...field} name={[field.name, 'status']} label="Status">
                                                            <Select options={[
                                                                { label: 'Complied', value: 'complied' },
                                                                { label: 'Missing', value: 'missing' },
                                                                { label: 'Waived', value: 'waived' },
                                                            ]} />
                                                        </Form.Item>
                                                    </Col>
                                                    <Col span={10}>
                                                        <Form.Item {...field} name={[field.name, 'remarks']} label="Remarks">
                                                            <Input />
                                                        </Form.Item>
                                                    </Col>
                                                </Row>
                                            );
                                        })}
                                    </>
                                )}
                            </Form.List>

                            <Form.Item shouldUpdate noStyle>
                                {({ getFieldValue }) => getFieldValue('release_mode') === 'representative' && (
                                    <>
                                        <Divider orientation="left">Representative Details</Divider>
                                        <Form.Item name={['representative', 'representative_mode']} label="Representative Type" rules={[{ required: true, message: 'Required' }]}>
                                            <Select options={[
                                                { label: 'Family Member', value: 'family_member' },
                                                { label: 'Authorized Person', value: 'authorized_person' },
                                            ]} />
                                        </Form.Item>

                                        {representativeMode === 'family_member' && (
                                            <Form.Item name={['representative', 'family_member_id']} label="Family Member">
                                                <Select
                                                    onChange={handleFamilyMemberChange}
                                                    options={(selectedRosterEntry.senior?.family_members || []).map((member) => ({
                                                        label: `${buildFamilyMemberName(member)} (${member.relationship || 'Relative'})`,
                                                        value: member.id,
                                                    }))}
                                                />
                                            </Form.Item>
                                        )}

                                        <Row gutter={16}>
                                            <Col span={12}>
                                                <Form.Item name={['representative', 'full_name']} label="Full Name" rules={[{ required: true, message: 'Required' }]}>
                                                    <Input />
                                                </Form.Item>
                                            </Col>
                                            <Col span={12}>
                                                <Form.Item name={['representative', 'relationship']} label="Relationship">
                                                    <Input />
                                                </Form.Item>
                                            </Col>
                                        </Row>
                                        <Row gutter={16}>
                                            <Col span={12}>
                                                <Form.Item name={['representative', 'mobile_number']} label="Mobile Number">
                                                    <Input />
                                                </Form.Item>
                                            </Col>
                                            <Col span={12}>
                                                <Form.Item name={['representative', 'address']} label="Address">
                                                    <Input />
                                                </Form.Item>
                                            </Col>
                                        </Row>
                                        <Row gutter={16}>
                                            <Col span={12}>
                                                <Form.Item name={['representative', 'valid_id_type']} label="Valid ID Type">
                                                    <Input />
                                                </Form.Item>
                                            </Col>
                                            <Col span={12}>
                                                <Form.Item name={['representative', 'valid_id_number']} label="Valid ID Number">
                                                    <Input />
                                                </Form.Item>
                                            </Col>
                                        </Row>
                                        <Form.Item name={['representative', 'authorization_basis']} label="Authorization Basis">
                                            <Select options={[
                                                { label: 'Authorization Letter', value: 'authorization_letter' },
                                                { label: 'Medical Incapacity', value: 'medical_incapacity' },
                                                { label: 'Bedridden', value: 'bedridden' },
                                                { label: 'Senior Unavailable', value: 'senior_unavailable' },
                                            ]} />
                                        </Form.Item>
                                        <Form.Item name={['representative', 'remarks']} label="Representative Remarks">
                                            <Input.TextArea rows={2} />
                                        </Form.Item>
                                    </>
                                )}
                            </Form.Item>

                            <Divider orientation="left">Supporting Documents</Divider>
                            {visibleDocumentCategories.map(renderDocumentUploadRow)}

                            <Divider orientation="left">Uploaded Documents</Divider>
                            <Table
                                rowKey="id"
                                size="small"
                                pagination={false}
                                locale={{ emptyText: 'No uploaded documents yet' }}
                                dataSource={selectedEntryDocuments}
                                columns={[
                                    {
                                        title: 'Category',
                                        dataIndex: 'document_category',
                                        key: 'document_category',
                                        render: (value) => getDocumentMeta(value).label,
                                    },
                                    {
                                        title: 'Filename',
                                        dataIndex: 'original_filename',
                                        key: 'original_filename',
                                    },
                                    {
                                        title: 'Uploaded At',
                                        dataIndex: 'uploaded_at',
                                        key: 'uploaded_at',
                                        render: (value) => value ? dayjs(value).format('MMM D, YYYY h:mm A') : '—',
                                    },
                                    {
                                        title: 'Uploaded By',
                                        dataIndex: 'uploaded_by',
                                        key: 'uploaded_by',
                                        render: (value) => value || '—',
                                    },
                                    {
                                        title: 'View',
                                        key: 'view',
                                        render: (_, record) => record.url ? (
                                            <Button
                                                size="small"
                                                icon={<EyeOutlined />}
                                                onClick={() => window.open(record.url, '_blank', 'noopener,noreferrer')}
                                            >
                                                Open
                                            </Button>
                                        ) : '—',
                                    },
                                ]}
                            />

                            <Form.Item name="remarks" label="Outcome Remarks" style={{ marginTop: 16 }}>
                                <Input.TextArea rows={3} />
                            </Form.Item>
                        </Form>
                    </>
                )}
            </Modal>
        </Card>
    );
}

export default PayoutEventManager;
