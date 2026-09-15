table 71632115 TransValBuff108FDW
{
  Caption = 'Transport Validation Buffer';

  fields
  {
    field(1; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(2; "Record-ID"; RecordId)
    {
      Caption = 'Record-ID';
    }
    field(3; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(4; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(5; "Validation Code"; Code[10])
    {
      Caption = 'Validation Code';
    }
  }
  keys
  {
    key(Key1; "Line No.")
    {
    }
  }
}