table 71631587 PostedCancelledDoc101FDW
{
  Caption = 'Posted Cancelled Document';

  fields
  {
    field(1; "Source ID"; Integer)
    {
      Caption = 'Source ID';
    }
    field(2; "Cancelled Doc. No."; Code[20])
    {
      Caption = 'Cancelled Doc. No.';
    }
    field(3; "Posted Source ID"; Integer)
    {
      Caption = 'Posted Source ID';
    }
    field(4; "Posted By Doc. No."; Code[20])
    {
      Caption = 'Posted By Doc. No.';
    }
    field(5; "Cancelled Doc. Financial"; Boolean)
    {
      Caption = 'Cancelled Doc. Financial';
    }
  }
  keys
  {
    key(Key1; "Source ID", "Cancelled Doc. No.", "Posted Source ID", "Posted By Doc. No.")
    {
    }
    key(Key2; "Posted Source ID", "Posted By Doc. No.")
    {
    }
  }
}