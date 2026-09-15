tableextension 88022 "R2R Accounting Period NIQ" extends "Accounting Period" //50
{
    fields
    {
        field(88000; "R2R Prior-Year Period NIQ"; Integer)
        {
            BlankZero = true;
            Caption = 'Prior-Year Period';
            DataClassification = CustomerContent;
            MinValue = 0;
            trigger OnValidate()
            begin
                if "R2R Prior-Year Period NIQ" = 0 then
                    Rec.TestField(Closed, false);
            end;
        }
    }
}
