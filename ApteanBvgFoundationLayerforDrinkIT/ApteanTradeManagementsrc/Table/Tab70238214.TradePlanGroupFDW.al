table 70238214 "Trade Plan Group FDW"
{
  Caption = 'Trade Plan Group';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Trade Business Group"; Code[20])
    {
      Caption = 'Trade Business Group';
    }
    field(3; "Trade Product Group"; Code[20])
    {
      Caption = 'Trade Product Group';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Trade Business Group", "Trade Product Group")
    {
    }
  }
}