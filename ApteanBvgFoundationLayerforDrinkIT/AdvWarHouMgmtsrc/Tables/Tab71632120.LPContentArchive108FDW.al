table 71632120 LPContentArchive108FDW
{
  Caption = 'License Plate Content Archive';

  fields
  {
    field(1; "No."; Code[50])
    {
      Caption = 'No.';
    }
    field(2; Type; Option )
    {
      Caption = 'Type';
      OptionMembers = Item, "Licence Plate";
       OptionCaption = 'Item, "Licence Plate"';
    }
    field(999; "Version No."; Integer)
    {
      Caption = 'Version No.';
    }
    field(3; "Child No."; Code[50])
    {
      Caption = 'Child No.';
    }
    field(4; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(5; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(6; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(7; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(8; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(9; "Bin Code"; Code[20])
    {
      Caption = 'Bin Code';
    }
    field(10; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(11; "Expiration Date"; Date)
    {
      Caption = 'Expiration Date';
    }
    field(12; "Serial No."; Code[50])
    {
      Caption = 'Serial No.';
    }
    field(13; "Qty. (Base)"; Decimal)
    {
      Caption = 'Qty. (Base)';
    }
    field(14; Weight; Decimal)
    {
      Caption = 'Weight';
    }
    field(15; Cubage; Decimal)
    {
      Caption = 'Cubage';
    }
    // field(16; "Source Document"; Option)
    // {
    //   Caption = 'Source Document';
    // }
    field(17; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    // field(18; "Source Subtype"; Option)
    // {
    //   Caption = 'Source Subtype';
    // }
    field(19; "Whse. Document No."; Code[20])
    {
      Caption = 'Whse. Document No.';
    }
    // field(20; "Whse. Document Type"; Option)
    // {
    //   Caption = 'Whse. Document Type';
    // }
    field(21; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(22; "Qty. Selected (Base)"; Integer)
    {
      Caption = 'Qty. Selected (Base)';
    }
    field(23; Status; Code[20])
    {
      Caption = 'Status';
    }
  }
  keys
  {
    // key(PK; "No.", "Version No.", "Child No.", "Item No.", "Lot No.", "Serial No.", "Source Document", "Source No.", "Source Type", "Source Subtype", "Whse. Document No.", "Whse. Document Type", "Unit of Measure Code", "Variant Code", "Location Code", "Bin Code")
    // {
    // }
    key(PK; "No.", "Version No.", "Child No.", "Item No.", "Lot No.", "Serial No.", "Source No.", "Source Type", "Whse. Document No.", "Unit of Measure Code", "Variant Code", "Location Code", "Bin Code")
    {
    }
  }
}