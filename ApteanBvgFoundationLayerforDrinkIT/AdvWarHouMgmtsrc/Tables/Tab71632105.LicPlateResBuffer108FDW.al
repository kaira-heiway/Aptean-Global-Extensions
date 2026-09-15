table 71632105 LicPlateResBuffer108FDW
{
  Caption = 'License Plate Reservation Buffer';

  fields
  {
    field(1; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(2; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers = "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption = '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(3; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(4; "Source Batch Name"; Code[10])
    {
      Caption = 'Source Batch Name';
    }
    field(5; "Source Prod. Order Line"; Integer)
    {
      Caption = 'Source Prod. Order Line';
    }
    field(6; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(7; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(8; "New Lot No."; Code[50])
    {
      Caption = 'New Lot No.';
    }
    field(9; "Serial No."; Code[50])
    {
      Caption = 'Serial No.';
    }
    field(10; "New Serial No."; Code[50])
    {
      Caption = 'New Serial No.';
    }
    field(11; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(12; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(13; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(14; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(15; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(16; "Qty. to Handle (Base)"; Decimal)
    {
      Caption = 'Qty. to Handle (Base)';
    }
    field(17; "Qty. to Invoice (Base)"; Decimal)
    {
      Caption = 'Qty. to Invoice (Base)';
    }
    field(18; "Quantity Invoiced (Base)"; Decimal)
    {
      Caption = 'Quantity Invoiced (Base)';
    }
    field(19; "Unit of Measure Code"; Code[20])
    {
      Caption = 'Qty. to Invoice (Base)';
    }
    field(20; "License Plate No."; Code[50])
    {
      Caption = 'License Plate No.';
    }
    field(21; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(22; "New License Plate No."; Code[50])
    {
      Caption = 'New License Plate No.';
    }
    field(23; Type; Code[20])
    {
      Caption = 'Type';
    }
  }
  keys
  {
    key(Key1; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.", "Lot No.", "New Lot No.", "Serial No.", "New Serial No.", "License Plate No.", "Location Code", "New License Plate No.")
    {
    }
  }
}