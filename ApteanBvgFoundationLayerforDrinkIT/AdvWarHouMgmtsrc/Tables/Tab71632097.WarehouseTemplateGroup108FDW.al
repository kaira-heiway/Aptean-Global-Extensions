table 71632097 WarehouseTemplateGroup108FDW
{
  Caption = 'Picking Template Group';

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
    field(3; "No of Template Lines"; Integer)
    {
      Caption = 'No of Template Lines';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}