tableextension 62506 "Shipping Agent Ext APS" extends "Shipping Agent"
{
    fields
    {
        field(62500; "Trade Costs Expected APS"; Boolean)
        {
            Caption = 'Trade Costs Expected';
            DataClassification = CustomerContent;
        }
    }
}
