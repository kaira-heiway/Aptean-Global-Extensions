table 70238281 DocumentTradeFilterLine34FDW
{
  Caption = 'Document Trade Filter Line';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Filter Name"; Text[50])
    {
      Caption = 'Filter Name';
    }
    field(3; "Filter Value"; Text[250])
    {
      Caption = 'Filter Value';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
  }
}