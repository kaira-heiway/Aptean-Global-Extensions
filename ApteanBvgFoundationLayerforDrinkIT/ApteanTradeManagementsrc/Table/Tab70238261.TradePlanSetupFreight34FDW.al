table 70238261 "Trade Plan Setup Freight 34FDW"
{
  Caption = 'Trade Plan Setup Freight';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; "Shipping Agent"; Code[20])
    {
      Caption = 'Shipping Agent';
    }
    field(13; "Calculation Per"; Enum "Trade Freight Type34FDW")
    {
      Caption = 'Calculation Per';
    }
    field(14; "Type Code"; Code[10])
    {
      Caption = 'Type Code';
    }
    field(15; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(16; "Document Type"; Enum "Trade Plan Doc. Type34FDW")
    {
      Caption = 'Document Type';
    }
    field(17; "Calculation Type"; Enum "Trade Plan Calc Type34FDW")
    {
      Caption = 'Calculation Type';
    }
    field(18; "Calculation Rate Type No."; Code[20])
    {
      Caption = 'Calculation Rate Type No.';
    }
    field(19; "From Floor Space Number"; Decimal)
    {
      Caption = 'From';
      ObsoleteReason = 'Field will be moved to more generic field named ''From''';
      ObsoleteState = Removed;
      ObsoleteTag = '24.0';
    }
    field(20; "To Floor Space Number"; Decimal)
    {
      Caption = 'To';
      ObsoleteReason = 'Field will be moved to more generic field named ''To''';
      ObsoleteState = Removed;
      ObsoleteTag = '24.0';
    }
    field(21; "Cost (LCY)"; Decimal)
    {
      Caption = 'Cost (LCY)';
    }
    field(22; Allocation; Enum "Trade Plan Allocation34FDW")
    {
      Caption = 'Allocation';
    }
    field(23; "Lump Sum"; Boolean)
    {
      Caption = 'Lump Sum';
    }
    field(24; "Arrival Code"; Code[20])
    {
      Caption = 'Arrival Code';
    }
    field(25; "Departure Code"; Code[20])
    {
      Caption = 'Departure Code';
    }
    field(30; From; Decimal)
    {
      Caption = 'From';
    }
    field(31; To; Decimal)
    {
      Caption = 'To';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Line No.")
    {
    }
    key(Key2; "Shipping Agent", "Calculation Per", "Type Code", "Document Type", "Calculation Type", "Calculation Rate Type No.", "To Floor Space Number", Allocation)
    {
      ObsoleteReason = 'Key contains an obsolete field.';
      ObsoleteState = Removed;
      ObsoleteTag = '24.0';
    }
    key(Key3; "Shipping Agent", "Calculation Per", "Type Code", "Document Type", "Calculation Type", "Calculation Rate Type No.", To, Allocation)
    {
    }
  }
 // var TRAIntegration: __MissingTypeSymbol__;
  //IntegerRangeErr: Label;
}