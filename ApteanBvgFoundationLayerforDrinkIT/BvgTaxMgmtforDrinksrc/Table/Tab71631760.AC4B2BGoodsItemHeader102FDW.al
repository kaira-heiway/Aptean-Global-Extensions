table 71631760 AC4B2BGoodsItemHeader102FDW
{
  Caption = 'Goods Item Header';

  fields
  {
    field(1; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(2; nationalAdditionalCommodity1; Code[20])
    {
      Caption = 'National Additional Commodity 1';
    }
    field(3; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(4; netMass; Decimal)
    {
      Caption = 'Net Mass';
    }
    field(5; Description; Text[250])
    {
      Caption = 'Description';
    }
    field(6; packageType; Code[20])
    {
      Caption = 'Package Type';
    }
    field(7; packages; Decimal)
    {
      Caption = 'Packages';
    }
    field(8; TaxableBase; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base';
    }
    field(9; ItemLedgerEntryNo; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(10; nationalAdditionalCommodity2; Text[100])
    {
      Caption = 'National Additional Commodity 2';
    }
    field(11; TotalPackages; Text[100])
    {
      Caption = 'Total Packages';
    }
    field(12; TotalNetmass; Text[100])
    {
      Caption = 'Total Net Mass';
    }
    field(13; ProcedurePart1; Text[100])
    {
      Caption = 'Procedure Part 1';
    }
    field(14; ProcedurePart2; Text[100])
    {
      Caption = 'Procedure Part 2';
    }
    field(15; "AC4 Packaging Code"; Code[20])
    {
      Caption = 'AC4 Packaging Code';
    }
    field(20; PercentageAlcohol; Decimal)
    {
      Caption = 'Percentage Alcohol';
    }
    field(21; Plato; Decimal)
    {
      Caption = 'Plato';
    }
    field(22; ItemNo; Code[20])
    {
      Caption = 'Item No.';
    }
    field(23; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(24; ItemDescription; Text[100])
    {
      Caption = 'Item Description';
    }
    field(25; AnnexID; Text[10])
    {
      Caption = 'Annex ID';
    }
  }
  keys
  {
    key(PK; Sequence)
    {
    }
  }
}