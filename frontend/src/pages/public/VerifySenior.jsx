import { useEffect, useMemo, useState } from "react";
import { useParams, Link } from "react-router-dom";
import {
  Alert,
  Avatar,
  Button,
  Card,
  Col,
  Divider,
  Row,
  Space,
  Spin,
  Tag,
  Typography,
} from "antd";
import {
  CheckCircleFilled,
  CloseCircleFilled,
  HomeOutlined,
  IdcardOutlined,
  UserOutlined,
} from "@ant-design/icons";
import dayjs from "dayjs";
import { publicApi } from "../../services/api";

const { Title, Text } = Typography;

const VerifySenior = () => {
  const { oscaId } = useParams();
  const [loading, setLoading] = useState(true);
  const [errorMessage, setErrorMessage] = useState("");
  const [verification, setVerification] = useState(null);

  useEffect(() => {
    const loadVerification = async () => {
      try {
        setLoading(true);
        setErrorMessage("");
        const response = await publicApi.verifySenior(oscaId || "");
        setVerification(response.data?.data || null);
      } catch (error) {
        setVerification(error.response?.data?.data || null);
        setErrorMessage(error.response?.data?.message || "Unable to verify this QR code.");
      } finally {
        setLoading(false);
      }
    };

    loadVerification();
  }, [oscaId]);

  const isVerified = Boolean(verification?.verified);
  const senior = verification?.senior;

  const verifiedAtLabel = useMemo(() => {
    if (!verification?.verified_at) return "";
    return dayjs(verification.verified_at).format("MMMM D, YYYY h:mm A");
  }, [verification?.verified_at]);

  if (loading) {
    return (
      <div style={styles.page}>
        <div style={styles.loadingWrap}>
          <Spin size="large" />
          <Text style={{ marginTop: 12, color: "#475569" }}>Checking OSCA verification...</Text>
        </div>
      </div>
    );
  }

  return (
    <div style={styles.page}>
      <div style={styles.bgGlowTop} />
      <div style={styles.bgGlowBottom} />

      <div style={styles.container}>
        <Card style={styles.card} bodyStyle={{ padding: 0 }}>
          <div style={styles.headerWrap}>
            <img src="/images/osca_logo.jpg" alt="OSCA" style={styles.logo} />
            <div>
              <Text style={styles.orgText}>Office of Senior Citizens Affairs</Text>
              <Title level={3} style={styles.title}>
                Senior ID QR Verification
              </Title>
              <Text style={styles.subtitle}>Zamboanga City Government</Text>
            </div>
          </div>

          <div style={styles.statusWrap}>
            <Tag
              color={isVerified ? "success" : "error"}
              style={{
                fontSize: 15,
                fontWeight: 700,
                padding: "8px 14px",
                borderRadius: 999,
                margin: 0,
              }}
              icon={isVerified ? <CheckCircleFilled /> : <CloseCircleFilled />}
            >
              {verification?.status_label || (isVerified ? "Verified Senior Citizen" : "Not Verified")}
            </Tag>
            <Text style={{ color: "#64748b" }}>
              OSCA ID: <strong>{verification?.osca_id || oscaId || "Unknown"}</strong>
            </Text>
          </div>

          {errorMessage ? (
            <div style={{ padding: "0 24px" }}>
              <Alert type="warning" showIcon message={errorMessage} />
            </div>
          ) : null}

          {!isVerified && verification?.reasons?.length ? (
            <div style={{ padding: "16px 24px 0" }}>
              <Alert
                type="error"
                showIcon
                message="Verification checks failed"
                description={
                  <ul style={{ margin: 0, paddingLeft: 18 }}>
                    {verification.reasons.map((reason) => (
                      <li key={reason}>{reason}</li>
                    ))}
                  </ul>
                }
              />
            </div>
          ) : null}

          <Divider style={{ margin: "20px 0" }} />

          <div style={{ padding: "0 24px 24px" }}>
            <Row gutter={[20, 20]}>
              <Col xs={24} md={8}>
                <div style={styles.photoCard}>
                  <Avatar
                    size={132}
                    src={senior?.photo_url || undefined}
                    icon={<UserOutlined />}
                    style={styles.avatar}
                  />
                  <Text strong style={{ marginTop: 12, fontSize: 16, textAlign: "center" }}>
                    {senior?.full_name || "Senior record unavailable"}
                  </Text>
                </div>
              </Col>

              <Col xs={24} md={16}>
                <Card size="small" style={styles.detailCard}>
                  <Space direction="vertical" size={12} style={{ width: "100%" }}>
                    <InfoRow label="OSCA ID" value={verification?.osca_id || "N/A"} icon={<IdcardOutlined />} />
                    <InfoRow label="Birthdate" value={senior?.birthdate || "N/A"} />
                    <InfoRow label="Age" value={senior?.age !== undefined ? `${senior.age}` : "N/A"} />
                    <InfoRow label="Gender" value={senior?.gender || "N/A"} />
                    <InfoRow
                      label="Address"
                      value={[senior?.barangay, senior?.district].filter(Boolean).join(", ") || "N/A"}
                    />
                    <InfoRow label="Checked at" value={verifiedAtLabel || "N/A"} />
                  </Space>
                </Card>
              </Col>
            </Row>

            <div style={styles.footerActions}>
              <Link to="/">
                <Button icon={<HomeOutlined />}>Back to Home</Button>
              </Link>
            </div>
          </div>
        </Card>
      </div>
    </div>
  );
};

const InfoRow = ({ label, value, icon }) => (
  <div style={styles.infoRow}>
    <Text style={styles.infoLabel}>
      {icon ? <span style={{ marginRight: 6 }}>{icon}</span> : null}
      {label}
    </Text>
    <Text strong style={styles.infoValue}>
      {value}
    </Text>
  </div>
);

const styles = {
  page: {
    minHeight: "calc(100vh - 70px)",
    position: "relative",
    overflow: "hidden",
    background:
      "radial-gradient(circle at 10% 15%, #dbeafe 0%, #eff6ff 35%, #f8fafc 100%)",
    padding: "24px 16px 48px",
  },
  bgGlowTop: {
    position: "absolute",
    width: 400,
    height: 400,
    right: -120,
    top: -120,
    borderRadius: "50%",
    background: "rgba(59, 130, 246, 0.12)",
    filter: "blur(2px)",
  },
  bgGlowBottom: {
    position: "absolute",
    width: 340,
    height: 340,
    left: -80,
    bottom: -120,
    borderRadius: "50%",
    background: "rgba(16, 185, 129, 0.12)",
    filter: "blur(2px)",
  },
  container: {
    maxWidth: 920,
    margin: "0 auto",
    position: "relative",
    zIndex: 1,
  },
  card: {
    borderRadius: 18,
    border: "1px solid #e2e8f0",
    overflow: "hidden",
    boxShadow: "0 14px 40px rgba(15, 23, 42, 0.08)",
    background: "#ffffff",
  },
  headerWrap: {
    display: "flex",
    alignItems: "center",
    gap: 16,
    padding: "22px 24px 12px",
  },
  logo: {
    width: 64,
    height: 64,
    objectFit: "cover",
    borderRadius: 14,
    border: "1px solid #dbeafe",
  },
  orgText: {
    color: "#334155",
    display: "block",
    marginBottom: 2,
  },
  title: {
    margin: 0,
    color: "#0f172a",
  },
  subtitle: {
    color: "#64748b",
  },
  statusWrap: {
    display: "flex",
    flexWrap: "wrap",
    alignItems: "center",
    justifyContent: "space-between",
    gap: 12,
    padding: "0 24px",
  },
  photoCard: {
    border: "1px solid #e2e8f0",
    borderRadius: 14,
    background: "linear-gradient(180deg, #f8fafc 0%, #ffffff 100%)",
    padding: "18px 16px",
    minHeight: 230,
    display: "flex",
    flexDirection: "column",
    alignItems: "center",
    justifyContent: "center",
  },
  avatar: {
    backgroundColor: "#e2e8f0",
  },
  detailCard: {
    borderRadius: 12,
    border: "1px solid #e2e8f0",
    background: "#f8fafc",
  },
  infoRow: {
    display: "flex",
    justifyContent: "space-between",
    alignItems: "center",
    gap: 12,
    paddingBottom: 8,
    borderBottom: "1px dashed #e2e8f0",
  },
  infoLabel: {
    color: "#475569",
  },
  infoValue: {
    color: "#0f172a",
    textAlign: "right",
  },
  footerActions: {
    marginTop: 18,
    display: "flex",
    justifyContent: "flex-end",
  },
  loadingWrap: {
    minHeight: "calc(100vh - 70px)",
    display: "flex",
    flexDirection: "column",
    alignItems: "center",
    justifyContent: "center",
  },
};

export default VerifySenior;
