tableextension 88020 "R2R Invoice Posting Buffer NIQ" extends "Invoice Posting Buffer"
{
    fields
    {
        field(88000; "R2R Description 2 NIQ"; Text[100])
        {
            Caption = 'Description2';
            DataClassification = CustomerContent;
        }
        field(88001; "R2R Reason Code NIQ"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
        }
    }
}