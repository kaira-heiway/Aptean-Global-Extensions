table 71631906 CalcTranslation105FDW
{
  Caption = 'Sales and Purchase Condition Calculation Translation';

  fields
  {
    field(1; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
    }
    field(2; "Language Code"; Code[10])
    {
      Caption = 'Language Code';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; "Calculation Code", "Language Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Calculation Code", "Language Code", Description)
    {
    }
    fieldgroup(Brick; "Calculation Code", "Language Code", Description)
    {
    }
  }
}