table 71631894 GLAccrualRelation105FDW
{
  Caption = 'G/L - Accrual Condition Relation';

  fields
  {
    field(1; "G/L Entry No."; Integer)
    {
      Caption = 'G/L Entry No.';
    }
    field(2; "Condition Entry No."; Integer)
    {
      Caption = 'Condition Entry No.';
    }
    field(3; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(10; "G/L Register No."; Integer)
    {
      Caption = 'G/L Register No.';
    }
  }
  keys
  {
    key(PK; "G/L Entry No.", "Condition Entry No.")
    {
    }
    key(SK_CondEntry; "Condition Entry No.")
    {
    }
    key(SK_GLReg; "G/L Register No.")
    {
    }
  }
}