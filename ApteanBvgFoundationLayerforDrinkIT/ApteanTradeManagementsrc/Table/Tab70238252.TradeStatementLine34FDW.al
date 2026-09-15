table 70238252 TradeStatementLine34FDW
{
  Caption = 'Trade Statement Line';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; "For Document Table ID"; Integer)
    {
      Caption = 'For Document Table ID';
    }
    field(12; "For Document Type"; Enum PostedDTLSourceType34FDW)
    {
      Caption = 'For Document Type';
    }
    field(13; "For Document No."; Code[20])
    {
      Caption = 'For Document No.';
    }
    field(14; "For Document Line No."; Integer)
    {
      Caption = 'For Document Line No.';
    }
    field(15; "Source Type"; Enum Microsoft.Foundation.Enums."Analysis Source Type")
    {
      Caption = 'Source Type';
    }
    field(16; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(17; "Source Name"; Text[100])
    {
      Caption = 'Source Name';
    }
    field(18; "For Doc. Line Dim. Set ID"; Integer)
    {
      Caption = 'For Document Line Dimension Set ID';
    }
    field(31; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(32; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(33; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(34; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(35; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(36; "Unit Of Measure Code"; Code[10])
    {
      Caption = 'Unit Of Measure Code';
    }
    field(37; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(38; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(50; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(51; "Eligible Base"; Decimal)
    {
      Caption = 'Eligible Base';
    }
    field(52; Eligible; Boolean)
    {
      Caption = 'Eligible';
    }
    field(53; Rate; Decimal)
    {
      Caption = 'Rate';
    }
    field(54; "Rate Type"; Enum TradeStatementRateType34FDW)
    {
      Caption = 'Rate Type';
    }
    field(55; "Calculated Amount"; Decimal)
    {
      Caption = 'Calculated Amount';
    }
    field(56; "Calculated Amount (LCY)"; Decimal)
    {
      Caption = 'Calculated Amount (LCY)';
    }
    field(57; "Amount Granted"; Decimal)
    {
      Caption = 'Amount Granted';
    }
    field(58; "Amount Granted (LCY)"; Decimal)
    {
      Caption = 'Amount Granted (LCY)';
    }
    field(59; "Trade Accrual Entry No."; Integer)
    {
      Caption = 'Trade Accrual Entry No.';
    }
    field(60; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(61; "Value Entry No."; Integer)
    {
      Caption = 'Value Entry No.';
    }
    field(62; Issued; Boolean)
    {
      Caption = 'Issued';
    }
    field(63; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(64; "Balance Account No."; Code[20])
    {
      Caption = 'Balance Account No.';
    }
    field(65; "Document Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Document Type';
    }
    field(66; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(67; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
  }
  keys
  {
    key(PK; "No.", "Line No.")
    {
    }
    key(Key1; "Trade Accrual Entry No.")
    {
    }
  }
 // var EligibleValidationErr: Label;
}