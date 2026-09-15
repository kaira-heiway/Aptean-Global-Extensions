table 70238230 "Trade Price Rule Entry FDW"
{
  Caption = 'Trade Price Rule Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Source Type"; Enum "Trade Partner Source Type FDW")
    {
      Caption = 'Source Type';
    }
    field(3; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(4; "Source Name"; Text[100])
    {
      Caption = 'Source Name';
    }
    field(5; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(6; "Trade Plan Description"; Text[100])
    {
      Caption = 'Trade Plan Description';
    }
    field(7; "Price Rule"; Enum TradePlanPriceRuleFDW)
    {
      Caption = 'Price Rule';
    }
    field(8; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(9; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(10; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(11; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(12; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(13; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(14; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(15; "Calculation Level"; Integer)
    {
      Caption = 'Calculation Level';
    }
    field(16; "Calculation Base"; Enum TradePlanCalculationBaseFDW)
    {
      Caption = 'Calculation Base';
    }
    field(17; "Rate Type"; Enum TradePlanRateTypeFDW)
    {
      Caption = 'Rate Type';
    }
    field(18; "Eligible Base"; Decimal)
    {
      Caption = 'Eligible Base';
    }
    field(19; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(20; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(21; Rate; Decimal)
    {
      Caption = 'Rate';
    }
    field(22; "Unit Amount"; Decimal)
    {
      Caption = 'Unit Amount';
    }
    field(23; "Unit Amount (LCY)"; Decimal)
    {
      Caption = 'Unit Amount (LCY)';
    }
    field(24; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(25; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(26; Manual; Boolean)
    {
      Caption = 'Manual';
    }
    field(27; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(28; "Document Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Document Type';
    }
    field(29; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(30; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(31; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(32; "Price Unit of Measure Code"; Code[10])
    {
      Caption = 'Price Unit of Measure Code';
    }
    field(33; "Qty. per Price Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Price Unit of Measure';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; "Posting Date", "Source Type", "Source No.", "Trade Plan No.", "Trade Plan Description", "Item No.")
    {
    }
  }
}