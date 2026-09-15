table 71423166 QCPlanLine92FDW
{
  Caption = 'Quality Control Plan Line';

  fields
  {
    field(1; "Plan Code"; Code[20])
    {
      Caption = 'Plan Code';
    }
    field(2; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(11; "Question Code"; Code[20])
    {
      Caption = 'Question Code';
    }
    field(12; "Frequency Type"; Enum FrequencyType92FDW)
    {
      Caption = 'Frequency Type';
    }
    field(13; Readings; Integer)
    {
      Caption = 'Readings';
    }
    field(14; "Unit of Measure"; Code[10])
    {
      Caption = 'Unit of Measure';
    }
    field(15; Mandatory; Boolean)
    {
      Caption = 'Mandatory';
    }
    field(17; "Failure Action Plan"; Code[20])
    {
      Caption = 'Failure Action Plan';
    }
    field(18; Comment; Text[100])
    {
      Caption = 'Comment';
    }
    field(19; "Target Blind"; Boolean)
    {
      Caption = 'Target Blind';
    }
    field(20; "Default Answer Value"; Decimal)
    {
      Caption = 'Default Answer Value';
    }
    field(21; "Default Answer Option"; Text[100])
    {
      Caption = 'Default Answer Option';
    }
    field(22; "Default Answer Option Sequence"; Integer)
    {
      Caption = 'Default Answer Option Sequence';
    }
    field(23; "Default Answer Text"; Text[100])
    {
      Caption = 'Default Answer Text';
    }
    field(24; "Default Answer"; Text[100])
    {
      Caption = 'Default Answer';
    }
    field(25; "QC Equipment Code"; Code[20])
    {
      Caption = 'Equipment';
    }
    field(26; "Question Description"; Text[100])
    {
      Caption = 'Question Description';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '23.0';
    }
    field(27; "QC Question Description 92FDW"; Text[100])
    {
      Caption = 'Question Description';
    }
    field(28; "Calculation Method"; Enum CalculationMethod92FDW)
    {
      Caption = 'Calculation Method';
    }
    field(29; "Numeric Target"; Decimal)
    {
      Caption = 'Numeric Target';
    }
    field(30; "Formula Text"; Text[250])
    {
      Caption = 'Formula';
    }
    field(31; "Formula Symbol"; Text[20])
    {
      Caption = 'Formula Symbol';
    }
    field(40; "From Plan Code"; Code[20])
    {
      Caption = 'From Plan Code';
    }
    field(41; "From Plan Line Sequence"; Integer)
    {
      Caption = 'From Plan Line Sequence';
    }
    field(42; "Is Calculated Formula"; Boolean)
    {
      Caption = 'Is Calculated Formula';
    }
  }
  keys
  {
    key(Key1; "Plan Code", Sequence)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Plan Code", Sequence)
    {
    }
    fieldgroup(Brick; "Plan Code", Sequence)
    {
    }
  }
  // var CalculationMethodLotAttributeErr: Label;
  // FrequencyTypeLotAttributeErr: Label;
  // MultipleReadingLotAttributeErr: Label;
}