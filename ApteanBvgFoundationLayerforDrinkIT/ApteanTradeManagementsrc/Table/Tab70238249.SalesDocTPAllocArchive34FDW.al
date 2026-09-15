table 70238249 SalesDocTPAllocArchive34FDW
{
  Caption = 'Sales Document Trade Partner Allocation Archive';

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
    field(5; "Doc. No. Occurrence"; Integer)
    {
      Caption = 'Doc. No. Occurrence';
    }
    field(6; "Version No."; Integer)
    {
      Caption = 'Version No.';
    }
    field(11; "Allocation Percentage"; Decimal)
    {
      Caption = 'Allocation Percentage';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Trade Partner No.")
    {
    }
  }
}