table 70238274 PeriodicCostLineEntry34FDW
{
  Caption = 'Periodic Cost Line Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Periodic Cost Line Entry No."; Integer)
    {
      Caption = 'Periodic Cost Line Entry No.';
    }
    field(3; "Calculation Date"; Date)
    {
      Caption = 'Calculation Date';
    }
    field(10; "Rate Type"; Enum TradePlanRateTypeFDW)
    {
      Caption = 'Rate Type';
    }
    field(11; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(12; "Rate Application Method"; Enum RateApplicationMethod34FDW)
    {
      Caption = 'Rate Application Method';
    }
    field(13; "Packaging Code"; Code[20])
    {
      Caption = 'Packaging Code';
    }
    field(20; "Periodic Cost Start Date"; Date)
    {
      Caption = 'Periodic Cost Start Date';
    }
    field(21; "Periodic Costing Applicable"; Boolean)
    {
      Caption = 'Periodic Costing Applicable';
    }
    field(22; "Net Change"; Decimal)
    {
      Caption = 'Net Change';
    }
    field(23; "Remaining Quantity"; Decimal)
    {
      Caption = 'Remaining Quantity';
    }
    field(24; "Eligible Base"; Decimal)
    {
      Caption = 'Eligible Base';
    }
    field(25; Rate; Decimal)
    {
      Caption = 'Rate';
    }
    field(26; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(27; "Packaging Quantity (Expected)"; Decimal)
    {
      Caption = 'Packaging Quantity (Expected)';
    }
    field(28; "Packaging Quantity Posted"; Decimal)
    {
      Caption = 'Packaging Quantity Posted';
    }
    field(30; Posted; Boolean)
    {
      Caption = 'Posted';
    }
    field(31; "Inventory Changes"; Boolean)
    {
      Caption = 'Inventory Changes';
    }
    field(32; "Relates to PCE No."; Integer)
    {
      Caption = 'Relates to Periodic Cost Entry No.';
    }
    field(33; Factor; Decimal)
    {
      Caption = 'Factor';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key2; "Periodic Cost Line Entry No.", "Calculation Date", "Relates to PCE No.")
    {
    }
  }
}