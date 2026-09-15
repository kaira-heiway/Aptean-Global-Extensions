table 71631580 PriceInfoDetail101FDW
{
  Caption = 'Price Info Detail';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    // field(2; Module; Enum Module100FDW)
    // {
    //   Caption = 'Module';
    // }
    field(10; "Unit Price Excl. VAT"; Decimal)
    {
      Caption = 'Unit Price Excl. VAT';
    }
    field(11; "Unit Price Incl. VAT"; Decimal)
    {
      Caption = 'Unit Price Incl. VAT';
    }
  }
  keys
  {
    // key(PK; "Entry No.", Module)
    // {
    // }
  }
}