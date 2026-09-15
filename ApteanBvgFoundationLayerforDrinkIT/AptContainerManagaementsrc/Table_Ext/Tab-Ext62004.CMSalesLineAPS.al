tableextension 62004 "CM Sales Line APS" extends "Sales Line"
{
    fields
    {
        field(62050; "CM Excl. Cred. Lim. Warn APS"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Exclude From Credit Limit Warnings';
        }
        field(62051; "CM Incl. EGs. Lim. Warn APS"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Include In Empty Good Limit Warnings';
        }
        field(62052; "CM Document EG LimitStatus APS"; Enum "CM EmptyGoodLimitStatus APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Document Empty Good Limit Status';
            Editable = false;
        }
        field(62053; "CM RetOrd. Automat. Creat. APS"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Automatic Return Order Created';
            Editable = false;
        }
        field(62054; "CM Shipment Type APS"; Enum "CM ShipmentMethodType APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Shipment Type';
            Editable = false;
        }
    }
}
