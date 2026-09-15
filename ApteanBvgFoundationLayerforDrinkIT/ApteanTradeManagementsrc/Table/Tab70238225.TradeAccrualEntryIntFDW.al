table 70238225 "Trade Accrual Entry (Int.) FDW"
{
  Caption = 'Trade Accrual Entry (Interim)';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(3; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(4; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(5; Description; Text[100])
    {
      Caption = 'Item Charge Description';
    }
    field(6; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(7; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(8; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(9; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(10; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(11; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(12; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(13; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(14; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(15; "Trade Partner Source Type"; Enum "Trade Partner Source Type FDW")
    {
      Caption = 'Trade Partner Source Type';
    }
    field(16; "Trade Partner Source No."; Code[20])
    {
      Caption = 'Trade Partner Source No.';
    }
    field(17; "Applies-to Doc. Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Applies-to Doc. Type';
    }
    field(18; "Applies-to Doc. No."; Code[20])
    {
      Caption = 'Applies-to Doc. No.';
    }
    field(19; "Applies-to Doc. Line No."; Integer)
    {
      Caption = 'Applies-to Doc. Line No.';
    }
    field(20; "Date Invoiced."; Date)
    {
      Caption = 'Date Invoiced';
    }
    field(21; "Source Type"; Enum Microsoft.Foundation.Enums."Analysis Source Type")
    {
      Caption = 'Source Type';
    }
    field(22; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(23; "Gross Weight"; Decimal)
    {
      Caption = 'Gross Weight';
    }
    field(24; "Net Weight"; Decimal)
    {
      Caption = 'Net Weight';
    }
    field(26; Reversed; Boolean)
    {
      Caption = 'Reversed';
    }
    field(31; "Orig. Doc. Table ID"; Integer)
    {
      Caption = 'Orig. Doc. Table ID';
    }
    field(32; "Orig. Doc. Type"; Enum "Orig Doc Type 34 FDW")
    {
      Caption = 'Orig. Doc. Type';
    }
    field(33; "Orig. Doc. No."; Code[20])
    {
      Caption = 'Orig. Doc. No.';
    }
    field(34; "Orig. Doc. Line No."; Integer)
    {
      Caption = 'Orig. Doc. Line No.';
    }
    field(35; "Orig. Doc. Line Dim. Set ID"; Integer)
    {
      Caption = 'Original Doc. Line Dim. Set ID';
    }
    field(41; "Post. Doc. Trade Table ID"; Integer)
    {
      Caption = 'Posted Doc. Trade Line Table ID';
    }
    field(42; "Post. Doc. Trade Source"; Enum PostedDTLSourceType34FDW)
    {
      Caption = 'Posted Doc. Trade Line Source';
    }
    field(43; "Post. Doc. Trade Doc. No"; Code[20])
    {
      Caption = 'Posted Doc. Trade Line Doc. No';
    }
    field(44; "Post. Doc. Trade Doc. Line No."; Integer)
    {
      Caption = 'Posted Doc. Trade Line Doc. Line No.';
    }
    field(45; "Post. Doc. Trade Line No."; Integer)
    {
      Caption = 'Posted Doc. Trade Line No.';
    }
    field(46; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(47; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(48; "Balance Account No."; Code[20])
    {
      Caption = 'Balance Account No.';
    }
    field(49; "G/L Account No. (Actual)"; Code[20])
    {
      Caption = 'G/L Account No. (Actual)';
    }
    field(50; "G/L Entry No."; Integer)
    {
      Caption = 'G/L Entry No.';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key1; "Trade Plan No.")
    {
    }
    key(Key2; "Trade Plan No.", "Applies-to Doc. No.", "Applies-to Doc. Line No.", "Applies-to Doc. Type")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Entry No.", Description, "Item Charge No.", "Item No.", "Posting Date")
    {
    }
    fieldgroup(Brick; "Entry No.", Description, "Item Charge No.", "Item No.", "Posting Date")
    {
    }
  }
}