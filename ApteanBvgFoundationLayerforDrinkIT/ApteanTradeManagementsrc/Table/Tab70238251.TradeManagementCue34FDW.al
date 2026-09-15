table 70238251 TradeManagementCue34FDW
{
  Caption = 'Trade Management Cue';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(11; "Trade Statements Count"; Integer)
    {
      Caption = 'Trade Statements';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}