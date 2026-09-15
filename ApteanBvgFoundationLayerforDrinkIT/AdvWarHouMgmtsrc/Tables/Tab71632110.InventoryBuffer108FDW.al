table 71632110 InventoryBuffer108FDW
{
  Caption = 'Inventory Buffer';

  fields
  {
    field(1; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(2; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(3; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(4; "Dimension Entry No."; Integer)
    {
      Caption = 'Dimension Entry No.';
    }
    field(5; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(6; "Bin Code"; Code[20])
    {
      Caption = 'Bin Code';
    }
    field(7; "Serial No."; Code[50])
    {
      Caption = 'Serial No.';
    }
    field(8; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(9; "Package No."; Code[50])
    {
      Caption = 'Package No.';
    }
    field(10; "License Plate No."; Code[50])
    {
      Caption = 'Package No.';
    }
  }
  keys
  {
    key(Key1; "Item No.", "Variant Code", "Dimension Entry No.", "Location Code", "Bin Code", "Lot No.", "Serial No.", "License Plate No.")
    {
    }
    key(Key2; "Location Code", "Variant Code", Quantity)
    {
    }
  }
}