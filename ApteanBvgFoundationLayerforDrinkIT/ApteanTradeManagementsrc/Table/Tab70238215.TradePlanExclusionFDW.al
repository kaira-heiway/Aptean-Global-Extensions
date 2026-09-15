table 70238215 "Trade Plan Exclusion FDW"
{
  Caption = 'Trade Plan Exclusion';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; Type; Enum TradePlanTypeFDW)
    {
      Caption = 'Type';
    }
    field(3; Value; Code[20])
    {
      Caption = 'Value';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", Type, Value)
    {
    }
  }
}