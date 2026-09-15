table 70238223 "Trade Cost Line FDW"
{
  Caption = 'Trade Cost Line';

  fields
  {
    field(1; "Document No."; Code[20])
    {
      Caption = 'No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(3; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(4; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(5; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(6; "Source Type"; Enum "Trade Partner Source Type FDW")
    {
      Caption = 'Source Type';
    }
    field(7; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(8; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(9; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(10; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(11; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(12; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(13; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(14; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(15; "Amount Assigned"; Decimal)
    {
      Caption = 'Amount Assigned';
    }
    field(16; "Posting Type"; Enum "Trade Cost Posting Type FDW")
    {
      Caption = 'Posting Type';
    }
    field(17; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(20; "Post. Doc. Trade Table ID"; Integer)
    {
      Caption = 'Posted Doc. Trade Line Table ID';
    }
    field(21; "Post. Doc. Trade Source"; Enum PostedDTLSourceType34FDW)
    {
      Caption = 'Posted Doc. Trade Line Source';
    }
    field(22; "Post. Doc. Trade Doc. No"; Code[20])
    {
      Caption = 'Posted Doc. Trade Line Doc. No';
    }
    field(23; "Post. Doc. Trade Doc. Line No."; Integer)
    {
      Caption = 'Posted Doc. Trade Line Doc. Line No.';
    }
    field(24; "Post. Doc. Trade Line No."; Integer)
    {
      Caption = 'Posted Doc. Trade Line No.';
    }
    field(25; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(26; "Balance Account No."; Code[20])
    {
      Caption = 'Balance Account No.';
    }
    field(30; "Periodic Cost Line Entry No."; Integer)
    {
      Caption = 'Periodic Cost Line Entry No.';
    }
  }
  keys
  {
    key(PK; "Document No.", "Line No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Item Charge No.", Description, Amount)
    {
    }
    fieldgroup(Brick; "Item Charge No.", Description, Amount)
    {
    }
  }
  var CurrExchRate: Record "Currency Exchange Rate";
  // CannotBeSpecifiedWithoutErr: Label;
  // MissingExchangeRatesQst: Label;
  // YouCannotRenameErr: Label;
}