table 71632098 PickUnitofMeasure108FDW
{
  Caption = 'Pick Unit of Measure';

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
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}