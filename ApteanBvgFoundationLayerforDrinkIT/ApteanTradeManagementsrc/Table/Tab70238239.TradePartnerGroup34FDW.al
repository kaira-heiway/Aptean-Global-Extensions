table 70238239 "Trade Partner Group 34 FDW"
{
  Caption = 'Trade Partner Group';

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
    key(Pk; Code)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Code, Description)
    {
    }
  }
 // var TradePartnerGroupCodeErr: Label[150];
}