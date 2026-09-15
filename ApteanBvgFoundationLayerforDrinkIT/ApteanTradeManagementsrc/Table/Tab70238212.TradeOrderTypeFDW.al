table 70238212 "Trade Order Type FDW"
{
  Caption = 'Trade Order Type';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; Code, Description)
    {
    }
  }
  // var TradePlanExclusionUsedByPurchaseErr: Label[100];
  // TradePlanExclusionUsedBySalesErr: Label[100];
}