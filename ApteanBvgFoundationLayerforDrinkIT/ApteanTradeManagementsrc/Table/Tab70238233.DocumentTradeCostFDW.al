table 70238233 "Document Trade CostFDW"
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
    field(13; "Accrual Posted"; Boolean)
    {
      Caption = 'Accrual Posted';
    }
    field(14; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(16; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(30; "Trade Cost Origin"; Enum "Trade Cost Origin 34FDW")
    {
      Caption = 'Trade Cost Origin';
    }
    field(31; "Transport Order No."; Code[20])
    {
      Caption = 'Transport Order No.';
    }
    // field(35; "Doc. Trade Cost Origin"; Enum TradeCostsOriginFDW)
    // {
    //   Caption = 'Trade Cost Origin';
    //   ObsoleteReason = 'Field will be replaced by Trade Cost Origin field.';
    //   ObsoleteState = Removed;
    //   ObsoleteTag = '24.0';
    // }
    field(70; "Trade Cost Source"; Enum TradeCostSource34FDW)
    {
      Caption = 'Trade Cost Source';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Trade Plan No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; Description, "Calculation Type", Percentage, Amount, "Allocation Method")
    {
    }
  }
  // var DeleteAccrualWhenPostedErr: Label[100];
  // InsertAccrualWhenPostedErr: Label[100];
  // ModifyAccrualWhenPostedErr: Label[100];
}