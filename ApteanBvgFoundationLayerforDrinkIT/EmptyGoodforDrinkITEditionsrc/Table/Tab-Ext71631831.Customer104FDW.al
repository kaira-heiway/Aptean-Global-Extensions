tableextension 71631831 Customer104FDW extends Customer
{
  fields
  {
    field(71631830; "Is Split EGM Cust. 104FDW"; Boolean)
    {
      Caption = 'Is Split Empty Goods Customer';
    }
    field(71631831; "Outst. Ord. (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Outstanding Orders (LCY)';
    }
    field(71631832; "Outst. Inv. (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Outstanding Invoices (LCY)';
    }
    field(71631833; "ShippedNotInv (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Shipped Not Invoiced (LCY)';
    }
  }
}