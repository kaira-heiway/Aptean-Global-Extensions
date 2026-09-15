table 71631741 TaxValue102FDW
{
  Caption = 'Tax Value';

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
    field(3; "Currency Impacted"; Boolean)
    {
      Caption = 'Currency Impacted';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}