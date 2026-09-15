enum 70238215 TradePlanRateSetupFDW
{
  Extensible = true;

  value(0; "Per Group")
  {
  Caption = 'Per Group';
  }
  value(1; Specific)
  {
  Caption = 'Specific';
  }
  value(2; PerTradeBusinessGroupwithSpecificItem)
  {
  Caption = 'Per Trade Business Group with Specific Item';
  }
  value(3; PerTradeProductGroupwithSpecificSource)
  {
  Caption = 'Per Trade Product Group with Specific Source';
  }
}