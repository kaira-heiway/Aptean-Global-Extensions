table 70238258 VendorExclusions34FDW
{
  Caption = 'Vendor Exclusion';

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
    field(3; "Vendor No."; Code[20])
    {
      Caption = 'Vendor No.';
    }
    field(11; "Vendor Description"; Text[100])
    {
      Caption = 'Vendor Description';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Trade Plan Line No.", "Vendor No.")
    {
    }
  }
}