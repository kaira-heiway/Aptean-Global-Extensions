tableextension 88028 "R2R Gen. Journal Template NIQ" extends "Gen. Journal Template"
{
    fields
    {
        field(88000; "R2R Prior-Year Period NIQ"; Integer)
        {
            BlankZero = true;
            Caption = 'Prior-Year Period';
            DataClassification = CustomerContent;
            MinValue = 0;
        }
    }
}
