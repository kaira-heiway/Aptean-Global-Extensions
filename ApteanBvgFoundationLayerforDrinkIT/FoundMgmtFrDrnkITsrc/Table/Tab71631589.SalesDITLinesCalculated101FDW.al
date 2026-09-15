table 71631589 SalesDITLinesCalculated101FDW
{
  Caption = 'Sales Document Calculation';

  fields
  {
    // field(1; "Document Type"; Enum Microsoft.Sales.Document."Sales Document Type")
    // {
    //   Caption = 'Document Type';
    // }
    field(2; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(10; "DIT Lines Calculated"; Boolean)
    {
      Caption = 'DIT Lines Calculated';
    }
  }
  keys
  {
    // key(PK; "Document Type", "Document No.")
    // {
    // }
     key(PK; "Document No.")
    {
    }
  }
}