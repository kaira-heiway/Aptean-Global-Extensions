table 70238256 LocationExclusions34FDW
{
  Caption = 'Location Exclusions';

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
    field(3; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(11; "Location Name"; Code[100])
    {
      Caption = 'Location Name';
    }
  }
  keys
  {
    key(Key1; "Trade Plan No.", "Trade Plan Line No.", "Location Code")
    {
    }
  }
}