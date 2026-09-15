table 71631590 LineNoBuffer101FDW
{
  Caption = 'LineNoBuffer';

  fields
  {
    field(1; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(20; Type; Integer)
    {
      Caption = 'Type';
    }
    // field(21; "Attached Line Type"; Enum Module100FDW)
    // {
    //   Caption = 'Attached Line Type';
    // }
  }
  keys
  {
    key(PK; "Line No.")
    {
    }
  }
}