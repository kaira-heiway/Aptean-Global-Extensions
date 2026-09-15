table 71624650 QCScoreCriteria92FDW
{
  Caption = 'QCScoreCriteria';

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
    field(3; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; Score; Code[50])
    {
      Caption = 'Score';
    }
    field(12; "Criteria Type"; Enum QCCriteriaType92FDW)
    {
      Caption = 'Criteria Type';
    }
    field(13; Criteria; Text[250])
    {
      Caption = 'Criteria';
    }
    field(14; Calculation; Enum CalculationType92FDW)
    {
      Caption = 'Calculation';
    }
    field(15; Equality; Enum EqualityType92FDW)
    {
      Caption = 'Equality';
    }
    field(16; Value; Decimal)
    {
      Caption = 'Value';
    }
    field(17; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; "Plan Code", Sequence, "Line No.")
    {
    }
  }
}