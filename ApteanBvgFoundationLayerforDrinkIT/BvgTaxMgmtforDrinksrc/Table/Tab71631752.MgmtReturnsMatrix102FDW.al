table 71631752 MgmtReturnsMatrix102FDW
{
  Caption = 'Management Returns Matrix';

  fields
  {
    field(1; "Gen. Customer Tax Class."; Code[20])
    {
      Caption = 'Gen. Customer Tax Class.';
    }
    field(2; "Gen. Item Tax Class."; Code[20])
    {
      Caption = 'Gen. Item Tax Class.';
    }
    field(3; "Gen. Location Tax Class."; Code[20])
    {
      Caption = 'Gen. Location Tax Class.';
    }
    field(4; "Return Location"; Code[10])
    {
      Caption = 'Return Location';
    }
  }
  keys
  {
    key(Pk; "Gen. Customer Tax Class.", "Gen. Item Tax Class.", "Gen. Location Tax Class.")
    {
    }
  }
}