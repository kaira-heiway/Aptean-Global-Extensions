tableextension 62316 "Warehouse Receipt Line APS" extends "Warehouse Receipt Line"
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