table 71631756 AC4GoodsItemLines102FDW
{
  Caption = 'Calculation Units Lines';

  fields
  {
    field(1; "Header Sequence"; Integer)
    {
      Caption = 'Sequence';
    }
    field(2; calculationCode; Text[250])
    {
      Caption = 'Calculation Code';
    }
    field(3; calculationUnits; Decimal)
    {
      Caption = 'Calculation Units';
    }
    field(8; TaxableBase; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base';
    }
    field(9; ItemLedgerEntryNo; Integer)
    {
      Caption = 'Item Ledger Entry No';
    }
    field(10; RateCode; Code[20])
    {
      Caption = 'Rate Code';
    }
  }
  keys
  {
    key(PK; "Header Sequence", calculationCode)
    {
    }
  }
}