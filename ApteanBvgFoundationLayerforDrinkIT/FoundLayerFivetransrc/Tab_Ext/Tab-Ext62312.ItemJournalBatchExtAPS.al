tableextension 62312 "Item Journal Batch Ext. APS" extends "Item Journal Batch"
{
    fields
    {
        field(62308; "Responsibility Center APS"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
            //TableRelation = "Responsibility Center";
            ToolTip = 'Specifies the responsibility center for this journal batch.';
        }
    }
}