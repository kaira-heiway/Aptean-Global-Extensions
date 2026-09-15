table 71632114 TransValTable108FDW
{
  Caption = 'Transport Validation Tables';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(2; "Table-ID"; Integer)
    {
      Caption = 'Table-ID';
    }
    field(3; "Field No. to Validate"; Integer)
    {
      Caption = 'Field No. to Validate';
    }
    field(4; View; Text[1024])
    {
      Caption = 'View';
    }
    field(5; Status; Code[20])
    {
      Caption = 'Status';
    }
  }
  keys
  {
    key(Key1; Code)
    {
    }
  }
}