table 70218885 InspStatusChangeWorksheet07FDW
{
  Caption = 'Inspection Status Change Worksheet';

  fields
  {
    field(1; WorksheetName; Code[10])
    {
      Caption = 'Worksheet Name';
    }
    field(2; LineNo; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; Selected; Boolean)
    {
      Caption = 'Selected';
    }
    field(12; ItemNo; Code[20])
    {
      Caption = 'Item No.';
    }
    field(13; VariantCode; Code[20])
    {
      Caption = 'Variant Code';
    }
    field(14; LotNo; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(15; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(16; InspectionStatusCode; Code[10])
    {
      Caption = 'Inspection Status Code';
    }
    field(17; Inventory; Decimal)
    {
      Caption = 'Inventory';
    }
    field(18; BaseUnitOfMeasure; Code[10])
    {
      Caption = 'Base Unit Of Measure';
    }
    field(19; InspectionTagNo; Code[20])
    {
      Caption = 'Inspection Tag No.';
    }
    field(20; DispositionCode; Code[20])
    {
      Caption = 'Disposition Code';
    }
    field(21; DispositionComment; Text[250])
    {
      Caption = 'Disposition Comment';
    }
    field(22; InspectionStatusTagCode; Code[10])
    {
      Caption = 'Inspection Status Code';
    }
  }
  keys
  {
    key(Key1; WorksheetName, LineNo)
    {
    }
  }
}