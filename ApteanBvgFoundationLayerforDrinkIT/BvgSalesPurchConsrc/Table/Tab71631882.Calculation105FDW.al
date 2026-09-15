table 71631882 Calculation105FDW
{
  Caption = 'Condition Calculation Code';

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
    field(10; Type; Enum IntlDocLineType105FDW)
    {
      Caption = 'Type';
    }
    field(11; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(16; "VAT Bus. Posting Gr. (Price)"; Code[20])
    {
      Caption = 'VAT Bus. Posting Gr. (Price)';
    }
    field(17; "Calculation On VAT Lines"; Boolean)
    {
      Caption = 'Calculation on VAT Lines';
    }
    field(30; "Calculation Method Type"; Enum IntlCalcMethodType105FDW)
    {
      Caption = 'Calculation Method Type';
    }
    field(31; "Calculation On Date"; Enum IntlCalcOnDateType105FDW)
    {
      Caption = 'Calculation On Date (Document)';
      ObsoleteReason = 'Redesign on needs - replaced by C/V Condition Date field.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(32; "Calculation Type"; Enum IntlCalculationType105FDW)
    {
      Caption = 'Calculation Type';
    }
    field(33; "Calc. On Special Price Type"; Enum IntlCalcSpecPriceType105FDW)
    {
      Caption = 'Calculation on Special Price Type';
    }
    field(34; "Calc. On Application Policy"; Enum IntlCalcOnPrioType105FDW)
    {
      Caption = 'Application Policy';
    }
    field(35; "Calculation Minimum Type"; Enum IntlMinimumType105FDW)
    {
      Caption = 'Calculation Minimum Type';
    }
    field(36; "Price Calculation Method Type"; Enum IntlPriceCalcMethodType105FDW)
    {
      Caption = 'Price Calculation Method Type';
    }
    field(37; "Copy Translations to Rule"; Boolean)
    {
      Caption = 'Copy Translations to Rule';
    }
    field(40; "Calculation Period Type"; Enum IntlCalcPeriodType105FDW)
    {
      Caption = 'Calculation Period Type';
    }
    field(41; "Calculation Period Formula"; DateFormula)
    {
      Caption = 'Calculation Period Formula';
    }
    field(42; "Use Calendar Period"; Boolean)
    {
      Caption = 'Use Calendar Period';
    }
    field(52; "Post Accrual to G/L"; Boolean)
    {
      Caption = 'Post Accrual to G/L';
    }
    field(98; Translation; Boolean)
    {
      Caption = 'Translation';
    }
    field(99; "Last Modified Date Time"; DateTime)
    {
      Caption = 'Last Modified Date Time';
    }
    field(100; "No. of Rules"; Integer)
    {
      Caption = 'No. of Rules';
    }
    field(1000; "Reason Code (Sales)"; Code[10])
    {
      Caption = 'Reason Code (Sales)';
    }
    field(1001; "Based Reason Type (Sales)"; Enum IntlRuleReasonType105FDW)
    {
      Caption = 'Based on Reason Type (Sales)';
    }
    field(1002; "Based Reason Code (Sales)"; Code[10])
    {
      Caption = 'Based on Reason Code (Sales)';
    }
    field(1003; "Indirect Sales"; Boolean)
    {
      Caption = 'Indirect Sales';
    }
    field(1004; "Customer Posting Group"; Code[20])
    {
      Caption = 'Customer Posting Group';
    }
    field(1500; "Reason Code (Purchase)"; Code[10])
    {
      Caption = 'Reason Code (Purchase)';
    }
    field(1501; "Based Reason Type (Purchase)"; Enum IntlRuleReasonType105FDW)
    {
      Caption = 'Based on Reason Type (Purchase)';
    }
    field(1502; "Based Reason Code (Purchase)"; Code[10])
    {
      Caption = 'Based on Reason Code (Purchase)';
    }
    field(1504; "Vendor Posting Group"; Code[20])
    {
      Caption = 'Vendor Posting Group';
    }
    field(1505; "Ignore Item Line Discount"; Boolean)
    {
      Caption = 'Ignore Item Line Discount';
    }
    field(2000; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Code, Description)
    {
    }
    fieldgroup(Brick; Code, Description)
    {
    }
  }
  var 
  // CalcTranslation105FDW: Record CalcTranslation105FDW;
  // ConditionSetup105FDW: Record ConditionSetup105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // ConfirmManagement: Codeunit System.Utilities."Confirm Management";
  DateFormulaBlank: DateFormula;
  // AllowedOnlyErr: Label;
  // NotAllowedValueWithErr: Label;
  // StrFilterNotEqualLbl: Label;
  // StrSubGroupLbl: Label;
  // MixedNotAllowedForOrderErr: Label;
  // CannotChangeToOrderWhenMixedErr: Label;
  // ChangingFromMixedTypeQst: Label;
  // ExistingZeroRateLinesForMixedErr: Label;
}