table 71631749 TaxExciseProduct102FDW
{
  Caption = 'Tax Excise Product';

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
    field(3; "Excise Product Category Code"; Code[20])
    {
      Caption = 'Excise Product Category Code';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}