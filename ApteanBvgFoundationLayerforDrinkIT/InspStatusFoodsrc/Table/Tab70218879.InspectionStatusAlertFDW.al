table 70218879 InspectionStatusAlertFDW
{
  Caption = 'Inspection Status Alert';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(4; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(5; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(6; "Creation Date"; DateTime)
    {
      Caption = 'Creation Date';
    }
    field(7; "Inspection Status"; Code[10])
    {
      Caption = 'Inspection Status';
    }
    field(8; "New Inspection Status"; Code[10])
    {
      Caption = 'New Inspection Status';
    }
    field(9; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(10; "Send Status"; Enum AlertSendStatus07FDW)
    {
      Caption = 'Send Status';
    }
    field(11; "Item Attribute Value 1"; Text[250])
    {
      Caption = 'Item Attribute Value 1';
    }
    field(12; "Item Attribute Value 2"; Text[250])
    {
      Caption = 'Item Attribute Value 2';
    }
    field(13; Result; Text[250])
    {
      Caption = 'Result';
    }
    field(14; Alert; Enum AlertTriggerType07FDW)
    {
      Caption = 'Alert';
    }
    field(15; "Inspection Tag Status"; Enum InspectionTagStatusFDW)
    {
      Caption = 'Inspection Tag Status';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(SortingOnDate; "Item No.", "Variant Code", "Lot No.", "Creation Date")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Creation Date", "Item No.", "Variant Code", "Lot No.", "Send Status")
    {
    }
    fieldgroup(Brick; "Creation Date", "Item No.", "Variant Code", "Lot No.", "Send Status")
    {
    }
  }
}