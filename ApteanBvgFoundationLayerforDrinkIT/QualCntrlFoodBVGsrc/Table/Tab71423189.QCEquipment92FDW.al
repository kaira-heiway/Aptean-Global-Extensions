table 71423189 QCEquipment92FDW
{
  Caption = 'Quality Control Equipment';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(11; Description; Text[100])
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
    fieldgroup(DropDown; Code, Description)
    {
    }
    fieldgroup(Brick; Code, Description)
    {
    }
  }
}