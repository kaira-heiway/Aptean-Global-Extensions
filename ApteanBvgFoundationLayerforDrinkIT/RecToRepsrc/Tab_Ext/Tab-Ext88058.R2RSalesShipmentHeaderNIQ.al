tableextension 88058 "R2R Sales Shipment Header NIQ" extends "Sales Shipment Header"
{
    fields
    {
        field(88000; "R2R IC Company VendPostGrp NIQ"; Code[20])
        {
            Caption = 'Target IC Company Vendor Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Vendor Posting Group";
        }
        field(88001; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
        }
        field(88015; "R2R Suppress Invoice Print NIQ"; Boolean)
        {
            Caption = 'Suppress Invoice Print ';
            DataClassification = CustomerContent;
        }
        field(88020; "R2R Payment Reference NIQ"; Code[50])
        {
            Caption = 'Payment Reference';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(88031; "R2R Invoice Operation ID NIQ"; Guid)
        {
            Caption = 'Invoice Operation ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}