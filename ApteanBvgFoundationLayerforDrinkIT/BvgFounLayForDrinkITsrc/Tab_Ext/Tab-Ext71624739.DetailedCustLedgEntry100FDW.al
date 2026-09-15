tableextension 71624739 DetailedCustLedgEntry100FDW extends "Detailed Cust. Ledg. Entry"
{
  fields
  {
    field(71624730; "Loan No. 114FDW"; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(71624731; "Loan Entry Type 114FDW"; Enum IntlLoanEntryType100FDW)
    {
      Caption = 'Loan Entry Type';
    }
    field(71624732; "Rental Agrmnt No. 114FDW"; Code[20])
    {
      Caption = 'Rental Agreement No.';
    }
    field(71624733; "Customer Posting Group 101FDW"; Code[20])
    {
      Caption = 'Customer Posting Group';
    }
    field(71624734; "Payment-from Cust. No. 106FDW"; Code[20])
    {
      Caption = 'Payment-from Customer No.';
    }
  }
}