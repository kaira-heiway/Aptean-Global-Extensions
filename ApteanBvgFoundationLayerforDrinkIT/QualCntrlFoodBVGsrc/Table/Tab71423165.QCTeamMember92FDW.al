table 71423165 QCTeamMember92FDW
{
  Caption = 'Quality Control Team Member';

  fields
  {
    field(1; "User ID"; Code[50])
    {
      Caption = 'User ID';
    }
    field(2; "Team Code"; Code[10])
    {
      Caption = 'Team Code';
    }
    field(11; Pick; Boolean)
    {
      Caption = 'Pick';
    }
  }
  keys
  {
    key(Key1; "User ID", "Team Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "User ID")
    {
    }
    fieldgroup(Brick; "User ID")
    {
    }
  }
  var QCUserSetup92FDW: Record QCUserSetup92FDW;
}