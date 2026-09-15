table 71631738 TaxBOM102FDW
{
  Caption = 'Tax BOM';

  fields
  {
    field(1; "Parent Item No."; Code[20])
    {
      Caption = 'Parent Item No.';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(4; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(5; "Item Unit of Measure"; Code[10])
    {
      Caption = 'Item Unit of Measure';
    }
    field(6; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
  }
  keys
  {
    key(PK; "Parent Item No.", "Item No.")
    {
    }
  }
}