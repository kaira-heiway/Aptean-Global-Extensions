table 71631832 BusinessGroup104FDW
{
  Caption = 'Empty Goods Business Group';

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
    field(3; "Movement Type"; Enum IntlMovementType104FDW)
    {
      Caption = 'Movement Type';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}