table 71631758 TaxClassTempl102FDW
{
  Caption = 'Tax Classification Template';

  fields
  {
    field(1; "Template Code"; Code[20])
    {
      Caption = 'Template Code';
    }
    field(2; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(3; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(4; "Tax Class. Code"; Code[20])
    {
      Caption = 'Tax Classification Code';
    }
  }
  keys
  {
    key(PK; "Template Code", Type, "Tax Code", "Tax Class. Code")
    {
    }
  }
}