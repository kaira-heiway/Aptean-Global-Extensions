table 70218884 ISSChangeWorksheetName07FDW
{
  Caption = 'Inspection Status Change Worksheet Name';

  fields
  {
    field(1; Name; Code[10])
    {
      Caption = 'Name';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(Key1; Name)
    {
    }
  }
}