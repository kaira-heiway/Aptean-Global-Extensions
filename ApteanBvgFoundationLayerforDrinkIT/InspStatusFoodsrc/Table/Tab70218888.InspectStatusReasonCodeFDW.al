table 70218888 InspectStatusReasonCodeFDW
{
  Caption = 'Inspection Status Reason Code';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(10; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}