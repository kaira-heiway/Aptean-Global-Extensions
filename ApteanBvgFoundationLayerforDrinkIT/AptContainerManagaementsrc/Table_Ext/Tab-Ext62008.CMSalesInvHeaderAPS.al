tableextension 62008 "CM Sales Inv. Header APS" extends "Sales Invoice Header"
{
    fields
    {
        field(62050; "CM Empty Good Limit Status APS"; Enum "CM EmptyGoodLimitStatus APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit Status';
            Editable = false;
        }
        field(62051; "CM EG Limit Approved by APS"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit Approved by';
            Editable = false;
        }
        field(62052; "CM EG Limit Approved on APS"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit Approved on by';
            Editable = false;
        }
        field(62053; "CM Automatic Creation APS"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Automatic';
            Editable = false;
        }
        field(62065; "CM Shipment Type APS"; Enum "CM ShipmentMethodType APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Shipment Type';
        }
    }
}
