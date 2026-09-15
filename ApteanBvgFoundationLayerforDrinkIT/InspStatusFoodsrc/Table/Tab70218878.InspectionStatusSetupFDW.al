table 70218878 InspectionStatusSetupFDW
{
  Caption = 'Inspection Status Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Inspec. Status Item Attr. Name"; Text[250])
    {
      Caption = 'Inspection Status Item Attribute';
    }
    field(3; "Inspec. Status Item Attr. ID"; Integer)
    {
      Caption = 'Inspection Status Item Attribute ID';
    }
    field(4; "API Reas.Code Chng.Insp.Status"; Code[10])
    {
      Caption = 'API Reason Code Change Inspection Status';
    }
    field(5; "Enable Alerts"; Boolean)
    {
      Caption = 'Enable Alerts';
    }
    field(6; "Azure Service Bus URL"; Text[250])
    {
      Caption = 'Azure Service Bus URL';
    }
    field(7; "Inspec.Status Item Attr.Name 1"; Text[250])
    {
      Caption = 'Inspection Status Item Attribute 1';
    }
    field(8; "Inspec.Status Item Attr.Name 2"; Text[250])
    {
      Caption = 'Inspection Status Item Attribute 2';
    }
    field(9; "Inspec. Status Item Attr. 1 ID"; Integer)
    {
      Caption = 'Inspection Status Item Attribute ID';
    }
    field(10; "Inspec. Status Item Attr. 2 ID"; Integer)
    {
      Caption = 'Inspection Status Item Attribute ID';
    }
    field(11; "Inspection Status Cue 1"; Code[10])
    {
      Caption = 'Inspection Status Cue Activity 1';
    }
    field(12; "Inspection Status Cue 2"; Code[10])
    {
      Caption = 'Inspection Status Cue Activity 2';
    }
    field(13; "Number of Retries"; Integer)
    {
      Caption = 'Number of Retries';
    }
    field(14; Topic; Text[50])
    {
      Caption = 'Topic';
    }
    field(15; "Time to Live"; Integer)
    {
      Caption = 'Time to Live';
    }
    field(16; ExpiredReasCodeChngInspStatus; Code[10])
    {
      Caption = 'Reason Code when Changing Status of Expired Lots';
    }
    field(17; ExceptBlockedStatCustAttrName; Text[250])
    {
      Caption = 'Exceptions Blocked status Customer Attribute';
    }
    field(18; ExceptBlockedStatCustAttrID; Integer)
    {
      Caption = 'Exceptions Blocked status Customer Attribute';
    }
    field(19; ReasonCodeFollowUpStatusChange; Code[10])
    {
      Caption = 'Reason Code Follow-up Status Change';
    }
    field(20; InspectionStatusReferenceNos; Code[20])
    {
      Caption = 'Inspection Status Reference Nos.';
    }
    field(21; ReasonCodeQCKCheckStatusChange; Code[10])
    {
      Caption = 'Reason Code Quality Check Status Change';
    }
    field(22; NotificationService; Enum NotificationService07FDW)
    {
      Caption = 'Notification Service';
    }
    field(23; EndpointAlerts; Text[2048])
    {
      Caption = 'Endpoint Alerts';
    }
    field(24; AuthenticationType; Enum AuthenticationType07FDW)
    {
      Caption = 'Authentication Type';
    }
    field(25; Username; Text[50])
    {
      Caption = 'Username';
    }
    field(26; "Password Security Key"; Guid)
    {
      Caption = 'Password Security Key';
    }
    field(27; "Inspection Tag No. Series"; Code[20])
    {
      Caption = 'Inspection Tag Nos.';
    }
    field(28; ReasonCodeQCStatusChange; Code[10])
    {
      Caption = 'Reason Code Quality Control Status Change';
    }
    field(29; "Inspec. Status Lot Attr. Name"; Text[250])
    {
      Caption = 'Inspection Status Lot Attribute';
    }
    field(30; "Inspec. Status Lot Attr. ID"; Integer)
    {
      Caption = 'Inspection Status Lot Attribute ID';
    }
    field(31; ExclInspBlockedPickCreation; Boolean)
    {
      Caption = 'Exclude Inspection-Blocked Lots from Pick Creation';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
//   var AttributeBlockedErr: Label[100];
//   AttributeDoesntExistErr: Label[100];
//   ConfirmDeleteCustomerAttributeQst: Label[170];
//   ConfirmModifyCustomerAttributeQst: Label[170];
//   DefaultInspectionStatusErr: Label[100];
//   DeleteExceptionBlockedCustomerAttributeErr: Label[100];
}