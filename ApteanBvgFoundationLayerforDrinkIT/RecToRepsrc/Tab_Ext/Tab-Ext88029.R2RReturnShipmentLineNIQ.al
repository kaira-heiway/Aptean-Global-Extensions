tableextension 88029 "R2R Return Shipment Line NIQ" extends "Return Shipment Line"
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