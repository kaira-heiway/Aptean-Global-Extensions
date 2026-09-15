tableextension 88038 "R2R Return Receipt Line NIQ" extends "Return Receipt Line"
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