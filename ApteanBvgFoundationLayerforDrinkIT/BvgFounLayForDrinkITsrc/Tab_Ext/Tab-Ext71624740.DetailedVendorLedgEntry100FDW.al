tableextension 71624740 DetailedVendorLedgEntry100FDW extends "Detailed Vendor Ledg. Entry"
{
  fields
  {
    field(71624729; "Vendor Posting Group 101FDW"; Code[20])
    {
      Caption = 'Vendor Posting Group';
    }
    field(71624730; "Loan No. 114FDW"; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(71624731; "Loan Entry Type 114FDW"; Enum IntlLoanEntryType100FDW)
    {
      Caption = 'Loan Entry Type';
    }
    field(71624733; "Rental Agrmnt No. 114FDW"; Code[20])
    {
      Caption = 'Rental Agreement No.';
    }
  }
}