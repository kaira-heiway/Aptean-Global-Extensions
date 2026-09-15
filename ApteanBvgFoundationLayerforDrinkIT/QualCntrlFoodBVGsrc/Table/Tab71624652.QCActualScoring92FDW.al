table 71624652 QCActualScoring92FDW
{
  Caption = 'Quality Control Actual Scoring';

  fields
  {
    field(1; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; Score; Code[50])
    {
      Caption = 'Score';
    }
    field(12; Calculation; Enum CalculationType92FDW)
    {
      Caption = 'Calculation';
    }
    field(13; Sign; Enum EqualityType92FDW)
    {
      Caption = 'Criteria Type';
    }
    field(14; Criteria; Text[250])
    {
      Caption = 'Criteria';
    }
    field(15; Value; Decimal)
    {
      Caption = 'Value';
    }
    field(16; Actual; Decimal)
    {
      Caption = 'Actual';
    }
  }
  keys
  {
    key(Key1; "Document No.", "Line No.")
    {
    }
  }
}