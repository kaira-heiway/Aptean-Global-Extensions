table 71631895 AccrualPostBuffer105FDW
{
  Caption = 'Accrual Posting Buffer';

  fields
  {
    field(1; "Account Type"; Enum IntlAccrualBufAccType105FDW)
    {
      Caption = 'Account Type';
    }
    field(2; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(3; "Posting Group"; Code[20])
    {
      Caption = 'Posting Group';
    }
    field(4; "Dimension Entry No."; Integer)
    {
      Caption = 'Dimension Entry No.';
    }
    field(5; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(6; "Amount (ACY)"; Decimal)
    {
      Caption = 'Amount (ACY)';
    }
    field(7; "Interim Account"; Boolean)
    {
      Caption = 'Interim Account';
    }
    field(8; "Account No."; Code[20])
    {
      Caption = 'Account No.';
    }
    field(9; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(10; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(11; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(12; Negative; Boolean)
    {
      Caption = 'Negative';
    }
    field(13; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(14; "Bal. Account Type"; Enum IntlAccrualBufAccType105FDW)
    {
      Caption = 'Bal. Account Type';
    }
    field(15; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(480; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
  }
  keys
  {
    key(PK; "Posting Date", "Account Type", "Rule No.", "Location Code", "Posting Group", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "Dimension Set ID", Negative, "Bal. Account Type")
    {
    }
  }
}