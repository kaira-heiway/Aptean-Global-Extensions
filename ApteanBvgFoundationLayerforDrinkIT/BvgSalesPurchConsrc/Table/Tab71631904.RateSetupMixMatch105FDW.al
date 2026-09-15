table 71631904 RateSetupMixMatch105FDW
{
  Caption = 'Condition Rate Mix & Match Free Item';

  fields
  {
    field(1; "Rule No."; Integer)
    {
      Caption = 'Condition Rule No.';
    }
    field(2; "Line ID"; Integer)
    {
      Caption = 'Free MixMatch Line ID';
    }
    field(11; "Free Item No."; Code[20])
    {
      Caption = 'Free Item No.';
    }
    field(12; "Free Unit of Measure Code"; Code[10])
    {
      Caption = 'Free Unit of Measure Code';
    }
    field(13; "Free Qty. per Unit of Item"; Decimal)
    {
      Caption = 'Free Item Quantity per (relative weight)';
    }
    field(15; "Maximum Free Quantity"; Decimal)
    {
      Caption = 'Maximum Free Quantity';
    }
    field(20; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(65; "Maximum Quantity Deal Member"; Decimal)
    {
      Caption = 'Maximum Quantity Deal (per Source Member)';
    }
    field(66; "Maximum Quantity Deal"; Decimal)
    {
      Caption = 'Maximum Quantity Deal';
    }
    field(99; "Last Modified Date Time"; DateTime)
    {
      Caption = 'Last Modified Date Time';
    }
    field(100; "Rule Calculation Code"; Code[20])
    {
      Caption = 'Rule Calculation Code';
    }
    field(101; "Rule Description"; Text[100])
    {
      Caption = 'Rule Description';
    }
  }
  keys
  {
    key(PK; "Rule No.", "Line ID", "Free Item No.", "Free Unit of Measure Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Rule Calculation Code", "Free Item No.", "Free Unit of Measure Code", "Free Qty. per Unit of Item")
    {
    }
    fieldgroup(Brick; "Rule Calculation Code", "Free Item No.", "Free Unit of Measure Code", "Free Qty. per Unit of Item")
    {
    }
  }
  var RuleSetup105FDW: Record RuleSetup105FDW;
  RateLines105FDW: Record RateLines105FDW;
  // RateSetup105FDW: Record RateSetup105FDW;
  // FeatureControlMgmt105FDW: Codeunit FeatureControlMgmt105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // IntlInventoryHook105FDW: Codeunit IntlInventoryHook105FDW;
  StatusCheckSuspended: Boolean;
}