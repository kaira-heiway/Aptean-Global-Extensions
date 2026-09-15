table 70238254 ItemExclusions34FDW
{
  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Trade Plan Line No."; Integer)
    {
      Caption = 'Trade Plan Line No.';
    }
    field(10; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(11; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
  }
  keys
  {
    key(Pk; "Trade Plan No.", "Trade Plan Line No.", "Item No.")
    {
    }
  }
}