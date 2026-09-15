table 71423163 QCUserSetup92FDW
{
  Caption = 'Quality Control User Setup';

  fields
  {
    field(1; "User ID"; Code[50])
    {
      Caption = 'User ID';
    }
    field(11; Description; Text[80])
    {
      Caption = 'Description';
    }
    field(12; "QC Manager"; Boolean)
    {
      Caption = 'Quality Control Manager';
    }
  }
  keys
  {
    key(Key1; "User ID")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "User ID", Description)
    {
    }
    fieldgroup(Brick; "User ID", Description)
    {
    }
  }
}