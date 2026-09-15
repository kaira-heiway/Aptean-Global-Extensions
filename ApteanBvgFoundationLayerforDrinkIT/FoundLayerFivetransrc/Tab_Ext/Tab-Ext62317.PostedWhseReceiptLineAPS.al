tableextension 62317 "Posted Whse. Receipt Line APS" extends "Posted Whse. Receipt Line"
{
    fields
    {
        field(62300; "Return Reason Code APS"; Code[10])
        {
            Caption = 'Return Reason Code';
            ToolTip = 'Specifies the code explaining why the item was returned.';
            //TableRelation = "Return Reason";
            Editable = false;
        }
    }
}