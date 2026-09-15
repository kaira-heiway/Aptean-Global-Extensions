table 71423171 QCSetup92FDW
{
  Caption = 'Quality Control Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(11; "Quality Check Nos."; Code[20])
    {
      Caption = 'Quality Check Nos.';
    }
    field(12; "Quality Action Nos."; Code[20])
    {
      Caption = 'Quality Action Nos.';
    }
    field(13; "Posted Quality Check Nos."; Code[20])
    {
      Caption = 'Posted Quality Check Nos.';
    }
    field(14; "Posted Quality Action Nos."; Code[20])
    {
      Caption = 'Posted Quality Action Nos.';
    }
    field(15; ReasonCodeChangeInspStatus; Code[10])
    {
      Caption = 'Reason Code Change Inspection Status';
    }
    field(16; "Item Attribute"; Integer)
    {
      Caption = 'Item Attribute';
    }
    field(17; "Customer Attribute"; Integer)
    {
      Caption = 'Customer Attribute';
    }
    field(18; "Vendor Attribute"; Integer)
    {
      Caption = 'Vendor Attribute';
    }
    field(19; "Item Attribute Name"; Text[250])
    {
      Caption = 'Item Attribute Name';
    }
    field(20; "Customer Attribute Name"; Text[250])
    {
      Caption = 'Customer Attribute Name';
    }
    field(21; "Vendor Attribute Name"; Text[250])
    {
      Caption = 'Vendor Attribute Name';
    }
    field(22; "Quality Action Plan Nos."; Code[20])
    {
      Caption = 'Quality Action Plan Nos.';
    }
    field(23; "Quality Plan Nos."; Code[20])
    {
      Caption = 'Quality Plan Nos.';
    }
    field(24; "Quality Option Nos."; Code[20])
    {
      Caption = 'Quality Option Nos.';
    }
    field(25; "Blob Storage Account Name"; Text[250])
    {
      Caption = 'Account Name';
    }
    field(26; "Blob Storage Container Name"; Text[250])
    {
      Caption = 'Container Name';
    }
    field(27; "Use Blob Storage"; Boolean)
    {
      Caption = 'Use Azure Blob Storage';
    }
    field(28; "QC Data Load Period"; DateFormula)
    {
      Caption = 'QC Data Load Period';
    }
    field(29; "Hide Image Preview in QCA"; Boolean)
    {
      Caption = 'Hide image preview in Quality Control App';
    }
    field(30; "Require Accept Default Answers"; Boolean)
    {
      Caption = 'Require acceptance of default answers in Quality Control';
    }
    field(31; "Show QC Completion Message"; Boolean)
    {
      Caption = 'Show Quality Check Completion Message';
    }
    // field(32; "Date Source"; Enum DateSource92FDW)
    // {
    //   Caption = 'Date Source';
    // }
    field(33; "Location Matching Method"; Enum LocationMatchingMethod92FDW)
    {
      Caption = 'Location Matching Method';
    }
    field(34; TransferOrderLocation; Enum TransferOrderLocation92FDW)
    {
      Caption = 'Transfer Order Location Reference';
    }
    field(35; "Formula Rounding Precision"; Decimal)
    {
      Caption = 'Formula Rounding Precision';
    }
    field(36; "Evaluate Non-Routed Output"; Boolean)
    {
      Caption = 'Evaluate QC on Non-Routed Output';
    }
    field(37; "Default QC Team"; Code[10])
    {
      Caption = 'Default QC Team';
    }
  }
  keys
  {
    key(Key1; "Primary Key")
    {
    }
  }
}