table 71631833 ItemClassification104FDW
{
  Caption = 'Empty Goods Item Classification';

  fields
  {
    field(1; "Empty Goods Code"; Code[20])
    {
      Caption = 'Empty Goods Code';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(4; "Qty. Per Base UOM"; Decimal)
    {
      Caption = 'Qty. per Base UoM';
    }
    field(5; "Rounding Up"; Boolean)
    {
      Caption = 'Rounding Up (Obsolete)';
      ObsoleteReason = 'Replaced by "Rounding"';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(6; Rounding; Enum Rounding104FDW)
    {
      Caption = 'Rounding';
    }
  }
  keys
  {
    key(PK; "Empty Goods Code", "Item No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Item No.", Description, "Qty. Per Base UOM", Rounding)
    {
    }
  }
}