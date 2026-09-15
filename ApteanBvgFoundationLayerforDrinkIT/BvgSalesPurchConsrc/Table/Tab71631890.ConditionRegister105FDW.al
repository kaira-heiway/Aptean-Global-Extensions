table 71631890 ConditionRegister105FDW
{
  Caption = 'Condition Register';

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
    field(10; Reversed; Boolean)
    {
      Caption = 'Reversed';
    }
    field(11; "Creation Time"; Time)
    {
      Caption = 'Creation Time';
    }
    field(11300; "Journal Template Name"; Code[10])
    {
      Caption = 'Journal Template Name';
    }
    field(12000; "G/L Register No."; Integer)
    {
      Caption = 'G/L Register No.';
    }
    field(12001; "Item Register No."; Integer)
    {
      Caption = 'Item Register No.';
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
    key(Key4; "G/L Register No.")
    {
    }
    key(Key5; "Item Register No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "No.", "From Entry No.", "To Entry No.", "Creation Date", "Source Code")
    {
    }
  }
  var 
  //GLEntry: Record "G/L Entry";
  // GLRegister: Record "G/L Register";
  // ItemLedgerEntry: Record "Item Ledger Entry";
  // ItemRegister: Record "Item Register";
  SPCConditionLedgerEntry: Record ConditionLedgerEntry105FDW;
 // PageManagement: Codeunit Microsoft.Utilities."Page Management";
}