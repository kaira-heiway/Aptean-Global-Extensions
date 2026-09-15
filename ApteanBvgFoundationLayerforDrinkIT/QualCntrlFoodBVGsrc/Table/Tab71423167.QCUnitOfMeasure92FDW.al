table 71423167 QCUnitOfMeasure92FDW
{
  Caption = 'Quality Control Unit Of Measure';

  fields
  {
    field(1; Code; Code[10])
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
    key(Key1; Code)
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