table 71631892 RuleSetup105FDW
{
  Caption = 'Condition Rule';

  fields
  {
    field(1; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(2; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
    }
    field(3; "Direction of Movement"; Enum IntlDirectionMvmtType105FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(5; "Source Type"; Enum IntlRuleSourceType105FDW)
    {
      Caption = 'Source Type';
    }
    field(6; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(7; "Item Type"; Enum IntlRuleItemType105FDW)
    {
      Caption = 'Item Type';
    }
    field(8; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(18; Translation; Boolean)
    {
      Caption = 'Translation';
    }
    field(19; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(20; "Based Source Type"; Enum IntlRuleBaseSrcType105FDW)
    {
      Caption = 'Based on Source Type';
    }
    field(21; "Based Source No."; Code[20])
    {
      Caption = 'Based on Source Group No.';
    }
    field(22; "Based On Condition Cust/Vend"; Boolean)
    {
      Caption = 'Based On Condition Customer/Vendor';
    }
    field(30; "Based Item Type"; Enum IntlRuleBaseItemType105FDW)
    {
      Caption = 'Minimum Based on Item Type';
    }
    field(31; "Based Item No."; Code[20])
    {
      Caption = 'Based on Item No.';
    }
    field(40; "Based Location Type"; Enum IntlRuleLocationType105FDW)
    {
      Caption = 'Based on Location Type';
    }
    field(41; "Based Location Code"; Code[10])
    {
      Caption = 'Based on Location Code';
    }
    field(42; "Based Item Category Type"; Enum IntlRuleItemCatType105FDW)
    {
      Caption = 'Based on Item Category Type';
    }
    field(43; "Based Item Category Code"; Code[20])
    {
      Caption = 'Based on Item Category Code';
    }
    field(44; "Based Item Categ. Policy Type"; Enum IntlRuleItmCatPolType105FDW)
    {
      Caption = 'Based on Item Category Policy';
    }
    field(50; "Based Reason Type"; Enum IntlRuleReasonType105FDW)
    {
      Caption = 'Based on Reason Type';
    }
    field(51; "Based Reason Code"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(61; "Based Payment Method Code"; Code[10])
    {
      Caption = 'Based on Payment Method Code';
    }
    field(62; "Based Shipment Method Code"; Code[10])
    {
      Caption = 'Based on Shipment Method Code';
    }
    field(63; "Based Shipto-Address Code"; Code[10])
    {
      Caption = 'Based on Ship-to / Order Address Code';
    }
    field(64; "Based Payment Method Type"; Enum IntlRulePmtMethodType105FDW)
    {
      Caption = 'Based on Payment Method Type';
    }
    field(65; "Based Shipment Method Type"; Enum IntlRuleShpMethodType105FDW)
    {
      Caption = 'Based on Shipment Method Type';
    }
    field(72; "Based Consumption UOM Type"; Enum IntlRuleConsUomType105FDW)
    {
      Caption = 'Based on Consumption UOM Type';
    }
    field(73; "Based Consumption UOM Code"; Code[20])
    {
      Caption = 'Based on Consumption UOM Code';
    }
    field(74; "Based Calculate On TAX Type"; Enum IntlAPPCalclines105FDW)
    {
      Caption = 'Calculate on Tax';
    }
    field(75; "Based Calculate On EGM Type"; Enum IntlAPPCalclines105FDW)
    {
      Caption = 'Calculate on Deposit';
    }
    field(80; "Starting Date"; Date)
    {
      Caption = 'Starting Date';
    }
    field(81; "Ending Date"; Date)
    {
      Caption = 'Ending Date';
    }
    field(99; "Last Modified Date Time"; DateTime)
    {
      Caption = 'Last Modified Date Time';
    }
    field(100; Status; Enum IntlRuleStatusType105FDW)
    {
      Caption = 'Status';
    }
    field(101; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
    field(102; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(103; "Payment Method Code"; Code[10])
    {
      Caption = 'Payment Method Code';
    }
    field(104; "Payment Terms Code"; Code[10])
    {
      Caption = 'Payment Terms Code';
    }
    field(105; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(110; "Source Posting Group"; Code[20])
    {
      Caption = 'Source Posting Group';
    }
    field(120; "Indirect Sales"; Boolean)
    {
      Caption = 'Indirect Sales';
      ObsoleteReason = 'This field will be removed and replaced by a flowfield from Calculation code extented by Advance Sales Managmement extension.';
      ObsoleteState = Pending;
      ObsoleteTag = '23.0';
    }
    field(121; "Include Suggest.History Jnl."; Boolean)
    {
      Caption = 'Include in Suggest Periodic Journal';
    }
    field(130; "Calc. On Special Price Type"; Enum IntlCalcSpecPriceType105FDW)
    {
      Caption = 'Calculate on Special Price';
    }
    field(150; "Loan No."; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(151; "Contract No."; Code[20])
    {
      Caption = 'Contract No.';
    }
    field(161; "No. of Pstd. Rule Instances"; Integer)
    {
      Caption = 'No. of Posted Invoice Rule Instances';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(170; "Filter Set Id"; Integer)
    {
      Caption = 'Filter Set Id';
    }
    field(201; "Max. No. of Rule Instances"; Integer)
    {
      Caption = 'Maximum Number of Posted Invoice Rule Instances (per Member)';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(203; "Max. No of Order Rule Instance"; Integer)
    {
      Caption = 'Maximum Number of Ordered Rule Instances';
    }
    field(204; "No. of Ordered Rule Instances"; Integer)
    {
      Caption = 'No. of Ordered Rule Instances';
      ObsoleteReason = 'This field has been replaced with new field Ordered Rule Instances.';
      ObsoleteState = Pending;
      ObsoleteTag = '26.0';
    }
    field(205; "Max. No of Rule Instance(Rule)"; Integer)
    {
      Caption = 'Maximum Number of Rule Instances (per Rule)';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(210; "Maximum Quantity Deal Member"; Decimal)
    {
      Caption = 'Maximum Quantity Deal (per Source Member)';
    }
    field(211; "Maximum Quantity Deal"; Decimal)
    {
      Caption = 'Maximum Quantity Deal';
    }
    field(212; "Max. Deal per Rate List"; Boolean)
    {
      Caption = 'Max. Deal per Rate List';
    }
    field(300; "Accrual Posted to G/L"; Boolean)
    {
      Caption = 'Accrual is Posted to G/L';
    }
    field(310; "Per Document"; Boolean)
    {
      Caption = 'Per Document';
    }
    field(400; "Last Suggest.Hist Date Time"; DateTime)
    {
      Caption = 'Last Suggested Based on History Date Time';
    }
    field(401; "Last Suggest.Per Date Time"; DateTime)
    {
      Caption = 'Last Suggested Periodic Date Time';
    }
    field(402; "Ignore Item Line Discount"; Boolean)
    {
      Caption = 'Ignore Item Line Discount';
    }
    field(7000; "No. of Rates"; Integer)
    {
      Caption = 'No. of Rates';
      ObsoleteReason = 'This field will be replaced with new field "Number of Rates" having reference from RateLines105FDW .';
      ObsoleteTag = '26.0';
      ObsoleteState = Pending;
    }
    field(7001; "Rate Free Mix Match"; Boolean)
    {
      Caption = 'Rate Free Mix Match';
      ObsoleteReason = 'This field will be replaced with new field "Rate Lines Free Mix Match" having reference from RateLines105FDW .';
      ObsoleteTag = '26.0';
      ObsoleteState = Pending;
    }
    field(7002; "Number of Rates"; Integer)
    {
      Caption = 'No. of Rates';
    }
    field(7003; "Rate Lines Free Mix Match"; Boolean)
    {
      Caption = 'Rate Free Mix Match';
    }
    field(7100; "Calculation Method Type"; Enum IntlCalcMethodType105FDW)
    {
      Caption = 'Calculation Method Type';
    }
    field(7101; "Calculation Type"; Enum IntlCalculationType105FDW)
    {
      Caption = 'Calculation Type';
    }
    field(7102; "Calculation Period Type"; Enum IntlCalcPeriodType105FDW)
    {
      Caption = 'Calculation Period Type';
    }
    field(7103; "Calculation Minimum Type"; Enum IntlMinimumType105FDW)
    {
      Caption = 'Calculation Minimum Type';
    }
    field(7104; "Calculation On Date"; Enum IntlCalcOnDateType105FDW)
    {
      Caption = 'Calculation On Date';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '23.0';
    }
    field(7105; "Calc. On Application Policy"; Enum IntlCalcOnPrioType105FDW)
    {
      Caption = 'Application Policy';
    }
    field(7106; "Price Calculation Method Type"; Enum IntlPriceCalcMethodType105FDW)
    {
      Caption = 'Price Calculation Method Type';
    }
    field(7107; "Calculation Indirect Sales"; Boolean)
    {
      Caption = 'Calculation Indirect Sales';
    }
    field(7108; "Post Accrual to G/L"; Boolean)
    {
      Caption = 'Post Accrual to G/L';
    }
    field(7109; "Calculation on VAT Lines"; Boolean)
    {
      Caption = 'Calculation on VAT Lines';
    }
    field(7200; "No. of InEx Groups"; Integer)
    {
      Caption = 'No. of Include-Exclude Relations';
    }
    field(7201; "No. of InEx Rules (Source)"; Integer)
    {
      Caption = 'No. of Include-Exclude Rules (Source)';
    }
    field(7202; "No. of InEx Rules (Item)"; Integer)
    {
      Caption = 'No. of Include-Exclude Rules (Item)';
    }
    field(7203; "No. of InEx Rules (ShipAddr)"; Integer)
    {
      Caption = 'No. of Include-Exclude Rules (Shipto-Address)';
    }
    field(7204; "Ordered Rule Instances"; Boolean)
    {
      Caption = 'Ordered Rule Instances';
    }
  }
  keys
  {
    key(PK; "Rule No.")
    {
    }
    key(SK_Status; Status)
    {
    }
    key(SK_Position; "Position Level")
    {
      ObsoleteReason = 'This key will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '23.0';
    }
    key(SK_CalcPosition; "Calculation Code", "Position Level")
    {
      ObsoleteReason = 'This key will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '23.0';
    }
    key(SK_MainCalcSortSetup; "Position Level", "Calculation Code", "Source Type", "Source No.", "Item Type", "Item No.", "Starting Date", "Ending Date")
    {
    }
    key(SK_LowestSourceCode; "Calculation Code", "Source Type", "Source No.", "Item Type", "Item No.", "Starting Date", "Ending Date", "Position Level")
    {
    }
    key(SK_LowestSourceAll; "Source Type", "Source No.", "Item Type", "Item No.", "Starting Date", "Ending Date", "Position Level")
    {
    }
    key(SK_LowestItemAll; "Item Type", "Item No.", "Source Type", "Source No.", "Starting Date", "Ending Date")
    {
    }
    key(SK_LowestBasedSourceAll; "Based Source Type", "Based Source No.", "Based Item Type", "Based Item No.", "Starting Date", "Ending Date", "Position Level")
    {
    }
    key(SK_LowestBasedItemAll; "Based Item Type", "Based Item No.", "Based Source Type", "Based Source No.", "Starting Date", "Ending Date")
    {
    }
    key(FilterSetId; "Filter Set Id")
    {
    }
    // key(FilterSetFiltering; "Filter Set Id", "Item Type", "Source Type", Status, "Direction of Movement", "Starting Date", "Ending Date", "Indirect Sales", "Based Shipto-Address Code", "Calculation Code", "Rule No.")
    // {
    // }
     key(FilterSetFiltering; "Filter Set Id", "Item Type", "Source Type", Status, "Direction of Movement", "Starting Date", "Ending Date",  "Based Shipto-Address Code", "Calculation Code", "Rule No.")
    {
    }
    key(SK_InitialRules; "Source Type", "Item No.", Status)
    {
    }
    key(SK_BasedSource; "Based Source No.")
    {
    }
    key(SK_SourceItem; "Source No.", "Item No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Rule No.", Description, "Calculation Code")
    {
    }
    fieldgroup(Brick; "Rule No.", Description, "Calculation Code")
    {
    }
  }
  var Calculation105FDW: Record Calculation105FDW;
  Classification105FDW: Record Classification105FDW;
  ConditionSetup105FDW: Record ConditionSetup105FDW;
  //CustomerPostingGroup: Record "Customer Posting Group";
  Group105FDW: Record Group105FDW;
  RuleTranslation105FDW: Record RuleTranslation105FDW;
  SourceBufferGlobal: Record SourceBuffer105FDW;
  // VendorPostingGroup: Record "Vendor Posting Group";
  // CalcRuleFilterSetFilters: Codeunit CalcRuleFilterSetFilters105FDW;
  // ConfirmManagement: Codeunit System.Utilities."Confirm Management";
  // IncExclRuleFilters: Codeunit IncExclRuleFilters105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // IntlGeneralSHook105FDW: Codeunit IntlGeneralSHook105FDW;
  // RuleSetupFilterSets: Codeunit RuleSetupFilterSets105FDW;
  HideValidationDialog: Boolean;
  StatusCheckSuspended: Boolean;
  // BasedCalculatePercentNotValidErr: Label;
  // CaptionBasedPrefixLbl: Label;
  // CaptionCodeSuffixLbl: Label;
  // CaptionNoSuffixLbl: Label;
  // InvalidValueWithErr: Label;
  // OnlyAllowedValueWithErr: Label;
  // StrFilter1Or2Lbl: Label;
  // StrFilterNotEqualLbl: Label;
  // StrFilterOr4Lbl: Label;
  // StrFormat2Lbl: Label;
  // StrFormat3Lbl: Label;
  // StrSubGroupLbl: Label;
}