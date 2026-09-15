table 70238217 "Trade Plan Volume Rate FDW"
{
  Caption = 'Trade Plan Volume Rate';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Trade Plan Line No."; Integer)
    {
      Caption = 'Trade Line No.';
    }
    field(3; "Minimum Value"; Decimal)
    {
      Caption = 'Minimum Value';
    }
    field(4; Rate; Decimal)
    {
      Caption = 'Rate';
    }
    field(5; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Trade Plan Line No.", "Minimum Value")
    {
    }
  }
  var TradePlan: Record "Trade Plan FDW";
}