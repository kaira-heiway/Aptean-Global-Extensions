table 71632092 LicensePlateContent108FDW
{
  Caption = 'License Plate Content';

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
      ObsoleteReason = 'New Field created due to Datatype issue, Replaced by "Qty. Selected(Base)"';
      ObsoleteState = Removed;
      ObsoleteTag = '26.0';
    }
    field(23; Status; Code[20])
    {
      Caption = 'Status';
    }
    field(24; "Qty. Selected(Base)"; Decimal)
    {
      Caption = 'Qty. Selected (Base)';
    }
    field(25; "License Plate Type"; Code[20])
    {
      Caption = 'License Plate Type';
    }
    field(50; GlobalLotAttributeValueID1; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 1';
    }
    field(51; GlobalLotAttributeValueID2; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 2';
    }
    field(52; GlobalLotAttributeValueID3; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 3';
    }
    field(53; GlobalLotAttributeValueID4; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 4';
    }
    field(54; GlobalLotAttributeValueID5; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 5';
    }
    field(55; GlobalLotAttributeValueID6; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 6';
    }
    field(56; GlobalLotAttributeValueID7; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 7';
    }
    field(57; GlobalLotAttributeValueID8; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 8';
    }
  }
  keys
  {
    // key(PK; "No.", "Child No.", "Item No.", "Lot No.", "Serial No.", "Source Document", "Source No.", "Source Type", "Source Subtype", "Whse. Document No.", "Whse. Document Type", "Unit of Measure Code", "Variant Code", "Location Code", "Bin Code")
    // {
    // }
    key(PK; "No.", "Child No.", "Item No.", "Lot No.", "Serial No.", "Source No.", "Source Type", "Whse. Document No.", "Unit of Measure Code", "Variant Code", "Location Code", "Bin Code")
    {
    }
    key(Key2; "Location Code", "Bin Code", "Item No.", "Variant Code", "Unit of Measure Code", Status)
    {
    }
    key(Key3; "No.", "Item No.", "Lot No.", "Variant Code", "Location Code", "Bin Code")
    {
    }
  }
  var ItemUnitOfMeasure: Record "Item Unit of Measure";
  TempCancelBins: Record Bin temporary;
  Location: Record Location;
}