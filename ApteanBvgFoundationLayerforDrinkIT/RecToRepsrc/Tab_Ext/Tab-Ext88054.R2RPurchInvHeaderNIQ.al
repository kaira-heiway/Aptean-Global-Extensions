tableextension 88054 "R2R PurchInvHeader NIQ" extends "Purch. Inv. Header"
{
    fields
    {
        field(88000; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
        }
        field(88031; "R2R Invoice Operation ID NIQ"; Guid)
        {
            Caption = 'Invoice Operation ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}