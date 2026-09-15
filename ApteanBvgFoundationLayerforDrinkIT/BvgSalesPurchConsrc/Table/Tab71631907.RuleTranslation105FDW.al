table 71631907 RuleTranslation105FDW
{
  Caption = 'Sales and Purchase Condition Rule Translation';

  fields
  {
    field(1; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
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
    key(PK; "Rule No.", "Language Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Rule No.", "Language Code", Description)
    {
    }
    fieldgroup(Brick; "Rule No.", "Language Code", Description)
    {
    }
  }
}