table 71631576 StrengthUOM101FDW
{
  Caption = 'Strength Unit of Measure';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(3; "Strength Type"; Enum StrengthType101FDW)
    {
      Caption = 'Strength Type';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}