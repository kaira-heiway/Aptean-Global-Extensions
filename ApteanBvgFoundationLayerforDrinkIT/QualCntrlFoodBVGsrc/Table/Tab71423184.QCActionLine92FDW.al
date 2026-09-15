table 71423184 QCActionLine92FDW
{
  Caption = 'Quality Control Action Line';

  fields
  {
    field(1; "QC Action No."; Code[20])
    {
      Caption = 'Quality Control Action No.';
    }
    field(2; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(12; "Action Type"; Enum ActionType92FDW)
    {
      Caption = 'Action Type';
    }
    field(13; Comment; Text[250])
    {
      Caption = 'Comment';
    }
    field(14; Done; Boolean)
    {
      Caption = 'Done';
    }
    field(15; Status; Enum ActionStatusType92FDW)
    {
      Caption = 'Status';
    }
    field(16; Response; Enum ActionResponse92FDW)
    {
      Caption = 'Response';
    }
    field(17; "Additional Instructions"; Text[100])
    {
      Caption = 'Additional Instructions';
    }
    field(18; "Due Date"; Date)
    {
      Caption = 'Due Date';
    }
    field(19; "Completed Date"; Date)
    {
      Caption = 'Completed Date';
    }
    field(20; "Depends on Sequence"; Integer)
    {
      Caption = 'Depends on Sequence';
    }
    field(21; "Required Answer"; Enum ActionResponse92FDW)
    {
      Caption = 'Required Answer';
    }
    field(22; "Hide Sequence"; Boolean)
    {
      Caption = 'Hide Sequence';
    }
  }
  keys
  {
    key(Key1; "QC Action No.", Sequence)
    {
    }
    key(Key2; "Action Type")
    {
    }
  }
 // var TeamManagement92FDW: Codeunit TeamManagement92FDW;
}