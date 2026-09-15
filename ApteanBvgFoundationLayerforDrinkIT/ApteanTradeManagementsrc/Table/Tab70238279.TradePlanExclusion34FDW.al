table 70238279 TradePlanExclusion34FDW
{
  Caption = 'Trade Plan Exclusion';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Filter Type"; Enum TradePlanExclFilterType34FDW)
    {
      Caption = 'Filter Type';
    }
    field(3; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(10; "Filter Value"; Blob)
    {
      Caption = 'Filter Value';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Filter Type", "Line No.")
    {
    }
  }
}