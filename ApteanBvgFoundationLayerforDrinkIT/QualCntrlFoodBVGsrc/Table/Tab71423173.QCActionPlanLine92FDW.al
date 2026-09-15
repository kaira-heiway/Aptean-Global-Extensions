table 71423173 QCActionPlanLine92FDW
{
  Caption = 'Quality Control Action Plan Line';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(12; DueDateCalculation; DateFormula)
    {
      Caption = 'Due Date Calculation';
    }
    field(13; "Additional Instructions"; Text[100])
    {
      Caption = 'Additional Instructions';
    }
    field(14; "Action Type"; Enum ActionType92FDW)
    {
      Caption = 'Action Type';
    }
    field(15; "Depends on Sequence"; Integer)
    {
      Caption = 'Depends on Sequence';
    }
    field(16; "Required Answer"; Enum ActionResponse92FDW)
    {
      Caption = 'Required Answer';
    }
    field(17; "Extended Instructions"; Blob)
    {
      Caption = 'Extended Instructions';
    }
  }
  keys
  {
    key(Key1; Code, Sequence)
    {
    }
  }
 // var 
//   CannotChangeSequenceWithDependenciesErr: Label[150];
//   CannotDeleteSequenceWithDependenciesErr: Label[150];
//   DependsOnSequenceNotExistErr: Label[150];
//   DependsOnSequenceNotQuestionErr: Label[150];
//   DependsOnSequenceTooHighErr: Label[150];
//   RequiredAnswerNeedsDependencyErr: Label[150];
}