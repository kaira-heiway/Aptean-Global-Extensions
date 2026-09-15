table 71631893 PostAccrualEntryGL105FDW
{
  Caption = 'Post Accrual to G/L';

  fields
  {
    field(1; "Condition Entry No."; Integer)
    {
      Caption = 'Condition Entry No.';
    }
    field(2; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(3; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
  }
  keys
  {
    key(PK; "Condition Entry No.")
    {
    }
    key(SK_RuleDate; "Rule No.", "Posting Date")
    {
    }
    key(SK_Rule; "Rule No.")
    {
    }
  }
}