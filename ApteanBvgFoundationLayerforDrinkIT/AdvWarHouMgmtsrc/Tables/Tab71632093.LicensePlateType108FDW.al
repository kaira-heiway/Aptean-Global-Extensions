table 71632093 LicensePlateType108FDW
{
  Caption = 'License Plate Type';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(3; Length; Decimal)
    {
      Caption = 'Length';
    }
    field(4; Width; Decimal)
    {
      Caption = 'Width';
    }
    field(5; Height; Decimal)
    {
      Caption = 'Height';
    }
    field(6; Weight; Decimal)
    {
      Caption = 'Weight';
    }
    field(7; Volume; Decimal)
    {
      Caption = 'Volume';
    }
    field(8; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(9; "Unit of Measure"; Code[20])
    {
      Caption = 'Unit of Measure';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}