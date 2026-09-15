table 70238269 DocumentTradeCost34FDW
{
  Caption = 'Document Trade Cost';

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
    field(19; "Accrual Posted"; Boolean)
    {
      Caption = 'Accrual Posted';
    }
    field(20; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(21; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(22; "Trade Cost Origin"; Enum "Trade Cost Origin 34FDW")
    {
      Caption = 'Trade Cost Origin';
    }
    field(23; "Transport Order No."; Code[20])
    {
      Caption = 'Transport Order No.';
    }
    field(30; "Trade Cost Source"; Enum TradeCostSource34FDW)
    {
      Caption = 'Trade Cost Source';
    }
    field(40; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(41; "Item Charge Description"; Text[100])
    {
      Caption = 'Item Charge Description';
    }
    field(42; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(43; "Balance Account No."; Code[20])
    {
      Caption = 'Balance Account No.';
    }
    field(44; "Document Freight Cost Line No."; Integer)
    {
      Caption = 'Document Freight Cost Line No.';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Line No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; Description, "Calculation Type", Percentage, Amount, "Allocation Method")
    {
    }
  }
  var 
  // DeleteAccrualWhenPostedErr: Label[100];
  // InsertAccrualWhenPostedErr: Label[100];
  // ModifyAccrualWhenPostedErr: Label[100];
}