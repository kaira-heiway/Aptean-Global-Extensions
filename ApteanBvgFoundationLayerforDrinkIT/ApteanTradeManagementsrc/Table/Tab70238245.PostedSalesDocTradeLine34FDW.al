table 70238245 PostedSalesDocTradeLine34FDW
{
  Caption = 'Posted Sales Document Trade Line';

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
    field(4; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(5; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(6; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(7; "Rate Type"; Enum TradePlanRateTypeFDW)
    {
      Caption = 'Rate Type';
    }
    field(8; "Price Rule"; Enum TradePlanPriceRuleFDW)
    {
      Caption = 'Price Rule';
    }
    field(9; "Calculation Base"; Enum TradePlanCalculationBaseFDW)
    {
      Caption = 'Calculation Base';
    }
    field(10; "Calculation Level"; Integer)
    {
      Caption = 'Calculation Level';
    }
    field(11; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(12; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(13; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(14; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(15; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(16; "Original Unit of Measure Code"; Code[10])
    {
      Caption = 'Original Unit of Measure Code';
    }
    field(17; "Original Rate"; Decimal)
    {
      Caption = 'Original Rate';
    }
    field(18; "Rate Unit of Measure Code"; Code[10])
    {
      Caption = 'Rate Unit of Measure Code';
    }
    field(19; Rate; Decimal)
    {
      Caption = 'Rate';
    }
    field(20; "Eligible Base"; Decimal)
    {
      Caption = 'Eligible Base';
    }
    field(21; "Unit Amount"; Decimal)
    {
      Caption = 'Unit Amount';
    }
    field(22; "Unit Amount (LCY)"; Decimal)
    {
      Caption = 'Unit Amount (LCY)';
    }
    field(23; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(24; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(25; "Current Line Amount"; Decimal)
    {
      Caption = 'Total Current Line Amount';
    }
    field(26; Manual; Boolean)
    {
      Caption = 'Manual';
    }
    field(27; "Trade Plan Rate Line No."; Integer)
    {
      Caption = 'Trade Plan Rate No.';
    }
    field(28; "Allocation Percentage"; Decimal)
    {
      Caption = 'Allocation Percentage';
    }
    field(29; "Document Trade Line No."; Integer)
    {
      Caption = 'Document Trade Line No.';
    }
    field(60; "Trade Cost Order No."; Code[20])
    {
      Caption = 'Trade Cost Order No.';
    }
    field(70; "Trade Cost Source"; Enum TradeCostSource34FDW)
    {
      Caption = 'Trade Cost Source';
    }
    field(71; Cancelled; Boolean)
    {
      Caption = 'Cancelled';
    }
    field(80; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(81; "Item Charge Description"; Text[100])
    {
      Caption = 'Item Charge Description';
    }
    field(82; "Non Reversible"; Boolean)
    {
      Caption = 'Non-Reversible';
    }
    field(83; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(84; "Balance Account No."; Code[20])
    {
      Caption = 'Balance Account No.';
    }
    field(85; "Deferred Cost Entry No."; Integer)
    {
      Caption = 'Deferred Cost Entry No.';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Document Line No.", "Document Trade Line No.")
    {
    }
    key(Key1; "Calculation Level", "Trade Plan No.")
    {
    }
  }
}