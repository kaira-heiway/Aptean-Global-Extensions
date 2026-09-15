table 70218892 StabilityStudyIntervalLine7FDW
{
  Caption = 'Stability Study Interval Line';

  fields
  {
    field(1; "Interval Code"; Code[20])
    {
      Caption = 'Interval Code';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(10; "Interval Period"; DateFormula)
    {
      Caption = 'Interval Period';
    }
  }
  keys
  {
    key(PK; "Interval Code", "Line No.")
    {
    }
  }
}