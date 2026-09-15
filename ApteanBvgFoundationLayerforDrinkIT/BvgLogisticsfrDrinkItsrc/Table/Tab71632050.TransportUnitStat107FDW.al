table 71632050 TransportUnitStat107FDW
{
  Caption = 'Transport Untit Statistics';

  fields
  {
    field(1; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(2; "Source Subtype"; Integer)
    {
      Caption = 'Source Subtype';
    }
    field(3; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(4; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(5; "Total. Outs. Qty. (Base)"; Decimal)
    {
      Caption = 'Total Oustanding Quantity (Base)';
    }
    field(6; "Total Gross Weight Inbound"; Decimal)
    {
      Caption = 'Total Gross Weight Inbound';
    }
    field(7; "Total Volume Inbound"; Decimal)
    {
      Caption = 'Total Volume Inbound';
    }
    field(8; "Total Gross Weight Outbound"; Decimal)
    {
      Caption = 'Total Gross Weight Outbound';
    }
    field(9; "Total Volume Outbound"; Decimal)
    {
      Caption = 'Total Volume Outbound';
    }
    field(10; "Transport Unit"; Code[10])
    {
      Caption = 'Transport Unit';
    }
    field(11; "Quantity Transport Unit In."; Decimal)
    {
      Caption = 'Quantity Transport Unit Inbound';
    }
    field(12; "Quantity Transport Unit Out."; Decimal)
    {
      Caption = 'Quantity Transport Unit Outbound';
    }
    field(13; "Quantity Pallet In."; Decimal)
    {
      Caption = 'Total Quantity Pallet (In)';
    }
    field(14; "Quantity Pallet Out."; Decimal)
    {
      Caption = 'Total Quantity Pallet (Out)';
    }
  }
  keys
  {
    key(Key1; "Source Type", "Source Subtype", "Source No.", "Line No.")
    {
    }
  }
}