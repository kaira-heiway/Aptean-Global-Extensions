table 71631900 RateSetup105FDW
{
  Caption = 'Condition Rate Setup (Obsolete)';
  // ObsoleteReason = 'This table has been replaced by the RateLinesTable, which includes the Line No. field as part of its primary key.';
  // ObsoleteState = Pending;
  // ObsoleteTag = '26.0';

  fields
  {
    field(1; "Rule No."; Integer)
    {
      Caption = 'Condition Rule No.';
    }
    field(2; "Rate Combi. Minimum Line ID"; Integer)
    {
      Caption = 'Rate Combined Minimum Line ID';
    }
    field(3; "Rate Free MixMatch Line ID"; Integer)
    {
      Caption = 'Rate Free Item Mix & Match Line ID';
    }
    field(10; "Starting Date"; Date)
    {
      Caption = 'Starting Date';
    }
    field(11; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
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
    field(15; "Minimum Amount"; Decimal)
    {
      Caption = 'Minimum Amount';
    }
    field(16; "Maximum Amount"; Decimal)
    {
      Caption = 'Maximum Amount';
    }
    field(20; "Ending Date"; Date)
    {
      Caption = 'Ending Date';
    }
    field(21; "Price Includes VAT"; Boolean)
    {
      Caption = 'Price Includes VAT';
    }
    field(22; "Rate Value"; Decimal)
    {
      Caption = 'Unit Value';
    }
    field(30; "Allow Invoice Disc."; Boolean)
    {
      Caption = 'Allow Invoice Disc.';
    }
    field(31; "Allow Line Disc."; Boolean)
    {
      Caption = 'Allow Line Disc.';
    }
    field(32; "Unit Measure Method Type"; Enum IntlUomMethodType105FDW)
    {
      Caption = 'Unit Measure Method Type';
    }
    field(33; "Unit of Measure Code (Price)"; Code[10])
    {
      Caption = 'Unit of Measure Code (Price)';
    }
    field(40; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(41; "Rounding Method Type"; Enum RateRoundMethodType105FDW)
    {
      Caption = 'Rounding Method Type (Quantity)';
    }
    field(51; "Recurring Mode"; Boolean)
    {
      Caption = 'Recurring';
    }
    field(52; "Recurring Quantity"; Decimal)
    {
      Caption = 'Recurring Quantity';
    }
    field(60; "Free Quantity"; Decimal)
    {
      Caption = 'Free Quantity';
    }
    field(61; "Maximum Free Quantity"; Decimal)
    {
      Caption = 'Maximum Free Quantity';
    }
    field(62; "Free Unit of Measure Code"; Code[10])
    {
      Caption = 'Free Unit of Measure Code';
    }
    field(63; "Free Item Type"; Enum IntlFreeItemType105FDW)
    {
      Caption = 'Free Item Type';
    }
    field(64; "Free Item No."; Code[20])
    {
      Caption = 'Free Item No.';
    }
    field(65; "Maximum Quantity Deal Member"; Decimal)
    {
      Caption = 'Maximum Quantity Deal (per Source Member)';
    }
    field(66; "Maximum Quantity Deal"; Decimal)
    {
      Caption = 'Maximum Quantity Deal';
    }
    field(67; "Max. Deal per Mix Match List"; Boolean)
    {
      Caption = 'Max. Deal per Mix & Match List';
      ObsoleteReason = 'This field will be replaced by ''Max. Deal per Rate List'' field.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(68; "Max. Deal per Rate List"; Boolean)
    {
      Caption = 'Max. Deal per Rate List';
    }
    field(80; "Max. No. of Rate Instances"; Integer)
    {
      Caption = 'Maximum Number of Posted Invoice Rate Instances (per Member)';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(81; "No. of Pstd. Rate Instances"; Integer)
    {
      Caption = 'No. of Posted Invoice Rate Instances';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(90; "Rate Amount (Calcd.)"; Decimal)
    {
      Caption = 'Best Amount (Calcd.)';
    }
    field(98; "Item No. Filter"; Code[20])
    {
      Caption = 'Item No. Filter';
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
    field(102; "Rule Based Item No."; Code[20])
    {
      Caption = 'Based on Item No.';
    }
    field(200; "No. of Combi Minimum Rates"; Integer)
    {
      Caption = 'No. of Combi Minimum Rates';
    }
    field(201; "No. of Free MixMatch Rates"; Integer)
    {
      Caption = 'No. of Free MixMatch Rates';
    }
  }
  keys
  {
    key(PK; "Rule No.", "Starting Date", "Currency Code", "Item No.", "Unit of Measure Code", "Unit of Measure Code (Price)", "Minimum Quantity", "Maximum Quantity")
    {
    }
    key(SK_FreeUom; "Rule No.", "Free Unit of Measure Code")
    {
    }
    key(SK_PriceUom; "Rule No.", "Unit of Measure Code (Price)")
    {
    }
    key(SK_FreeItem; "Rule No.", "Free Item Type")
    {
    }
    key(SK_FilterRates; "Rule No.", "Currency Code", "Item No.", "Starting Date", "Ending Date")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Rule Calculation Code", "Starting Date", "Rate Value", "Ending Date")
    {
    }
    fieldgroup(Brick; "Rule Calculation Code", "Starting Date", "Rate Value", "Ending Date")
    {
    }
  }
  var Calculation105FDW: Record Calculation105FDW;
  RateSetupCombiMin105FDW: Record RateSetupCombiMin105FDW;
  RateSetupMixMatch105FDW: Record RateSetupMixMatch105FDW;
  RuleSetup105FDW: Record RuleSetup105FDW;
  // ConfirmManagement: Codeunit System.Utilities."Confirm Management";
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // UnitofMeasureManagement: Codeunit Microsoft.Foundation.UOM."Unit of Measure Management";
  RateCombiMinCheckSuspended: Boolean;
  RateFreeMixMatchCheckSuspended: Boolean;
  StatusCheckSuspended: Boolean;
  // CannotBeGreaterErr: Label;
  // CannotBeWithErr: Label;
  // InvalidValueWithErr: Label;
  // MustBeEmptyWithErr: Label;
  // MustBeZeroWithErr: Label;
  // NotEqual1Lbl: Label;
}