tableextension 88050 "R2R Payment Method NIQ" extends "Payment Method"
{
    fields
    {
        field(88000; "R2R Suppress Invoice Print NIQ"; Enum "R2R Suppress Invoice Print NIQ")
        {
            Caption = 'Suppress Invoice Print';
            DataClassification = CustomerContent;
        }
    }
}