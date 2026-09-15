table 71624656 QCScoreCodes92FDW
{
  Caption = 'QC Score Codes';

  fields
  {
    field(1; Code; Code[50])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(3; Color; Enum QCScoreColor92FDW)
    {
      Caption = 'Color';
    }
    field(4; "Score Icon"; Blob)
    {
      Caption = 'Score Icon';
    }
    field(5; "Default Check Result"; Enum ScoreResult92FDW)
    {
      Caption = 'Default Check Result';
    }
    field(6; "Default Inspection Status"; Code[10])
    {
      Caption = 'Default Inspection Status';
    }
    field(7; Blocked; Boolean)
    {
      Caption = 'Blocked';
    }
    field(8; "Plans Using This Score"; Integer)
    {
      Caption = 'Plans Using This Score';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}