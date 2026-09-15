tableextension 88037 "R2R Purch. Rcpt. Line NIQ" extends "Purch. Rcpt. Line"
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