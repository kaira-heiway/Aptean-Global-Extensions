tableextension 88034 "R2R Vendor Posting Group NIQ" extends "Vendor Posting Group"
{
    fields
    {
        field(88000; "R2R Reverse Balance Acc. NIQ"; Code[20])
        {
            Caption = 'Reverse Balance Acc.';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";
        }
        field(88001; "R2R Reverse Balancing Acc. NIQ"; Code[20])
        {
            Caption = 'Reverse Bal. Balancing Acc.';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";
        }
        field(88002; "R2R Report in Bal Sheet NIQ"; Option)
        {
            Caption = 'Report in Balance Sheet';
            OptionCaption = ' ,Credit,Debit';
            OptionMembers = " ",Credit,Debit;
        }
        field(88003; "R2R Enable Auto App NIQ"; Boolean)
        {
            Caption = 'Enable Automatic Application by order';
            DataClassification = CustomerContent;
        }
    }
}
