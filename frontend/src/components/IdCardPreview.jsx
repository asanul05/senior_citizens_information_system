import { useEffect, useRef } from 'react';
import { QRCodeSVG } from 'qrcode.react';
import { Button, Space } from 'antd';
import { PrinterOutlined } from '@ant-design/icons';

// Standard ID card dimensions: 85.6mm x 54mm (CR80)
// At 300 DPI: 1011 x 638 pixels

const IdCardPreview = ({ cardData, onPrint, showPrintButton = true }) => {
    const cardRef = useRef(null);

    const handlePrint = () => {
        if (cardRef.current) {
            const printWindow = window.open('', '_blank');
            printWindow.document.write(`
                <!DOCTYPE html>
                <html>
                <head>
                    <title>OSCA ID Card - ${cardData?.osca_id || 'Print'}</title>
                    <style>
                        @page {
                            size: 85.6mm 54mm;
                            margin: 0;
                        }
                        body {
                            margin: 0;
                            padding: 0;
                            font-family: 'Segoe UI', Arial, sans-serif;
                        }
                        .id-card {
                            width: 85.6mm;
                            height: 54mm;
                            padding: 3mm;
                            box-sizing: border-box;
                            background: linear-gradient(135deg, #1a5f7a 0%, #2d8a6e 100%);
                            color: white;
                            position: relative;
                            overflow: hidden;
                        }
                        .id-card::before {
                            content: '';
                            position: absolute;
                            top: -20mm;
                            right: -10mm;
                            width: 40mm;
                            height: 40mm;
                            background: rgba(255,255,255,0.1);
                            border-radius: 50%;
                        }
                        .header {
                            display: flex;
                            align-items: center;
                            margin-bottom: 2mm;
                            padding-bottom: 1mm;
                            border-bottom: 0.5mm solid rgba(255,255,255,0.3);
                        }
                        .header-text {
                            flex: 1;
                            text-align: center;
                        }
                        .header-title {
                            font-size: 3mm;
                            font-weight: bold;
                            letter-spacing: 0.5mm;
                        }
                        .header-subtitle {
                            font-size: 2mm;
                            opacity: 0.9;
                        }
                        .content {
                            display: flex;
                            gap: 3mm;
                        }
                        .photo-section {
                            width: 18mm;
                            height: 20mm;
                            background: white;
                            border-radius: 1mm;
                            overflow: hidden;
                            flex-shrink: 0;
                        }
                        .photo-section img {
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                        }
                        .photo-placeholder {
                            width: 100%;
                            height: 100%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            background: #e0e0e0;
                            color: #666;
                            font-size: 2mm;
                        }
                        .info-section {
                            flex: 1;
                            font-size: 2.2mm;
                            line-height: 1.4;
                        }
                        .osca-id {
                            font-size: 3mm;
                            font-weight: bold;
                            color: #ffd700;
                            margin-bottom: 1mm;
                        }
                        .name {
                            font-size: 2.8mm;
                            font-weight: bold;
                            margin-bottom: 1mm;
                        }
                        .info-row {
                            display: flex;
                            gap: 1mm;
                        }
                        .info-label {
                            opacity: 0.8;
                            min-width: 12mm;
                        }
                        .qr-section {
                            position: absolute;
                            bottom: 3mm;
                            right: 3mm;
                            background: white;
                            padding: 1mm;
                            border-radius: 1mm;
                        }
                        .footer {
                            position: absolute;
                            bottom: 1mm;
                            left: 3mm;
                            font-size: 1.8mm;
                            opacity: 0.7;
                        }
                    </style>
                </head>
                <body>
                    ${cardRef.current.innerHTML}
                </body>
                </html>
            `);
            printWindow.document.close();
            printWindow.focus();
            setTimeout(() => {
                printWindow.print();
                printWindow.close();
            }, 250);
        }
        if (onPrint) onPrint();
    };

    if (!cardData) {
        return <div style={{ padding: 20, textAlign: 'center', color: '#999' }}>No card data available</div>;
    }

    return (
        <div>
            <div
                ref={cardRef}
                style={{
                    width: '342px', // 85.6mm at 96 DPI screen
                    height: '216px', // 54mm at 96 DPI screen
                    padding: '12px',
                    boxSizing: 'border-box',
                    background: 'linear-gradient(135deg, #1a5f7a 0%, #2d8a6e 100%)',
                    color: 'white',
                    position: 'relative',
                    overflow: 'hidden',
                    borderRadius: '8px',
                    fontFamily: "'Segoe UI', Arial, sans-serif",
                    boxShadow: '0 4px 12px rgba(0,0,0,0.3)',
                }}
                className="id-card"
            >
                {/* Decorative circle */}
                <div style={{
                    position: 'absolute',
                    top: '-60px',
                    right: '-30px',
                    width: '150px',
                    height: '150px',
                    background: 'rgba(255,255,255,0.08)',
                    borderRadius: '50%',
                }} />

                {/* Header */}
                <div style={{
                    display: 'flex',
                    alignItems: 'center',
                    marginBottom: '8px',
                    paddingBottom: '4px',
                    borderBottom: '1px solid rgba(255,255,255,0.3)',
                }}>
                    <div style={{ flex: 1, textAlign: 'center' }}>
                        <div style={{ fontSize: '11px', fontWeight: 'bold', letterSpacing: '1px' }}>
                            SENIOR CITIZEN ID
                        </div>
                        <div style={{ fontSize: '8px', opacity: 0.9 }}>
                            Republic of the Philippines • Zamboanga City
                        </div>
                    </div>
                </div>

                {/* Content */}
                <div style={{ display: 'flex', gap: '12px' }}>
                    {/* Photo */}
                    <div style={{
                        width: '70px',
                        height: '80px',
                        background: 'white',
                        borderRadius: '4px',
                        overflow: 'hidden',
                        flexShrink: 0,
                    }}>
                        {cardData.photo_url ? (
                            <img
                                src={cardData.photo_url}
                                alt="Senior Photo"
                                style={{ width: '100%', height: '100%', objectFit: 'cover' }}
                            />
                        ) : (
                            <div style={{
                                width: '100%',
                                height: '100%',
                                display: 'flex',
                                alignItems: 'center',
                                justifyContent: 'center',
                                background: '#e0e0e0',
                                color: '#666',
                                fontSize: '10px',
                            }}>
                                No Photo
                            </div>
                        )}
                    </div>

                    {/* Info */}
                    <div style={{ flex: 1, fontSize: '9px', lineHeight: 1.5 }}>
                        <div style={{
                            fontSize: '12px',
                            fontWeight: 'bold',
                            color: '#ffd700',
                            marginBottom: '4px',
                        }}>
                            {cardData.osca_id || 'N/A'}
                        </div>
                        <div style={{
                            fontSize: '11px',
                            fontWeight: 'bold',
                            marginBottom: '4px',
                        }}>
                            {cardData.full_name}
                        </div>
                        <div style={{ display: 'flex', gap: '4px' }}>
                            <span style={{ opacity: 0.8, minWidth: '45px' }}>Birthday:</span>
                            <span>{cardData.birthdate}</span>
                        </div>
                        <div style={{ display: 'flex', gap: '4px' }}>
                            <span style={{ opacity: 0.8, minWidth: '45px' }}>Gender:</span>
                            <span>{cardData.gender}</span>
                        </div>
                        <div style={{ display: 'flex', gap: '4px' }}>
                            <span style={{ opacity: 0.8, minWidth: '45px' }}>Address:</span>
                            <span style={{ fontSize: '8px' }}>{cardData.barangay}</span>
                        </div>
                    </div>
                </div>

                {/* QR Code */}
                <div style={{
                    position: 'absolute',
                    bottom: '12px',
                    right: '12px',
                    background: 'white',
                    padding: '4px',
                    borderRadius: '4px',
                }}>
                    <QRCodeSVG
                        value={cardData.qr_data || JSON.stringify({ osca_id: cardData.osca_id })}
                        size={50}
                        level="M"
                    />
                </div>

                {/* Footer */}
                <div style={{
                    position: 'absolute',
                    bottom: '4px',
                    left: '12px',
                    fontSize: '7px',
                    opacity: 0.7,
                }}>
                    Valid: {cardData.issue_date} - {cardData.expiry_date}
                </div>
            </div>

            {showPrintButton && (
                <div style={{ marginTop: 16, textAlign: 'center' }}>
                    <Button
                        type="primary"
                        icon={<PrinterOutlined />}
                        onClick={handlePrint}
                    >
                        Print ID Card
                    </Button>
                </div>
            )}
        </div>
    );
};

export default IdCardPreview;
