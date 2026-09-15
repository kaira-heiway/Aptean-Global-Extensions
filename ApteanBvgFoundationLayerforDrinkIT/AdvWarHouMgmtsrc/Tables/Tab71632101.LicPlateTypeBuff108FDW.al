table 71632101 LicPlateTypeBuff108FDW
{
  Caption = 'License Plate Type Buffer';

  fields
  {
    field(1; "Dest. No."; Code[20])
    {
      Caption = 'Dest. No.';
    }
    field(2; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(3; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(4; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
  }
  keys
  {
    key(PK; "Dest. No.", "Document No.", "Item No.")
    {
    }
  }
}