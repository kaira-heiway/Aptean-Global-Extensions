table 71632104 LicPlateResEntry108FDW
{
  Caption = 'License Plate Reservation Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(4; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(5; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(6; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(7; "Source Subtype"; Option)
    {
      Caption = 'Source Subtype';
      OptionMembers =  "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption = ' "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(8; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(9; "Source Batch Name"; Code[10])
    {
      Caption = 'Source Batch Name';
    }
    field(10; "Source Prod. Order Line"; Integer)
    {
      Caption = 'Source Prod. Order Line';
    }
    field(11; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(12; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(13; "Qty. to Handle (Base)"; Decimal)
    {
      Caption = 'Qty. to Handle (Base)';
    }
    field(14; "Qty. to Invoice (Base)"; Decimal)
    {
      Caption = 'Qty. to Invoice (Base)';
    }
    field(15; "Quantity Invoiced (Base)"; Decimal)
    {
      Caption = 'Quantity Invoiced (Base)';
    }
    field(16; "New Serial No."; Code[50])
    {
      Caption = 'New Serial No.';
    }
    field(17; "New Lot No."; Code[50])
    {
      Caption = 'New Lot No.';
    }
    field(18; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(19; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(20; "License Plate No."; Code[50])
    {
      Caption = 'License Plate No.';
    }
    field(21; Type; Code[20])
    {
      Caption = 'Type';
    }
    field(22; "Serial No."; Code[50])
    {
      Caption = 'Serial No.';
    }
    field(23; "New License Plate No."; Code[50])
    {
      Caption = 'New License Plate No.';
    }
    field(24; "New Type"; Code[20])
    {
      Caption = 'New Type';
    }
    field(25; "System Entry"; Boolean)
    {
      Caption = 'System Entry';
    }
    field(26; "Qty. Handled (Base)"; Decimal)
    {
      Caption = 'Qty. Handled (Base)';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
    key(Key2; "Source ID", "Source Ref. No.", "Source Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line")
    {
    }
  }
 // var WrongQtyForItemErr: Label;
}