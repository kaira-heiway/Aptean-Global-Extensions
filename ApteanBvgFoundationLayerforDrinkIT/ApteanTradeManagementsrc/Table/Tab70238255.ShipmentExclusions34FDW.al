table 70238255 ShipmentExclusions34FDW
{
  Caption = 'Shipment Method Exclusions';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Trade Plan Line No."; Integer)
    {
      Caption = 'Trade Plan Line No.';
    }
    field(3; "Shipment Code"; Code[20])
    {
      Caption = 'Shipment Method Code';
    }
    field(11; Description; Code[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(Key1; "Trade Plan No.", "Trade Plan Line No.", "Shipment Code")
    {
    }
  }
}