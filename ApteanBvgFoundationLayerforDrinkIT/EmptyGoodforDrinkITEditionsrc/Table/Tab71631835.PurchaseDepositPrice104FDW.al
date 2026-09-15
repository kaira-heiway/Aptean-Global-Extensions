table 71631835 PurchaseDepositPrice104FDW
{
  Caption = 'Purchase Deposit Price';

  fields
  {
    field(1; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(2; "Purchase Type"; Enum IntlPurchaseType104FDW)
    {
      Caption = 'Purchase Type';
    }
    field(3; "Purchase Code"; Code[20])
    {
      Caption = 'Purchase Code';
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
    key(PK; "Item No.", "Purchase Type", "Purchase Code", "Starting Date")
    {
    }
  }
}