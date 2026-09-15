table 70218881 BlockedStatusExceptionFDW
{
  Caption = 'Blocked Status Exception';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Inspection Status Code"; Code[10])
    {
      Caption = 'Code';
    }
    field(3; "Exception Type"; Enum ExceptionTypeFDW)
    {
      Caption = 'Type';
    }
    field(4; "Source Type"; Enum ExceptionSourceTypeFDW)
    {
      Caption = 'Source Type';
    }
    field(5; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(6; "Customer Attribute"; Text[250])
    {
      Caption = 'Customer Attribute Name';
    }
    field(7; "Customer Attribute ID"; Integer)
    {
      Caption = 'Customer Attribute ID';
    }
    field(8; "Customer Attribute Value"; Text[250])
    {
      Caption = 'Customer Attribute Value Name';
    }
    field(9; "Customer Attribute Value ID"; Integer)
    {
      Caption = 'Customer Attribute ID';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Secundary; "Inspection Status Code", "Exception Type", "Source Type", "Source No.", "Customer Attribute Value")
    {
    }
  }
//   var ConfirmDeleteCustomerAttributeValueQst: Label[170];
//   ConfirmModifyCustomerAttributeValueQst: Label[170];
//   SourceTypeAATNotInstalledErr: Label[150];
}