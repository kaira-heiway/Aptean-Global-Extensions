tableextension 62015 "CM Shipment Method APS" extends "Shipment Method"
{
    fields
    {
        field(62050; "CM Shipment Type APS"; Enum "CM ShipmentMethodType APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Shipment Type';
        }
    }
}
