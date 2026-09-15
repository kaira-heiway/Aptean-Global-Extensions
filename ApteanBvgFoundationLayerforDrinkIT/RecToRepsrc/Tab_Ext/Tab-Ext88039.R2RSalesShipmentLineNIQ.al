tableextension 88039 "R2R Sales Shipment Line NIQ" extends "Sales Shipment Line"
{
    fields
    {
        field(88010; "R2R Invoice Group Code NIQ"; Code[10])
        {
            Caption = 'Invoice Group Code';
            Editable = false;
            TableRelation = "R2R Invoice Group NIQ";
        }
    }
}