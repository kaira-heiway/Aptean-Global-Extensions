table 71631911 RuleFilterSet105FDW
{
  Caption = 'Rule Filter Set';

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
    field(20; "Filter Set Id"; Integer)
    {
      Caption = 'Filter Set Id';
    }
    field(50; "Field Caption"; Text[100])
    {
      Caption = 'Field Caption';
    }
  }
  keys
  {
    key(PK; "Field No.", "Field Value", "Filter Set Id")
    {
    }
    key(FilterSetId; "Filter Set Id")
    {
    }
  }
}