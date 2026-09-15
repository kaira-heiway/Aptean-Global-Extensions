table 71631727 TaxRate102FDW
{
  Caption = 'Tax Rate';

  fields
  {
    field(1; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(2; "Tax Rate Code"; Code[20])
    {
      Caption = 'Tax Rate Code';
    }
    field(3; "Starting Date"; Date)
    {
      Caption = 'Starting Date';
    }
    field(4; "Ending Date"; Date)
    {
      Caption = 'Ending Date';
    }
    field(5; "Rate Value"; Decimal)
    {
      Caption = 'Rate Value';
    }
  }
  keys
  {
    key(PK; "Tax Code", "Tax Rate Code", "Starting Date")
    {
    }
  }
}