enum 70238243 TradeCostSource34FDW
{
  Caption = 'Trade Cost Source';
  Extensible = true;

  value(0; " ")
  {
  Caption = ' ';
  }
  value(1; "Purchase Document")
  {
  Caption = 'Purchase Document';
  }
  value(2; "Sales Document")
  {
  Caption = 'Sales Document';
  }
  value(10; "Trade Cost Order")
  {
  Caption = 'Trade Cost Order';
  }
  value(11; Cancellation)
  {
  Caption = 'Cancellation';
  }
  value(12; Reversal)
  {
  Caption = 'Reversal';
  }
  value(13; "Non Reversal")
  {
  Caption = 'Non-Reversible';
  }
}