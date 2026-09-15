table 70218887 DispositionFDW
{
  Caption = 'Dispositions';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(10; Description; Text[250])
    {
      Caption = 'Description';
    }
    field(11; "Comment Required"; Boolean)
    {
      Caption = 'Comment Required';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}