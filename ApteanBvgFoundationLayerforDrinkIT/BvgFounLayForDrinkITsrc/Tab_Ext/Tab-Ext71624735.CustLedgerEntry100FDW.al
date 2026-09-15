tableextension 71624735 CustLedgerEntry100FDW extends "Cust. Ledger Entry"
{
  fields
  {
    field(71624729; "Loan No. 114FDW"; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(71624730; "Loan Entry Type 114FDW"; Enum IntlLoanEntryType100FDW)
    {
      Caption = 'Loan Entry Type';
    }
    field(71624731; "Cust. Posting Group 114FDW"; Code[20])
    {
      Caption = 'Customer Posting Group Code';
    }
    field(71624732; "Rental Agrmnt. No. 114FDW"; Code[20])
    {
      Caption = 'Rental Agreement No.';
    }
    field(71624733; "Customer No. 105FDW"; Code[20])
    {
      Caption = 'Condition Customer No.';
    }
    field(71624734; "Payment-from Cust. No. 106FDW"; Code[20])
    {
      Caption = 'Payment-from Customer No.';
    }
    field(71624735; "Payment Specf. Doc. No. 106FDW"; Code[20])
    {
      Caption = 'Payment Specification Doc. No.';
    }
    field(71624736; "Deposit Amount 104FDW"; Decimal)
    {
      Caption = 'Deposit Amount';
    }
    field(71624737; "Deposit Amount (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Amount (LCY)';
    }
    field(71624738; "Tax Amount 102FDW"; Decimal)
    {
      Caption = 'Tax Amount';
    }
    field(71624739; "Tax Amount (LCY) 102FDW"; Decimal)
    {
      Caption = 'Tax Amount (LCY)';
    }
  }
  keys
  {
    key(CMGKey2034841114FDW; "Cust. Posting Group 114FDW", "Loan Entry Type 114FDW", "Loan No. 114FDW")
    {
    }
    key(CMGKey2034842114FDW; "Cust. Posting Group 114FDW", "Loan Entry Type 114FDW", "Loan No. 114FDW", "Rental Agrmnt. No. 114FDW")
    {
    }
    key(CMGKey20348423114FDW; "Cust. Posting Group 114FDW", "Rental Agrmnt. No. 114FDW")
    {
    }
  }
}