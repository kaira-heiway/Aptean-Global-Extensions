tableextension 88024 "R2R Acc. Schedule Line NIQ" extends "Acc. Schedule Line"
{
    fields
    {
        field(88000; "R2R Prior-Year Per. Filter NIQ"; Integer)
        {
            Caption = 'Prior-Year Period Filter';
            FieldClass = FlowFilter;
        }
    }
}
