table 71631910 RuleFilter105FDW
{
  Caption = 'Rule Filter';

  fields
  {
    field(1; "Field No."; Integer)
    {
      Caption = 'Field No.';
    }
    field(10; "Field Value"; Text[100])
    {
      Caption = 'Field Value';
    }
    field(50; "Field Caption"; Text[100])
    {
      Caption = 'Field Caption';
    }
  }
  keys
  {
    key(PK; "Field No.", "Field Value")
    {
    }
  }
}