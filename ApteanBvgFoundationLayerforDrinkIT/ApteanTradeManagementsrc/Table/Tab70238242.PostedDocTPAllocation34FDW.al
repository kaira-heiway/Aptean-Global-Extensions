table 70238242 PostedDocTPAllocation34FDW
{
  Caption = 'Posted Document Trade Partner Allocation';

  fields
  {
    field(1; "Document Table ID"; Integer)
    {
      Caption = 'Document Table ID';
    }
    field(2; "Document Type"; Integer)
    {
      Caption = 'Document Type';
    }
    field(3; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(4; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(11; "Allocation Percentage"; Decimal)
    {
      Caption = 'Allocation Percentage';
    }
  }
  keys
  {
    key(Pk; "Document Table ID", "Document Type", "Document No.", "Trade Partner No.")
    {
    }
  }
}