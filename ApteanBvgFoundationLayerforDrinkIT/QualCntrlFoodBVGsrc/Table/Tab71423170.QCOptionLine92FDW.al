table 71423170 QCOptionLine92FDW
{
  Caption = 'Quality Control Option Line';

  fields
  {
    field(1; "QC Option Header Code"; Code[20])
    {
      Caption = 'Quality Control Option Code';
    }
    field(12; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(13; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(14; "Requires Comment"; Boolean)
    {
      Caption = 'Requires Comment';
    }
  }
  keys
  {
    key(Key1; "QC Option Header Code", Sequence)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; Sequence, Description)
    {
    }
    fieldgroup(DropDown; Sequence, Description)
    {
    }
  }
}