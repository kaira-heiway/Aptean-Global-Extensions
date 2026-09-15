tableextension 88031 "R2R Purch. Cr. Memo Line NIQ" extends "Purch. Cr. Memo Line"
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