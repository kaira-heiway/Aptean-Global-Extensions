table 70238257 CustomerExclusions34FDW
{
  Caption = 'Customer Exclusions';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Trade Plan Line No."; Integer)
    {
      Caption = 'Trade Plan Line No.';
    }
    field(3; "Customer No."; Code[20])
    {
      Caption = 'Customer No.';
    }
    field(11; "Customer Description"; Text[100])
    {
      Caption = 'Customer Description';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Trade Plan Line No.", "Customer No.")
    {
    }
  }
}