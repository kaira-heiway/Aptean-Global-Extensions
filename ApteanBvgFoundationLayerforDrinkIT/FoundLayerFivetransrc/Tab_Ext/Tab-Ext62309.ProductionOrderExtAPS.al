tableextension 62309 "Production Order Ext. APS" extends "Production Order"
{
    fields
    {
        field(62308; "Responsibility Center APS"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
           // TableRelation = "Responsibility Center";
            Editable = false;
            ToolTip = 'Specifies the responsibility center derived from the location code.';
        }
    }
}