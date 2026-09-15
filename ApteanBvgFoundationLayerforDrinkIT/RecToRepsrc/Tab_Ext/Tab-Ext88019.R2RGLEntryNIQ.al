tableextension 88019 "R2R GLEntry NIQ" extends "G/L Entry"
{
    fields
    {
        field(88000; "R2R Description 2 NIQ"; Text[100])
        {
            Caption = 'Description2';
            DataClassification = CustomerContent;
        }
        field(88001; "R2R Prior-Year Period NIQ"; Integer)
        {
            BlankZero = true;
            Caption = 'Prior-Year Period';
            DataClassification = CustomerContent;
            Editable = false;
            MinValue = 0;
        }
        field(88002; "R2R Reverse Bal. Date NIQ"; Date)
        {
            Caption = 'Reverse Bal. Posting Date';
            DataClassification = CustomerContent;
        }
        field(88003; "R2R Add Reporting Dim 1 NIQ"; Code[20])
        {
            Caption = 'Add. Reporting Dimension 1';
            CaptionClass = '50101,1,1';
            DataClassification = CustomerContent;
            TableRelation = "Dimension Value".Code;
        }
        field(88004; "R2R Add Reporting Dim 2 NIQ"; Code[20])
        {
            Caption = 'Add. Reporting Dimension 2';
            CaptionClass = '50101,2,1';
            DataClassification = CustomerContent;
            TableRelation = "Dimension Value".Code;
        }
        field(88005; "R2R Reclassified NIQ"; Boolean)
        {
            Caption = 'Reclassified';
        }
    }
}