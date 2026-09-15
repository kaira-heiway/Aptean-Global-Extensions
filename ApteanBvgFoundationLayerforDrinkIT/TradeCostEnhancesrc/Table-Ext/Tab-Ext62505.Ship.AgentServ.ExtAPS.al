tableextension 62505 "Ship. Agent Serv. Ext APS" extends "Shipping Agent Services"
{
    fields
    {
        field(62500; "Overrule TC Expected APS"; Boolean)
        {
            Caption = 'Overrule Trade Cost Expected';
            DataClassification = CustomerContent;
        }
    }
}
