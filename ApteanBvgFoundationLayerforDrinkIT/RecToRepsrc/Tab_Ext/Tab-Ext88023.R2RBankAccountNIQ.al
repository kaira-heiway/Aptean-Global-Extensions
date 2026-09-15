tableextension 88023 "R2R Bank Account NIQ" extends "Bank Account"
{
    fields
    {
        field(88000; "R2R Last Reverse Bal. Date NIQ"; Date)
        {
            Caption = 'Last Reverse Bal. Posting Date';
            DataClassification = CustomerContent;
        }
    }
}