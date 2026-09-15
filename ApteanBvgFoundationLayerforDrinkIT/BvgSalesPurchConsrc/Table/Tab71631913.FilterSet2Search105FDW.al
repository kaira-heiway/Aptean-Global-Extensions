table 71631913 FilterSet2Search105FDW
{
  Caption = 'FilterSet2Search';

  fields
  {
    field(1; "Field No."; Integer)
    {
      Caption = 'Field No.';
    }
    field(2; "Field Value"; Text[100])
    {
      Caption = 'Field Value';
    }
    field(3; "Field No. 2"; Integer)
    {
      Caption = 'Field No. 2';
    }
    field(4; "Field Value 2"; Text[100])
    {
      Caption = 'Field Value 2';
    }
  }
  keys
  {
    key(PK; "Field No.", "Field Value", "Field No. 2", "Field Value 2")
    {
    }
  }
}