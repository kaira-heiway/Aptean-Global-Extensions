// tableextension 62509 "Trade Cost Hdr. Ext APS" extends "Trade Cost Header FDW"
// {
//     fields
//     {
//         field(62500; "Shipping Agent Code APS"; Code[10])
//         {
//             Caption = 'Shipping Agent Code';
//             DataClassification = CustomerContent;
//             TableRelation = "Shipping Agent";
//         }
//         field(62501; "Ship. Agent Serv. Code APS"; Code[10])
//         {
//             Caption = 'Shipping Agent Service Code';
//             DataClassification = CustomerContent;
//             TableRelation = "Shipping Agent Services".Code where("Shipping Agent Code" = field("Shipping Agent Code APS"));
//         }
//         field(62502; "Route Code APS"; Code[10])
//         {
//             Caption = 'Route Code';
//             DataClassification = CustomerContent;
//         }
//         field(62503; "Driver Code APS"; Code[20])
//         {
//             Caption = 'Driver Code';
//             DataClassification = CustomerContent;
//         }
//         field(62504; "Vehicle Code APS"; Code[20])
//         {
//             Caption = 'Vehicle Code';
//             DataClassification = CustomerContent;
//         }
//         field(62505; "Posted Whse. Shpt. No. APS"; Code[20])
//         {
//             Caption = 'Posted Whse. Shipment No.';
//             DataClassification = CustomerContent;
//         }
//         field(62506; "Whse. Shipment No. APS"; Code[20])
//         {
//             Caption = 'Whse. Shipment No.';
//             DataClassification = CustomerContent;
//         }
//         field(62507; "Posted Whse. Rcpt. No. APS"; Code[20])
//         {
//             Caption = 'Posted Whse. Receipt No.';
//             DataClassification = CustomerContent;
//         }
//         field(62508; "Whse. Receipt No. APS"; Code[20])
//         {
//             Caption = 'Whse. Receipt No.';
//             DataClassification = CustomerContent;
//         }
//         field(62509; "Rate Type APS"; Enum "Trade Cost Rate Type APS")
//         {
//             Caption = 'Rate Type';
//             DataClassification = CustomerContent;
//         }
//         field(62510; "Currency Code APS"; Code[10])
//         {
//             Caption = 'Currency Code';
//             DataClassification = CustomerContent;
//             TableRelation = Currency;
//         }
//     }
// }
