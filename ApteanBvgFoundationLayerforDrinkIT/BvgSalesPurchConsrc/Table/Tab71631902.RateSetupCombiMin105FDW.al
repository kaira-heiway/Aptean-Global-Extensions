table 71631902 RateSetupCombiMin105FDW
{
  Caption = 'Condition Rate Combined Minimum';

  fields
  {
    field(1; "Rule No."; Integer)
    {
      Caption = 'Condition Rule No.';
    }
    field(2; "Line ID"; Integer)
    {
      Caption = 'Combi. Minimum Line ID';
    }
    field(12; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code (Quantity)';
    }
    field(13; "Minimum Quantity"; Decimal)
    {
      Caption = 'Minimum Quantity';
    }
    field(14; "Maximum Quantity"; Decimal)
    {
      Caption = 'Maximum Quantity';
    }
    field(40; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(41; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(51; "Recurring Mode"; Boolean)
    {
      Caption = 'Recurring';
    }
    field(52; "Recurring Quantity"; Decimal)
    {
      Caption = 'Recurring Quantity';
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
    key(PK; "Rule No.", "Line ID", "Item No.", "Unit of Measure Code", "Minimum Quantity", "Maximum Quantity")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Rule Calculation Code", "Item No.", "Unit of Measure Code", "Minimum Quantity")
    {
    }
    fieldgroup(Brick; "Rule Calculation Code", "Item No.", "Unit of Measure Code", "Minimum Quantity")
    {
    }
  }
  var RateLines105FDW: Record RateLines105FDW;
  // RateSetup105FDW: Record RateSetup105FDW;
  // FeatureControlMgmt105FDW: Codeunit FeatureControlMgmt105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // StatusCheckSuspended: Boolean;
  // CannotBeGreaterErr: Label;
}