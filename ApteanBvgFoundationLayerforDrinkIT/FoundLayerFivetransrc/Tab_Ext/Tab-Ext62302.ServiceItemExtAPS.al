tableextension 62302 "Service Item Ext. APS" extends "Service Item"
{
    fields
    {
        field(62300; "Fixed Asset No. APS"; Code[20])
        {
            Caption = 'Fixed Asset No.';
            DataClassification = CustomerContent;
            //TableRelation = "Fixed Asset";
        }
    }
}