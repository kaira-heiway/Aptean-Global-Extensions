table 70238253 TradeAccrualSummary34FDW
{
  Caption = 'Trade Accrual Summary';

  fields
  {
    field(1; "Document Table ID"; Integer)
    {
      Caption = 'Document Table ID';
    }
    field(2; "Document Type"; Integer)
    {
      Caption = 'Document Type';
    }
    field(3; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(4; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(12; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(13; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(14; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(15; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(16; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Line No.")
    {
    }
  }
}