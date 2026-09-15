tableextension 62311 "Pstd Asm Header Ext. APS" extends "Posted Assembly Header"
{
    fields
    {
        field(62308; "Responsibility Center APS"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
            //TableRelation = "Responsibility Center";
            Editable = false;
            ToolTip = 'Specifies the responsibility center propagated from the assembly order.';
        }
    }
}