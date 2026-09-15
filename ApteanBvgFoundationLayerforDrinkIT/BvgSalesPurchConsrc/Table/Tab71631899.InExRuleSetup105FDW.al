table 71631899 InExRuleSetup105FDW
{
  Caption = 'Condition Include-Exclude Rule';

  fields
  {
    field(1; "Condition Rule No."; Integer)
    {
      Caption = 'Condition Rule No.';
    }
    field(2; Type; Enum IntlExGroupType105FDW)
    {
      Caption = 'Type';
    }
    field(3; Code; Code[20])
    {
      Caption = 'Code/No.';
    }
    field(5; "Rule Type"; Enum IntlInExRuleType105FDW)
    {
      Caption = 'Rule Type';
    }
    field(99; "Last Modified Date Time"; DateTime)
    {
      Caption = 'Last Modified Date Time';
    }
    field(100; "Rule Description"; Text[100])
    {
      Caption = 'Rule Description';
    }
    field(110; "Filter Value"; Text[30])
    {
      Caption = 'Filter Value';
    }
  }
  keys
  {
    key(PK; "Condition Rule No.", Type, Code)
    {
    }
    key(RuleNoRuleType; "Condition Rule No.", "Rule Type")
    {
    }
    key(FilterValue; "Filter Value")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Type, Code)
    {
    }
    fieldgroup(Brick; Type, Code)
    {
    }
  }
  var SourceBufferGlobal: Record SourceBuffer105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // StrFilterOr2Lbl: Label;
  // StrFilterOr3Lbl: Label;
  // StrFilterOr4Lbl: Label;
}