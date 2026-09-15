table 71631757 TaxTemplate102FDW
{
  Caption = 'Tax Template';

  fields
  {
    field(1; "Template Code"; Code[20])
    {
      Caption = 'Template Code';
    }
    field(2; "Table Id"; Integer)
    {
      Caption = 'Table Id';
    }
    field(3; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
  }
  keys
  {
    key(PK; "Template Code", "Table Id", "Tax Code")
    {
    }
  }
}