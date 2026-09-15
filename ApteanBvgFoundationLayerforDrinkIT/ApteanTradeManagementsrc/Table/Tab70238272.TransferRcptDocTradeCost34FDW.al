table 70238272 TransferRcptDocTradeCost34FDW
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
    field(4; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(10; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(12; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(13; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(14; "Calculation Type"; Enum TradeCostDocCalculationTypeFDW)
    {
      Caption = 'Calculation Type';
    }
    field(15; Percentage; Decimal)
    {
      Caption = 'Percentage';
    }
    field(16; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(17; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(18; "Allocation Method"; Enum TradePlanAllocationMethodFDW)
    {
      Caption = 'Allocation Method';
    }
    field(20; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(21; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(24; "Trade Cost Order No."; Code[20])
    {
      Caption = 'Trade Cost Order No.';
    }
    field(25; "Trade Partner Name"; Text[100])
    {
      Caption = 'Trade Partner Name';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document No.", "Line No.")
    {
    }
  }
}