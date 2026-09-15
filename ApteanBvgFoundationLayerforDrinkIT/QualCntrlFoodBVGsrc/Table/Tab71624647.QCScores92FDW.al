table 71624647 QCScores92FDW
{
  Caption = 'Quality Control Scores';

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
    field(11; Score; Code[50])
    {
      Caption = 'Score';
      ObsoleteReason = 'This field will be removed. This field is replaced with "Score Code".';
      ObsoleteState = Pending;
      ObsoleteTag = '27.0';
    }
    field(12; "Check Result"; Enum ScoreResult92FDW)
    {
      Caption = 'Check Result';
    }
    field(13; "Lot Attribute Name"; Text[250])
    {
      Caption = 'Lot Attribute Name';
    }
    field(14; "Lot Attribute Value"; Text[250])
    {
      Caption = 'Lot Attribute Value';
    }
    field(15; "Lot Attribute ID"; Integer)
    {
      Caption = 'Lot Attribute ID';
    }
    field(16; "Lot Attribute Value ID"; Integer)
    {
      Caption = 'Lot Attribute Value ID';
    }
    field(17; "Inspection Status"; Code[10])
    {
      Caption = 'Inspection Status';
    }
    field(18; "Score Code"; Code[50])
    {
      Caption = 'Score Code';
    }
  }
  keys
  {
    key(PK; "Plan Code", Sequence)
    {
    }
  }
}