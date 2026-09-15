table 70238234 TransferReceiptDocTradeCostFDW
{
  Caption = 'Transfer Receipt Document Trade Cost';
  

  fields
  {
    field(1; "Document Table ID"; Integer)
    {
      Caption = 'Document Table ID';
    }
    field(3; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(4; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(5; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(6; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(7; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(8; "Calculation Type"; Enum TradeCostDocCalculationTypeFDW)
    {
      Caption = 'Calculation Type';
    }
    field(9; Percentage; Decimal)
    {
      Caption = 'Percentage';
    }
    field(10; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(11; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(12; "Allocation Method"; Enum TradePlanAllocationMethodFDW)
    {
      Caption = 'Allocation Method';
    }
    field(14; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(16; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(60; "Trade Cost Order No."; Code[20])
    {
      Caption = 'Trade Cost Order No.';
    }
    field(61; "Trade Partner Name"; Text[100])
    {
      Caption = 'Trade Partner Name';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document No.", "Trade Plan No.")
    {
    }
  }
}