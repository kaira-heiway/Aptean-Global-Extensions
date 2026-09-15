// tableextension 62324 "Fixed Asset Ext. APS" extends "Fixed Asset"
// {
//     fields
//     {
//         field(62301; "FA Template APS"; Code[20])
//         {
//             Caption = 'FA Template';
//             DataClassification = CustomerContent;
//             TableRelation = "FA Template APS";
//         }

//         field(62302; "Customer Name APS"; Text[100])
//         {
//             Caption = 'Customer Name';
//             DataClassification = CustomerContent;
//             Editable = false;
//         }

//         field(62303; "Service Item No. APS"; Code[20])
//         {
//             Caption = 'Service Item No.';
//             DataClassification = CustomerContent;
//             TableRelation = "Service Item";
//         }

//         field(62304; "FA in Inventory APS"; Boolean)
//         {
//             Caption = 'FA in Inventory';
//             DataClassification = CustomerContent;
//         }
//     }
// }