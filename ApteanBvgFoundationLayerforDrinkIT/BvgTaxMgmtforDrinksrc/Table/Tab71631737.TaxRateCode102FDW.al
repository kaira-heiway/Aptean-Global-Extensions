table 71631737 TaxRateCode102FDW
{
  Caption = 'Tax Rate Code';

  fields
  {
    field(1; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(2; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; "Tax Code", Code)
    {
    }
  }
}