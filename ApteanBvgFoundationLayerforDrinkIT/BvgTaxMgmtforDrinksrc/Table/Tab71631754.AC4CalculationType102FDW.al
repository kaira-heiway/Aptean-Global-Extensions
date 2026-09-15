table 71631754 AC4CalculationType102FDW
{
  Caption = 'AC4 Calculation Type';

  fields
  {
    field(1; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
    }
    field(2; "Taxable Base"; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base';
    }
  }
  keys
  {
    key(PK; "Taxable Base")
    {
    }
  }
}