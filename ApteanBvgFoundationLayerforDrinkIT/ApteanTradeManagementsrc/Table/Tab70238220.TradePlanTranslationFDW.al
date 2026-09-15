table 70238220 "Trade Plan Translation FDW"
{
  Caption = 'Trade Plan Translation';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Language Code"; Code[10])
    {
      Caption = 'Language Code';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Language Code")
    {
    }
  }
}