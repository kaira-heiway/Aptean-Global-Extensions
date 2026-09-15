table 71423162 QCPlanHeader92FDW
{
  Caption = 'Quality Control Plan Header';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Name';
    }
    field(12; Version; Text[100])
    {
      Caption = 'Version';
    }
    field(13; "Effective Date"; Date)
    {
      Caption = 'Effective Date';
    }
    field(15; Status; Enum PlanStatusType92FDW)
    {
      Caption = 'Status';
    }
    field(16; "Required Samples"; Integer)
    {
      Caption = 'Required Samples';
    }
    field(17; "Inspection Status on Create"; Code[10])
    {
      Caption = 'Inspection Status on Create';
    }
    field(18; "Inspection Status on Pass"; Code[10])
    {
      Caption = 'Inspection Status on Pass';
    }
    field(19; "Inspection Status on Fail"; Code[10])
    {
      Caption = 'Inspection Status on Fail';
    }
    field(21; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(51; "Failure QC Plan"; Code[20])
    {
      Caption = 'Failure QC Plan';
    }
    field(52; "Failure QC Team"; Code[10])
    {
      Caption = 'Failure QC Team';
    }
    field(53; "Quality Checks"; Integer)
    {
      Caption = 'Quality Checks';
    }
    field(54; "Posted Quality Checks"; Integer)
    {
      Caption = 'Posted Quality Checks Count';
    }
    field(60; "Linked Plan Lines"; Boolean)
    {
      Caption = 'Linked Plan Lines';
    }
  }
  keys
  {
    key(Key1; Code)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Code, Description)
    {
    }
    fieldgroup(Brick; Code, Description)
    {
    }
  }
  var QCPlanLine92FDW: Record QCPlanLine92FDW;
  QCSetup: Record QCSetup92FDW;
  QCTrigger92FDW: Record QCTrigger92FDW;
  //NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  // CalculationMethodLotAttributeErr: Label;
  // CertifiedExistInHeaderErr: Label;
  // FrequencyTypeLotAttributeErr: Label;
  // MultipleReadingLotAttributeErr: Label;
  // RenameLineExistErr: Label;
}