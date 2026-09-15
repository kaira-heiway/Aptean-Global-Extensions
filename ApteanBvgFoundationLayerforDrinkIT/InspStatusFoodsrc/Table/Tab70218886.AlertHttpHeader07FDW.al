table 70218886 AlertHttpHeader07FDW
{
  Caption = 'Alert Http Header';

  fields
  {
    field(1; "Header Name"; Text[50])
    {
      Caption = 'Header Name';
    }
    field(12; "Header Value"; Text[50])
    {
      Caption = 'Header Value';
    }
  }
  keys
  {
    key(PK; "Header Name")
    {
    }
  }
}