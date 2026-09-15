tableextension 88056 "R2R Ret. Receipt Header NIQ" extends "Return Receipt Header"
{
    fields
    {
        field(88020; "R2R Payment Reference NIQ"; Code[50])
        {
            Caption = 'Payment Reference';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(88031; "R2R Invoice Operation ID NIQ"; Guid)
        {
            Caption = 'Invoice Operation ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}