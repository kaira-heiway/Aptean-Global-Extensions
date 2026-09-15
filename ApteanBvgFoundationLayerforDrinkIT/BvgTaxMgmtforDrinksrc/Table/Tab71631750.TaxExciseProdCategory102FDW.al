table 71631750 TaxExciseProdCategory102FDW
{
  Caption = 'Tax Excise Product Category';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
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