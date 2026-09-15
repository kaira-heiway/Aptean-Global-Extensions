table 71631735 TaxRegister102FDW
{
  Caption = 'Tax Register';

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
    field(5; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
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
    key(Key3; "Source Code", "Journal Batch Name", "Creation Date")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "No.", "From Entry No.", "To Entry No.", "Creation Date", "Source Code")
    {
    }
  }
}