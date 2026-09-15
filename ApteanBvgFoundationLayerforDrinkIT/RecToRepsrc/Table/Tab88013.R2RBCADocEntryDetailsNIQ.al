table 88013 "R2RBCA DocEntryDetails NIQ"
{
    Caption = 'Document Entry Details';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            DataClassification = CustomerContent;
        }
        field(3; "G/L Account No."; Text[20])
        {
            Caption = 'G/L Account No.';
            DataClassification = CustomerContent;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(5; "Document Type"; Text[100])
        {
            Caption = 'Document Type';
            DataClassification = CustomerContent;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No. ';
            DataClassification = CustomerContent;
        }
        field(7; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(8; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(9; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            DataClassification = CustomerContent;
        }
        field(10; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(11; "Table Name"; Text[50])
        {
            Caption = 'Table Name';
            DataClassification = CustomerContent;
        }
        field(12; "Record ID"; RecordId)
        {
            Caption = 'Record ID';
            DataClassification = CustomerContent;
        }
        field(13; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID', Locked = true;
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(14; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Table ID", "Document No.", "Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }
}