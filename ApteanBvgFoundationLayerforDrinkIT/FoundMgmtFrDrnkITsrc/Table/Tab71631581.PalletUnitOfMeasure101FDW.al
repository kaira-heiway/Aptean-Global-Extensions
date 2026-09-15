table 71631581 PalletUnitOfMeasure101FDW
{
  Caption = 'Pallet Unit Of Measure';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Pallet Unit Of Measure';
    }
    field(2; "Transport Unit Code"; Code[10])
    {
      Caption = 'Transport Unit Code';
    }
    field(3; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
  }
  keys
  {
    key(Key1; Code, "Transport Unit Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Transport Unit Code")
    {
    }
  }
//   var GreaterThanZeroErr: Label;
//   TransportUnitIsUsedErr: Label;
}