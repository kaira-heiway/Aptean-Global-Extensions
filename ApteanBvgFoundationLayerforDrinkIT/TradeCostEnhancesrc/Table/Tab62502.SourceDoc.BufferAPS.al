table 62502 "Source Doc. Buffer APS"
{
    Caption = 'Source Document Buffer';
    TableType = Temporary;
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Orig. Doc. Type"; Text[30])
        {
            Caption = 'Document Type';
        }
        field(3; "Orig. Doc. No."; Code[20])
        {
            Caption = 'Orig. Document No.';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
