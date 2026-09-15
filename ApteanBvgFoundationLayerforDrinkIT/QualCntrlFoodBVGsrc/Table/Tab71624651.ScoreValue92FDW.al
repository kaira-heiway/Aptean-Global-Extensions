table 71624651 ScoreValue92FDW
{
  Caption = 'Score Value';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(11; Value; Decimal)
    {
      Caption = 'Value';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key1; Value)
    {
    }
  }
}