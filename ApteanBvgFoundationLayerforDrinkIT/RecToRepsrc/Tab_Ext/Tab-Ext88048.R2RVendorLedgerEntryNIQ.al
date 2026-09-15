tableextension 88048 "R2R Vendor Ledger Entry NIQ" extends "Vendor Ledger Entry"
{
    fields
    {
        field(88000; "R2R Reclassified NIQ"; Boolean)
        {
            Caption = 'Reclassified';
        }
        field(88002; "R2R Order No. NIQ"; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;
        }
        field(88008; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
        }
    }
}