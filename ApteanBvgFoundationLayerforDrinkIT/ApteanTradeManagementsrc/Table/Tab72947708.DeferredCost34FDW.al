table 72947708 DeferredCost34FDW
{
  Caption = 'Deferred Cost';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(3; "Allocation Method"; Enum DeferredCostAllocMethod34FDW)
    {
      Caption = 'Allocation Method';
    }
    field(4; "Source Table ID"; Integer)
    {
      Caption = 'Source Table ID';
    }
    field(5; "Source Table Name"; Text[249])
    {
      Caption = 'Source Table Name';
    }
    field(6; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(7; "Trade Plan Description"; Text[100])
    {
      Caption = 'Trade Plan Description';
    }
    field(8; "Period Method"; Enum PeriodMethod34FDW)
    {
      Caption = 'Period Method';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}