table 70238240 TradePartnerAllocation34FDW
{
  Caption = 'Trade Partner Allocation';

  fields
  {
    field(1; "Source Type"; Enum "Trade Partner Source Type FDW")
    {
      Caption = 'Source Type';
    }
    field(2; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(3; "Ship-To Code"; Code[10])
    {
      Caption = 'Ship-To Code';
    }
    field(4; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(5; "Allocation Percentage"; Decimal)
    {
      Caption = 'Allocation Percentage';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source No.", "Ship-To Code", "Trade Partner No.")
    {
    }
  }
}