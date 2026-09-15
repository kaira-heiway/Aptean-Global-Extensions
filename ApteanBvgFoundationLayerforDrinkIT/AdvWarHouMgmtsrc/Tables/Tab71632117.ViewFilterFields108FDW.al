table 71632117 ViewFilterFields108FDW
{
  Caption = 'Filter Fields';

  fields
  {
    field(1; "No."; Integer)
    {
      Caption = 'No.';
    }
    field(2; Name; Text[250])
    {
      Caption = 'Name';
    }
    field(3; Type; Enum ViewFilterType108FDW)
    {
      Caption = 'Type';
    }
    field(4; Value; Text[1024])
    {
      Caption = 'Value';
    }
  }
  keys
  {
    key(Key1; "No.")
    {
    }
  }
}