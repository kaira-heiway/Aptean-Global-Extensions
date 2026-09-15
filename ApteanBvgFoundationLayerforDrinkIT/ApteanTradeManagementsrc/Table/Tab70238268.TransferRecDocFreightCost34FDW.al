table 70238268 TransferRecDocFreightCost34FDW
{
  Caption = 'Transfer Receipt Document Freight Cost';

  fields
  {
    field(1; "Document Table ID"; Integer)
    {
      Caption = 'Document Table ID';
    }
    field(3; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(4; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(12; "Trade Plan Setup Freight Line"; Integer)
    {
      Caption = 'Trade Plan Setup Freight Line';
    }
    field(13; "Shipping Agent"; Code[10])
    {
      Caption = 'Shipping Agent';
    }
    field(14; "Calculation Type"; Enum "Trade Plan Calc Type34FDW")
    {
      Caption = 'Calculation Type';
    }
    field(15; "Calculation Rate Type No."; Code[20])
    {
      Caption = 'Calculation Rate Type No.';
    }
    field(18; "Cost (LCY)"; Decimal)
    {
      Caption = 'Cost (LCY)';
    }
    field(19; "Freight Amount (LCY)"; Decimal)
    {
      Caption = 'Freight Amount (LCY)';
    }
    field(20; "Arrival Code"; Code[20])
    {
      Caption = 'Arrival Code';
    }
    field(21; "Departure Code"; Code[20])
    {
      Caption = 'Departure Code';
    }
    field(22; Manual; Boolean)
    {
      Caption = 'Manual';
    }
    field(30; From; Decimal)
    {
      Caption = 'From';
    }
    field(31; To; Decimal)
    {
      Caption = 'To';
    }
    field(32; "Planned Quantity"; Decimal)
    {
      Caption = 'Planned Quantity';
    }
    field(33; "Lump Sum"; Boolean)
    {
      Caption = 'Lump Sum';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document No.", "Line No.")
    {
    }
  }
}