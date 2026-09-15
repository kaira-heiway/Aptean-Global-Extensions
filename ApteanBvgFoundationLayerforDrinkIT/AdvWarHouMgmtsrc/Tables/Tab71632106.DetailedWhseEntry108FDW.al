table 71632106 DetailedWhseEntry108FDW
{
  Caption = 'Detailed Warehouse Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(3; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(4; "Registering Date"; Date)
    {
      Caption = 'Registering Date';
    }
    field(5; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(6; "Zone Code"; Code[10])
    {
      Caption = 'Zone Code';
    }
    field(7; "Bin Code"; Code[20])
    {
      Caption = 'Bin Code';
    }
    field(9; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(10; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(11; "Qty. (Base)"; Decimal)
    {
      Caption = 'Qty. (Base)';
    }
    field(12; "Warehouse Entry No."; Integer)
    {
      Caption = 'Warehouse Entry No.';
    }
    field(13; "License Plate No."; Code[50])
    {
      Caption = 'License Plate No.';
    }
    field(14; "Warehouse Register No."; Integer)
    {
      Caption = 'Warehouse Register No.';
    }
    field(15; "SIFT Bucket No."; Integer)
    {
      Caption = 'SIFT Bucket No.';
    }
    field(20; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(21; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers = "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption = '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(22; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(23; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(24; "Source Subline No."; Integer)
    {
      Caption = 'Source Subline No.';
    }
    field(25; "Source Document"; Enum Microsoft.Warehouse.Journal."Warehouse Journal Source Document")
    {
      Caption = 'Source Document';
    }
    field(50; "Whse. Document No."; Code[20])
    {
      Caption = 'Whse. Document No.';
    }
    field(51; "Whse. Document Type"; Enum Microsoft.Warehouse.Journal."Warehouse Journal Document Type")
    {
      Caption = 'Whse. Document Type';
    }
    field(52; "Whse. Document Line No."; Integer)
    {
      Caption = 'Whse. Document Line No.';
    }
    field(60; "Reference Document"; Enum Microsoft.Warehouse.Setup."Whse. Reference Document Type")
    {
      Caption = 'Reference Document';
    }
    field(61; "Reference No."; Code[20])
    {
      Caption = 'Reference No.';
    }
    field(62; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(63; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(64; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(65; "License Plate Type"; Code[20])
    {
      Caption = 'License Plate Type';
    }
    field(80; "Destination Type"; Enum Microsoft.Warehouse.Request."Warehouse Destination Type")
    {
      Caption = 'Destination Type';
    }
    field(81; "Destination No."; Code[20])
    {
      Caption = 'Destination No.';
    }
    field(82; "Destination Address Code"; Code[20])
    {
      Caption = 'Destination Address Code';
    }
    field(83; "Mixed pallet"; Boolean)
    {
      Caption = 'Mixed pallet';
    }
    field(101; "Custom License Plate"; Boolean)
    {
      Caption = 'Custom License Plate';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
    key(Key2; "License Plate No.", "Reference Document")
    {
    }
    key(Key3; "Whse. Document No.", "Whse. Document Line No.", "Bin Code", "Location Code", "Variant Code", "Item No.", "Lot No.", "License Plate No.", "SIFT Bucket No.")
    {
    }
    key(Key4; "Reference No.", "Registering Date")
    {
    }
    key(Key5; "Location Code", "Bin Code", "Item No.", "Variant Code", "Unit of Measure Code", "Lot No.", "License Plate No.", "SIFT Bucket No.")
    {
    }
    key(Key6; "Warehouse Entry No.")
    {
    }
    key(Key7; "Location Code", "Item No.", "Lot No.", "Variant Code")
    {
    }
    key(key8; "Warehouse Register No.")
    {
    }
    key(Key9; "License Plate No.", "Location Code", "Warehouse Entry No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Entry No.", "Location Code", "Item No.")
    {
    }
  }
}