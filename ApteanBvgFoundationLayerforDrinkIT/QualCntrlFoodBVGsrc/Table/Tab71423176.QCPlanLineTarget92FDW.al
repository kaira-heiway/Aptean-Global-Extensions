table 71423176 QCPlanLineTarget92FDW
{
  Caption = 'Quality Control Plan Line Target';

  fields
  {
    field(1; "Plan Code"; Code[20])
    {
      Caption = 'Quality Control Plan';
    }
    field(2; "Plan Line Sequence"; Integer)
    {
      Caption = 'Plan Line Sequence';
    }
    field(11; "Target Lower Limit Option"; Integer)
    {
      Caption = 'Target Lower Limit Option';
    }
    field(12; "Target Lower Warning Option"; Integer)
    {
      Caption = 'Target Lower Warning Option';
    }
    field(13; "Target Option"; Integer)
    {
      Caption = 'Target Option';
    }
    field(14; "Target Upper Warning Option"; Integer)
    {
      Caption = 'Target Upper Warning Option';
    }
    field(15; "Target Upper Limit Option"; Integer)
    {
      Caption = 'Target Upper Limit Option';
    }
    field(16; "Target Lower Limit Value"; Decimal)
    {
      Caption = 'Target Lower Limit Value';
    }
    field(17; "Target Lower Warning Value"; Decimal)
    {
      Caption = 'Target Lower Warning Value';
    }
    field(18; "Target Value"; Decimal)
    {
      Caption = 'Target Value';
    }
    field(19; "Target Upper Warning Value"; Decimal)
    {
      Caption = 'Target Upper Warning Value';
    }
    field(20; "Target Upper Limit Value"; Decimal)
    {
      Caption = 'Target Upper Limit Value';
    }
    field(21; "QC Option Header Code Filter"; Code[20])
    {
      Caption = 'Quality Control Header Code Filter';
    }
    field(22; Target; Text[100])
    {
      Caption = 'Target';
    }
    field(23; "Target Lower Warning"; Text[100])
    {
      Caption = 'Lower Warning';
    }
    field(24; "Target Upper Warning"; Text[100])
    {
      Caption = 'Upper Warning';
    }
    field(25; "Target Lower Limit"; Text[100])
    {
      Caption = 'Lower Limit';
    }
    field(26; "Target Upper Limit"; Text[100])
    {
      Caption = 'Upper Limit';
    }
  }
  keys
  {
    key(Key1; "Plan Code", "Plan Line Sequence")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; "Plan Code", "Plan Line Sequence")
    {
    }
    fieldgroup(DropDown; "Plan Code", "Plan Line Sequence")
    {
    }
  }
  var QCPlanLine92FDW: Record QCPlanLine92FDW;
  QCQuestion92FDW: Record QCQuestion92FDW;
  QCPlanLineTarget92FDWRecordRef: RecordRef;
  PlanCodeFieldRef: FieldRef;
  PlanLineSequenceFieldRef: FieldRef;
  TargetFieldRef: FieldRef;
  TargetFieldRef2: FieldRef;
 // OptionDescriptionErr: Label;
}