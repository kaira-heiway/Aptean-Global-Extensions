table 71631588 TotalBufferCurPostGrp101FDW
{
  Caption = 'Currency Total Buffer Per Posting Group';

  fields
  {
    field(1; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(2; "Posting Group"; Code[20])
    {
      Caption = 'Posting Group';
    }
    field(3; "Total Amount"; Decimal)
    {
      Caption = 'Total Amount';
    }
    field(4; "Total Amount (LCY)"; Decimal)
    {
      Caption = 'Total Amount (LCY)';
    }
    field(5; Counter; Integer)
    {
      Caption = 'Counter';
    }
  }
  keys
  {
    key(Key1; "Currency Code", "Posting Group")
    {
    }
  }
}