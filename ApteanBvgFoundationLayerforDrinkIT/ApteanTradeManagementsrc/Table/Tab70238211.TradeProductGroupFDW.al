table 70238211 "Trade Product Group FDW"
{
  Caption = 'Trade Product Group';

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
  fieldgroups
  {
    fieldgroup(Brick; Code, Description)
    {
    }
  }
}