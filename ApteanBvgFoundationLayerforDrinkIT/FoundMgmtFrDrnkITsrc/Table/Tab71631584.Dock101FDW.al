table 71631584 Dock101FDW
{
  Caption = 'Dock';

  fields
  {
    field(1; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(2; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(3; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(4; "Shipment Bin Code"; Code[20])
    {
      Caption = 'Shipment Bin Code';
    }
    field(5; "Receipt Bin Code"; Code[20])
    {
      Caption = 'Receipt Bin Code';
    }
  }
  keys
  {
    key(PK; "Location Code", Code)
    {
    }
  }
}