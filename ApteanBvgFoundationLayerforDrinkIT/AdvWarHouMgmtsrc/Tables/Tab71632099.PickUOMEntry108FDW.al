table 71632099 PickUOMEntry108FDW
{
  Caption = 'Picking UOM Entry';

  fields
  {
    field(1; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(2; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(3; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(4; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(5; "Bin Code"; Code[20])
    {
      Caption = 'Bin Code';
    }
    field(6; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(7; "License Plate No."; Code[50])
    {
      Caption = 'License Plate No.';
    }
    field(8; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(9; "Qty. Base"; Decimal)
    {
      Caption = 'Qty. Base';
    }
  }
  keys
  {
    key(Key1; "Location Code", "Bin Code", "Item No.", "Variant Code", "Unit of Measure Code", "License Plate No.", "Lot No.")
    {
    }
  }
}