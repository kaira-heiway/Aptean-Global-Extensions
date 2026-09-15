table 70218889 StabilityStudyIntervalHdr07FDW
{
  Caption = 'Stability Study Interval Header';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(10; "Calendar Code"; Code[10])
    {
      Caption = 'Calendar Code';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}