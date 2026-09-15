tableextension 62315 "Item Category APS" extends "Item Category"
{
    fields
    {
        field(62308; "Return Reason Mandatory APS"; Boolean)
        {
            Caption = 'Return Reason Mandatory';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies whether Return Reason is mandatory or not.';
        }
        field(62309; "Def. Return Reason Code APS"; Code[10])
        {
            Caption = 'Default Return Reason Code';
            DataClassification = CustomerContent;
            //TableRelation = "Return Reason".Code;
            ToolTip = 'Specifies the Default Return Reason Code.';
        }
    }
}