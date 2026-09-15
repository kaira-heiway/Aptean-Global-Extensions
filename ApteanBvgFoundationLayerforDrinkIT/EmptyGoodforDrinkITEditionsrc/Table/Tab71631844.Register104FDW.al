table 71631844 Register104FDW
{
  Caption = 'Empty Goods Register';

  fields
  {
    field(1; "No."; Integer)
    {
      Caption = 'No.';
    }
    field(2; "From Entry No."; Integer)
    {
      Caption = 'From Entry No.';
    }
    field(3; "To Entry No."; Integer)
    {
      Caption = 'To Entry No.';
    }
    field(4; "Creation Date"; Date)
    {
      Caption = 'Creation Date';
    }
    field(6; "User ID"; Code[50])
    {
      Caption = 'User ID';
    }
    field(7; "Journal Batch Name"; Code[10])
    {
      Caption = 'Journal Batch Name';
    }
    field(9; "Creation Time"; Time)
    {
      Caption = 'Creation Time';
    }
  }
  keys
  {
    key(Key1; "No.")
    {
    }
    key(Key2; "Creation Date")
    {
    }
    key(Key3; "Journal Batch Name", "Creation Date")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "No.", "From Entry No.", "To Entry No.", "Creation Date")
    {
    }
  }
}