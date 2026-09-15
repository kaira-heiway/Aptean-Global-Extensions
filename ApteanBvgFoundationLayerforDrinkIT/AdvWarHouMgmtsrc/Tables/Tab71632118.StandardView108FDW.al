table 71632118 StandardView108FDW
{
  Caption = 'Standard View';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(3; "Table-ID"; Integer)
    {
      Caption = 'Table-ID';
    }
    field(4; View; Text[1024])
    {
      Caption = 'View';
    }
    field(5; "Filter Group No."; Integer)
    {
      Caption = 'Filter Group No.';
    }
  }
  keys
  {
    key(Key1; Code)
    {
    }
  }
}