// tableextension 62507 "Setup Ext APS" 
// {
//     fields
//     {
//         field(62500; "Trade Cost Enh. Enabled APS"; Boolean)
//         {
//             Caption = 'Trade Cost Enhancement Enabled';
//             DataClassification = CustomerContent;
//         }
//         field(62501; "TC Purch. Order Nos. APS"; Code[20])
//         {
//             Caption = 'Trade Cost Purch. Order Nos.';
//             DataClassification = CustomerContent;
//             TableRelation = "No. Series";
//         }
//         field(62502; "TC Purch. Receipt Nos. APS"; Code[20])
//         {
//             Caption = 'Trade Cost Purch. Receipt Nos.';
//             DataClassification = CustomerContent;
//             TableRelation = "No. Series";
//         }
//         field(62503; "Cost Center Dim. Code APS"; Code[20])
//         {
//             Caption = 'Cost Center Dimension Code';
//             DataClassification = CustomerContent;
//             TableRelation = Dimension;
//         }
//         field(62505; "Export Dim. Code APS"; Code[20])
//         {
//             Caption = 'Export Dimension Code';
//             DataClassification = CustomerContent;
//             TableRelation = Dimension;
//         }
//         field(62506; "Export Dim. Value APS"; Code[20])
//         {
//             Caption = 'Export Dimension Value';
//             DataClassification = CustomerContent;
//            // TableRelation = "Dimension Value".Code where("Dimension Code" = field("Export Dim. Code APS"));
//         }
//     }
// }
