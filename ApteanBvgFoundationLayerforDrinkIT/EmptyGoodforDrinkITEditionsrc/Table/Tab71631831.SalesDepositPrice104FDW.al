table 71631831 SalesDepositPrice104FDW
{
  Caption = 'Sales Deposit Price';

  fields
  {
    field(1; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(2; "Sales Type"; Enum IntlSalesType104FDW)
    {
      Caption = 'Sales Type';
    }
    field(3; "Sales Code"; Code[20])
    {
      Caption = 'Sales Code';
    }
    field(4; "Starting Date"; Date)
    {
      Caption = 'Starting Date';
    }
    field(5; "Ending Date"; Date)
    {
      Caption = 'Ending Date';
    }
    field(6; "Unit Deposit Price"; Decimal)
    {
      Caption = 'Unit Deposit Price';
    }
    field(7; "Allow Calc. Line Discounts"; Boolean)
    {
      Caption = 'Allow Calculate Line Discounts';
    }
    field(8; "Allow Calc. Invoice Discounts"; Boolean)
    {
      Caption = 'Allow Calculate Invoice Discounts';
    }
    field(9; "Price Includes VAT"; Boolean)
    {
      Caption = 'Price Includes VAT';
    }
  }
  keys
  {
    key(PK; "Item No.", "Sales Type", "Sales Code", "Starting Date")
    {
    }
  }
}