table 71631740 TaxRelation102FDW
{
  Caption = 'Tax Relation';

  fields
  {
    field(1; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(2; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(3; "Address Code"; Code[20])
    {
      Caption = 'Address Code';
    }
    field(4; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(5; Description; Text[50])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; Type, "No.", "Address Code", "Tax Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Tax Code", Description)
    {
    }
    fieldgroup(Brick; "Tax Code", Description)
    {
    }
  }
}