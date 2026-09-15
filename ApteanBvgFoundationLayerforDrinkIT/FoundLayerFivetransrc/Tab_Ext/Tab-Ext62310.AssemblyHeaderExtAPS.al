tableextension 62310 "Assembly Header Ext. APS" extends "Assembly Header"
{
    fields
    {
        field(62308; "Responsibility Center APS"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
            //TableRelation = "Responsibility Center";
            Editable = false;
            ToolTip = 'Specifies the responsibility center derived from the location code.';
        }
    }
}