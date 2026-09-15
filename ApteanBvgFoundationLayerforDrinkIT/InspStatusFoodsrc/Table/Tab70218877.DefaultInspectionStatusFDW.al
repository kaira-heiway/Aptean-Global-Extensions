table 70218877 DefaultInspectionStatusFDW
{
    Caption = 'Default Inspection Status';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        // field(2; "Document Type"; Enum InspectionStatusDocTypeFDW)
        // {
        //     Caption = 'Trigger Type';
        //     ObsoleteReason = 'Replaced by Field "Trigger Type"';
        //     ObsoleteState = Pending;
        //     ObsoleteTag = '1.5';
        // }
        field(3; "Item Type"; Enum ItemType07FDW)
        {
            Caption = 'Item Type';
        }
        field(4; "Item Attribute Name"; Text[250])
        {
            Caption = 'Attribute';
        }
        field(5; "Item Attribute Value"; Text[250])
        {
            Caption = 'Attribute Value';
        }
        field(6; "Item Attribute ID"; Integer)
        {
            Caption = 'Attribute ID';
        }
        field(7; "Item Attribute Type"; Enum ItemAttributeType07FDW)
        {
            Caption = 'Attribute Type';
        }
        field(8; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(9; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
        }
        field(10; "Default Inspection Status"; Code[10])
        {
            Caption = 'Default Inspection Status';
        }
        field(11; "Follow-up Period"; DateFormula)
        {
            Caption = 'Follow-up Period';
        }
        field(12; "Trigger Type"; Enum InspectionStatusTriggerTypeFDW)
        {
            Caption = 'Trigger Type';
        }
        field(13; "Follow-up Schedule"; Code[20])
        {
            Caption = 'Follow-up Schedule';
        }
    }
    keys
    {
        key(PK; "Line No.")
        {
        }
        key(DoubleCheck; "Trigger Type", "Item Type", "Item Attribute Name", "Item Attribute Value", "Item No.", "Vendor No.")
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Trigger Type", "Item Type", "Item Attribute Name", "Item Attribute Value", "Item No.", "Vendor No.")
        {
        }
        fieldgroup(Brick; "Trigger Type", "Item Type", "Item Attribute Value", "Item No.", "Default Inspection Status")
        {
        }
    }
    var
//         AttributeBlockedErr: Label[100];
//   AttributeDoesntExistErr: Label[100];
//   AttributeValueBlockedErr: Label[100];
//   AttributeValueDoesntExistErr: Label[100];
//   AttributeValueTypeMismatchErr: Label[100];
//   DefaultInspectionStatusAlreadyPresentErr: Label[250];
//   EXMNotInstalledErr: Label[150];
//   FollowUpPeriodErr: Label[100];
//   QCANotInstalledErr: Label[150];
//   QCKNotInstalledErr: Label[150];
//   RenamePKErr: Label[100];
//   TriggerNotAllowedErr: Label;
}