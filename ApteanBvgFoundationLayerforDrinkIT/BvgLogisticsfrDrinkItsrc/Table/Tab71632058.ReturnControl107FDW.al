table 71632058 ReturnControl107FDW
{
  Caption = 'Return Control (Quantities).';

  fields
  {
    field(1; "Route Planning No."; Code[20])
    {
      Caption = 'Route Planning No.';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(4; "Unit Of Measure Code"; Code[10])
    {
      Caption = 'Sales Unit Of Measure Code';
    }
    field(5; "Calculated Quantity"; Decimal)
    {
      Caption = 'Calculated Quantity';
    }
    field(6; "Quantity in Sales Order"; Decimal)
    {
      Caption = 'Quantity in Sales Order';
    }
    field(7; "Returned Qty. Return Order"; Decimal)
    {
      Caption = 'Quantity In Return Order';
    }
    field(8; "Counted Quantity"; Decimal)
    {
      Caption = 'Counted Quantity';
    }
    field(9; "Qty. Per Unit Of Measure"; Decimal)
    {
      Caption = 'Qty. Per Unit Of Measure';
    }
    field(10; Difference; Decimal)
    {
      Caption = 'Difference';
    }
    field(11; "Difference For Driver"; Decimal)
    {
      Caption = 'Difference For Driver';
    }
    field(12; "Difference For Company"; Decimal)
    {
      Caption = 'Difference For Company';
    }
    field(13; "Return Control Status"; Enum ReturnControlStatus107FDW)
    {
      Caption = 'Difference For Company';
    }
  }
  keys
  {
    key(Key1; "Route Planning No.", "Item No.")
    {
    }
  }
}