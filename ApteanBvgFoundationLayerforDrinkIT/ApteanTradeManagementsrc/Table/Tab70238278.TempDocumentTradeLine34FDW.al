table 70238278 TempDocumentTradeLine34FDW
{
  Caption = 'Temporary Document Trade Line';

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
      Caption = 'Document Trade Line Rate';
    }
    field(20; "New Rate"; Decimal)
    {
      Caption = 'Trade Plan Rate';
    }
    field(27; "Trade Plan Rate Line No."; Integer)
    {
      Caption = 'Trade Plan Rate No.';
    }
    field(29; "Document Trade Line No."; Integer)
    {
      Caption = 'Document Trade Line No.';
    }
    field(30; "Shipping Code"; Code[20])
    {
      Caption = 'Packaging Code';
    }
    field(70; "Trade Cost Source"; Enum TradeCostSource34FDW)
    {
      Caption = 'Trade Cost Source';
    }
    field(78; Error; Boolean)
    {
      Caption = 'Error';
    }
    field(79; "Error Message"; Text[250])
    {
      Caption = 'Error Message';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Document Line No.", "Document Trade Line No.")
    {
    }
  }
}