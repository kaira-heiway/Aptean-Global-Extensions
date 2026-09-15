table 71632113 LotNoByExpDate108FDW
{
  Caption = 'Lot No. By Exp. Date';

  fields
  {
    field(1; "Expiration Date"; Date)
    {
      Caption = 'Expiration Date';
    }
    field(2; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(3; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(4; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
  }
  keys
  {
    key(PK; "Item No.", "Variant Code", "Expiration Date", "Lot No.")
    {
    }
  }
}