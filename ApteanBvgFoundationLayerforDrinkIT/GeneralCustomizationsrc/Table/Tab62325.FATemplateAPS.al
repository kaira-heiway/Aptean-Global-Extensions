// table 62325 "FA Template APS"
// {
//     Caption = 'FA Template';
//     DataClassification = CustomerContent;
//     DrillDownPageId = "FA Template List APS";
//     LookupPageId = "FA Template List APS";

//     fields
//     {
//         field(1; "No."; Code[20])
//         {
//             Caption = 'No.';
//             DataClassification = CustomerContent;
//         }

//         field(2; Description; Text[100])
//         {
//             Caption = 'Description';
//             DataClassification = CustomerContent;
//         }

//         field(3; "FA Class Code"; Code[10])
//         {
//             Caption = 'FA Class Code';
//             TableRelation = "FA Class";
//             DataClassification = CustomerContent;
//         }

//         field(4; "FA Subclass Code"; Code[10])
//         {
//             Caption = 'FA Subclass Code';
//             TableRelation = "FA Subclass".Code WHERE("FA Class Code" = FIELD("FA Class Code"));
//             DataClassification = CustomerContent;
//         }

//         field(5; "FA Location Code"; Code[10])
//         {
//             Caption = 'FA Location Code';
//             TableRelation = "FA Location";
//             DataClassification = CustomerContent;
//         }

//         field(6; "Vendor No."; Code[20])
//         {
//             Caption = 'Vendor No.';
//             TableRelation = Vendor;
//             DataClassification = CustomerContent;
//         }

//         field(7; "Responsible Employee"; Code[20])
//         {
//             Caption = 'Responsible Employee';
//             TableRelation = Employee;
//             DataClassification = CustomerContent;
//         }

//         field(8; "FA Posting Group"; Code[20])
//         {
//             Caption = 'FA Posting Group';
//             TableRelation = "FA Posting Group";
//             DataClassification = CustomerContent;
//         }

//         field(9; "No. Series"; Code[20])
//         {
//             Caption = 'No. Series';
//             TableRelation = "No. Series";
//             DataClassification = CustomerContent;
//         }
//     }

//     keys
//     {
//         key(PK; "No.")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//         fieldgroup(DropDown; "No.", Description)
//         {
//         }
//     }
// }