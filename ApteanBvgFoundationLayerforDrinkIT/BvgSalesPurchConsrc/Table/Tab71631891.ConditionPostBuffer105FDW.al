table 71631891 ConditionPostBuffer105FDW
{
  Caption = 'Condition Post. Buffer';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Source Type"; Integer)
    {
      Caption = 'Source Line Type';
    }
    field(3; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers="0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption='"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(4; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(7; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(10; "Source Header ID"; Guid)
    {
      Caption = 'Source Header ID';
    }
    field(11; "Journal Template Name"; Code[10])
    {
      Caption = 'Journal Template Name';
    }
    field(12; "Journal Batch Name"; Code[10])
    {
      Caption = 'Journal Batch Name';
    }
    field(13; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(14; "Inventory Posting Group"; Code[20])
    {
      Caption = 'Inventory Posting Group';
    }
    field(15; "Source Posting Group"; Code[20])
    {
      Caption = 'Source Posting Group';
    }
    field(20; "Source Line ID"; Guid)
    {
      Caption = 'Source Line ID';
    }
    field(21; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(30; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(31; "Invoiced Quantity (Base)"; Decimal)
    {
      Caption = 'Invoiced Quantity (Base)';
    }
    field(32; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(33; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(51; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(52; "Completely Invoiced"; Boolean)
    {
      Caption = 'Completely Invoiced';
    }
    field(53; "Discount Amount"; Decimal)
    {
      Caption = 'Discount Amount';
    }
    field(80; "Cost Amount"; Decimal)
    {
      Caption = 'Cost Amount';
    }
    field(90; "Appl.-to Item Entry"; Integer)
    {
      Caption = 'Appl.-to Item Entry';
    }
    field(92; "Appl.-to Condition Entry"; Integer)
    {
      Caption = 'Appl.-to Condition Entry';
    }
    field(100; "G/L Register No."; Integer)
    {
      Caption = 'G/L Register No.';
    }
    field(101; "G/L Entry No."; Integer)
    {
      Caption = 'G/L Entry No.';
    }
    field(200; "Item Register No."; Integer)
    {
      Caption = 'Item Register No.';
    }
    field(201; "Item Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(300; "Value Entry No."; Integer)
    {
      Caption = 'Value Entry No.';
    }
    field(480; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(8000; "Condition Doc. Line No."; Integer)
    {
      Caption = 'Condition Document Line No.';
    }
    field(9000; "System-Created Entry"; Boolean)
    {
      Caption = 'System-Created Entry';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(SK_Source; "Source Type", "Source Subtype", "Source ID", "Source Ref. No.")
    {
    }
  }
  // var Currency: Record Currency;
  // SPCIntlGeneralHook: Codeunit IntlGeneralHook105FDW;
  // SPCIntlInventoryHook: Codeunit IntlInventoryHook105FDW;
  // StrFilterLessEqualLbl: Label;
}