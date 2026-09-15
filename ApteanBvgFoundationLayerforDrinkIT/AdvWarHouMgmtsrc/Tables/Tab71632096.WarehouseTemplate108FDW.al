table 71632096 WarehouseTemplate108FDW
{
  Caption = 'Warehouse Template';

  fields
  {
    field(1; "Whse. Template Group"; Code[20])
    {
      Caption = 'Warehouse Template Group';
    }
    field(2; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(3; "Whse. Template Code"; Code[20])
    {
      Caption = 'Warehouse Template Code';
    }
    field(4; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(5; "Unit of Measure"; Code[10])
    {
      Caption = 'Unit of Measure';
    }
    field(6; "Min. Quantity"; Decimal)
    {
      Caption = 'Min. Quantity';
    }
    field(7; "Max. Quantity"; Decimal)
    {
      Caption = 'Max. Quantity';
    }
    field(8; "Pick Unit of Measure"; Code[10])
    {
      Caption = 'Pick Unit of Measure';
    }
    field(9; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(10; "Zone Code"; Code[10])
    {
      Caption = 'Zone Code';
    }
    field(11; "Source Document"; Enum Microsoft.Warehouse.Activity."Warehouse Activity Source Document")
    {
      Caption = 'Source Document';
    }
    field(12; Active; Boolean)
    {
      Caption = 'Active';
    }
    field(13; "Split Per Pick Unit of Measure"; Boolean)
    {
      Caption = 'Split lines per Pick Unit of Measure';
    }
    field(14; "Calc. Min\Max By"; Enum TemplateGrouping108FDW)
    {
      Caption = 'Calculate Min\Max By';
    }
    field(15; "Create Pick By"; Enum TemplateGrouping108FDW)
    {
      Caption = 'Create Pick By';
    }
    field(17; "Picking Type"; Enum PickingType108FDW)
    {
      Caption = 'Picking Type';
    }
    field(18; "License Plate Nos."; Code[20])
    {
      Caption = 'License Plate Nos.';
    }
    field(19; "Move to Template Code"; Code[20])
    {
      Caption = 'Move to Template Code';
    }
    field(20; "Default Lic. Plate Type"; Code[20])
    {
      Caption = 'Default License Plate Type';
    }
    field(21; "Calc. Unit of Measure"; Code[10])
    {
      Caption = 'Equivalent Unit of Measure';
    }
    field(22; "Assign LP According to FEFO"; Boolean)
    {
      Caption = 'Assign LP According to FEFO';
    }
    field(23; "Assign New LP No."; Boolean)
    {
      Caption = 'Assign New LP No.';
    }
    field(24; "Bin Status Filter"; Text[250])
    {
      Caption = 'Bin Status Filter';
    }
    field(25; "Default LP Warehouse Status"; Code[10])
    {
      Caption = 'Default License Plate Status';
    }
    field(26; "Dest. Picking Group Filter"; Text[250])
    {
      Caption = 'Destination Picking Group Filter';
    }
    // field(27; "Trans. Validation Type"; Enum TransValidationType117FDW)
    // {
    //   Caption = 'Transport Validation Type';
    // }
    field(28; "Pick Rounding"; Enum PickRounding108FDW)
    {
      Caption = 'Pick Rounding';
    }
    field(29; "Allow To Register Less"; Boolean)
    {
      Caption = 'Allow To Register Less Than Full Qty.';
    }
  }
  keys
  {
    key(PK; "Whse. Template Group", "Whse. Template Code")
    {
    }
    key(key2; "Whse. Template Group", Sequence)
    {
    }
  }
  //var LicenseManagement: Codeunit LicenseManagement108FDW;
}