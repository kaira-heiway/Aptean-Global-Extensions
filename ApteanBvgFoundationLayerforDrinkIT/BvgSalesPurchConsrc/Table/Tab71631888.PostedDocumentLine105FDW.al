table 71631888 PostedDocumentLine105FDW
{
  Caption = 'Posted Document Line';

  fields
  {
    field(2; "Source Type"; Integer)
    {
      Caption = 'Source Table Type';
    }
    field(3; "Source Subtype"; Option)
    {
      Caption = 'Source Subtype';
      OptionMembers= "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption=' "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(4; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(5; "Source Batch Name"; Code[10])
    {
      Caption = 'Source Batch Name';
    }
    field(7; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(8; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(9; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(10; "Document Type"; Integer)
    {
      Caption = 'Document Type';
    }
    field(11; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(12; "Source Relation Type"; Enum IntlRelationType105FDW)
    {
      Caption = 'Source Relation Type';
    }
    field(13; "Source Relation No."; Code[20])
    {
      Caption = 'Source Relation No.';
    }
    field(14; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(17; "Order Date"; Date)
    {
      Caption = 'Order Date';
    }
    field(18; "Shipment-Receipt Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(20; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(25; "Source Relation No. (Invoice)"; Code[20])
    {
      Caption = 'Source Relation No. (Invoice)';
    }
    field(26; "Source Condition No. (Filter)"; Code[20])
    {
      Caption = 'Source Condition No.';
    }
    field(100; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(101; Type; Enum IntlSlsPurchLineType105FDW)
    {
      Caption = 'Type';
    }
    field(102; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(103; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(104; "Description 2"; Text[50])
    {
      Caption = 'Description 2';
    }
    field(105; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(107; "Allow Line Disc."; Boolean)
    {
      Caption = 'Allow Line Disc.';
    }
    field(108; "Allow Invoice Disc."; Boolean)
    {
      Caption = 'Allow Invoice Disc.';
    }
    field(109; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(110; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    // field(111; "VAT Calculation Type"; Enum Microsoft.Foundation.Enums."Tax Calculation Type")
    // {
    //   Caption = 'VAT Calculation Type';
    // }
    field(112; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(113; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(114; "VAT %"; Decimal)
    {
      Caption = 'VAT %';
    }
    field(116; "Return Reason Code"; Code[10])
    {
      Caption = 'Return Reason Code';
    }
    field(117; "Allow Item Charge Assignment"; Boolean)
    {
      Caption = 'Allow Item Charge Assignment';
    }
    field(120; "Tax Area Code"; Code[20])
    {
      Caption = 'Tax Area Code';
    }
    field(121; "Tax Liable"; Boolean)
    {
      Caption = 'Tax Liable';
    }
    field(122; "Tax Group Code"; Code[20])
    {
      Caption = 'Tax Group Code';
    }
    field(200; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(201; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(202; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(203; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(204; "Unit Amount"; Decimal)
    {
      Caption = 'Unit Amount';
    }
    field(205; "Line Amount"; Decimal)
    {
      Caption = 'Line Amount';
    }
    field(206; "Line Discount %"; Decimal)
    {
      Caption = 'Line Discount %';
    }
    field(207; "Line Discount Amount"; Decimal)
    {
      Caption = 'Line Discount Amount';
    }
    field(302; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
    field(303; "Is Line Per Document"; Boolean)
    {
      Caption = 'Per Document';
    }
    field(305; "Is Line Expected"; Boolean)
    {
      Caption = 'Expected Accrual';
    }
    field(306; "Is Line Free"; Boolean)
    {
      Caption = 'Is Line Free';
    }
    field(400; "Line Amount (LCY)"; Decimal)
    {
      Caption = 'Line Amount (LCY)';
    }
    field(401; "Line Discount Amount (LCY)"; Decimal)
    {
      Caption = 'Line Discount Amount (LCY)';
    }
    field(500; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(501; "Shortcut Dimension 1 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 1 Code';
    }
    field(502; "Shortcut Dimension 2 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 2 Code';
    }
    field(503; "Shortcut Dimension 3 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 3 Code';
    }
    field(504; "Shortcut Dimension 4 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 4 Code';
    }
    field(505; "Shortcut Dimension 5 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 5 Code';
    }
    field(506; "Shortcut Dimension 6 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 6 Code';
    }
    field(507; "Shortcut Dimension 7 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 7 Code';
    }
    field(508; "Shortcut Dimension 8 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(509; "Shortcut Dimension 9 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 9 Code';
    }
    field(510; "Shortcut Dimension 10 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 10 Code';
    }
    field(1000; "Applies-to Source Type"; Integer)
    {
      Caption = 'Applies-to Source Type';
    }
    field(1001; "Applies-to Source Subtype"; Integer)
    {
      Caption = 'Applies-to Source Subtype';
    }
    field(1002; "Applies-to Source ID"; Code[20])
    {
      Caption = 'Applies-to Source ID';
    }
    field(1003; "Applies-to Source Batch Name"; Code[10])
    {
      Caption = 'Applies-to Source Batch Name';
    }
    field(1005; "Applies-to Source Ref. No."; Integer)
    {
      Caption = 'Applies-to Source Ref. No.';
    }
    field(1006; "Applies-to Relation Type"; Enum IntlRelationType105FDW)
    {
      Caption = 'Applies-to Relation Type';
    }
    field(1007; "Applies-to Relation No."; Code[20])
    {
      Caption = 'Applies-to Relation No.';
    }
    field(1008; "Applies-to Relation No. (Inv.)"; Code[20])
    {
      Caption = 'Applies-to Relation No. (Invoice)';
    }
    field(1010; "Applies-to Item No."; Code[20])
    {
      Caption = 'Applies-to Item No.';
    }
    field(1011; "Applies-to Quantity"; Decimal)
    {
      Caption = 'Applies-to Quantity';
    }
    field(1012; "Applies-to Unit Measure Code"; Code[10])
    {
      Caption = 'Applies-to Unit of Measure Code';
    }
    field(1013; "Applies-to Qty. perUnitMeasure"; Decimal)
    {
      Caption = 'Applies-to Qty. per Unit of Measure';
    }
    field(1014; "Applies-to Quantity (Base)"; Decimal)
    {
      Caption = 'Applies-to Quantity (Base)';
    }
    field(1020; "Applies-to Unit Amount"; Decimal)
    {
      Caption = 'Applies-to Unit Amount';
    }
    field(1021; "Applies-to Amount"; Decimal)
    {
      Caption = 'Applies-to Amount';
    }
    field(1022; "Applies-to Amount (LCY)"; Decimal)
    {
      Caption = 'Applies-to Amount (LCY)';
    }
    field(1050; "Applies-to Condition Entry No."; Integer)
    {
      Caption = 'Applies-to Condition Entry No.';
    }
    field(1051; "Applies-to Positive Entry"; Boolean)
    {
      Caption = 'Applies-to Positive Entry';
    }
    field(1052; "Applies-to Item Entry No."; Integer)
    {
      Caption = 'Applies-to Item Entry No.';
    }
    field(1053; "Applies-from Item Entry No."; Integer)
    {
      Caption = 'Applies-from Item Entry No.';
    }
    field(1054; "Applies-to Posting Date"; Date)
    {
      Caption = 'Applies-to Posting Date';
    }
    field(2000; "Calculation ID"; Guid)
    {
      Caption = 'Calculation ID';
    }
    field(2001; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
    }
    field(2002; "Calculation Method Type"; Enum IntlCalcMethodType105FDW)
    {
      Caption = 'Calculation Method Type';
    }
    field(2003; "Calculation On Date"; Enum IntlCalcOnDateType105FDW)
    {
      Caption = 'Calculation on Date (Document)';
    }
    field(2004; "Calculation Type"; Enum IntlCalculationType105FDW)
    {
      Caption = 'Calculation Type';
    }
    field(2005; "Calc. On Special Price Type"; Enum IntlCalcSpecPriceType105FDW)
    {
      Caption = 'Calculation on Special Price Type';
    }
    field(2006; "Post Accrual to G/L"; Boolean)
    {
      Caption = 'Post Accrual to G/L';
    }
    field(2007; "Calculation Period Type"; Enum IntlCalcPeriodType105FDW)
    {
      Caption = 'Calculation Period Type';
    }
    field(2008; "Price Calculation Method Type"; Enum IntlPriceCalcMethodType105FDW)
    {
      Caption = 'Price Calculation Method Type';
    }
    field(2010; "Ignore Item Line Discount"; Boolean)
    {
      Caption = 'Ignore Item Line Discount';
    }
    field(2011; "Calculation on VAT Lines"; Boolean)
    {
      Caption = 'Calculation on VAT Lines';
    }
    field(3000; "Rate ID"; Guid)
    {
      Caption = 'Condition Rate ID';
    }
    field(3001; "Starting Date (Rate)"; Date)
    {
      Caption = 'Starting Date (Rate)';
    }
    field(3002; "Ending Date (Rate)"; Date)
    {
      Caption = 'Ending Date (Rate)';
    }
    field(3003; "Unit of Measure Code (Rate)"; Code[10])
    {
      Caption = 'Unit of Measure Code (Minimum)';
    }
    field(3004; "Qty. per Unit of Measure(Rate)"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure (Minimum)';
    }
    field(3005; "Minimum Quantity"; Decimal)
    {
      Caption = 'Minimum Quantity';
    }
    field(3006; "Maximum Quantity"; Decimal)
    {
      Caption = 'Maximum Quantity';
    }
    field(3007; "Rate Value"; Decimal)
    {
      Caption = 'Unit Value';
    }
    field(3008; "Unit Measure Method Type"; Enum IntlUomMethodType105FDW)
    {
      Caption = 'Unit Measure Method Type';
    }
    field(3009; "Calculation Minimum Type"; Enum IntlMinimumType105FDW)
    {
      Caption = 'Calculation Minimum Type';
    }
    field(3010; "Recurring Mode"; Boolean)
    {
      Caption = 'Recurring';
    }
    field(3011; "Recurring Quantity"; Decimal)
    {
      Caption = 'Recurring Quantity';
    }
    field(3012; "Rate Currency Code"; Code[10])
    {
      Caption = 'Rate Currency Code';
    }
    field(3013; "Minimum Amount"; Decimal)
    {
      Caption = 'Minimum Amount';
    }
    field(3014; "Maximum Amount"; Decimal)
    {
      Caption = 'Maximum Amount';
    }
    field(3015; "Free Quantity"; Decimal)
    {
      Caption = 'Free Quantity';
    }
    field(3016; "Maximum Free Quantity"; Decimal)
    {
      Caption = 'Maximum Free Quantity';
    }
    field(3017; "Free Unit of Measure Code"; Code[10])
    {
      Caption = 'Free Unit of Measure Code';
    }
    field(3018; "Unit of Measure Code (Price)"; Code[10])
    {
      Caption = 'Unit of Measure Code (Price)';
    }
    field(3019; "Qty. perUnit of Measure(Price)"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure (Price)';
    }
    field(3020; "Rate Quantity (Uom)"; Decimal)
    {
      Caption = 'Quantity (Uom Minimum)';
    }
    field(3023; "Rate Item No."; Code[20])
    {
      Caption = 'Rate Item No.';
    }
    field(3024; "Free Item Type"; Enum IntlFreeItemType105FDW)
    {
      Caption = 'Free Item Type';
    }
    field(3025; "Rate Rounding Method Type"; Enum RateRoundMethodType105FDW)
    {
      Caption = 'Rate Rounding Method Type';
    }
    field(3026; "Maximum Quantity Deal Member"; Decimal)
    {
      Caption = 'Maximum Quantity Deal (per Source Member)';
    }
    field(3027; "Maximum Quantity Deal"; Decimal)
    {
      Caption = 'Maximum Quantity Deal';
    }
    field(3029; "Max. Deal per Rate List"; Boolean)
    {
      Caption = 'Max. Deal per Rate List';
    }
    field(3200; "Rate Qty. per Unit of Item"; Decimal)
    {
      Caption = 'Rate Free Item Quantity per (relative weight)';
    }
    field(4000; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(4001; "Direction of Movement"; Enum IntlDirectionMvmtType105FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(4002; "Rule Source Type"; Enum IntlRuleSourceType105FDW)
    {
      Caption = 'Rule Source Type';
    }
    field(4003; "Rule Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(4004; "Rule Item Type"; Enum IntlRuleItemType105FDW)
    {
      Caption = 'Rule Item Type';
    }
    field(4005; "Rule Item No."; Code[20])
    {
      Caption = 'Rule Item No.';
    }
    field(4006; "Indirect Sales"; Boolean)
    {
      Caption = 'Indirect Sales';
    }
    field(4020; "Loan No."; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(4021; "Contract No."; Code[20])
    {
      Caption = 'Contract No.';
    }
    field(4099; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(4100; "Based Source Type"; Enum IntlRuleBaseSrcType105FDW)
    {
      Caption = 'Based on Source Type';
    }
    field(4101; "Based Source No."; Code[20])
    {
      Caption = 'Based on Source Type';
    }
    field(4102; "Based Item Type"; Enum IntlRuleBaseItemType105FDW)
    {
      Caption = 'Based on Item Type';
    }
    field(4103; "Based Item No."; Code[20])
    {
      Caption = 'Based on Item Type';
    }
    field(4104; "Based Location Type"; Enum IntlRuleLocationType105FDW)
    {
      Caption = 'Based on Location Type';
    }
    field(4105; "Based Location Code"; Code[10])
    {
      Caption = 'Based on Location Code';
    }
    field(4106; "Based Reason Type"; Enum IntlRuleReasonType105FDW)
    {
      Caption = 'Based on Reason Type';
    }
    field(4107; "Based Reason Code"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(4109; "Based Payment Method Code"; Code[10])
    {
      Caption = 'Based on Payment Method Code';
    }
    field(4110; "Based Shipment Method Code"; Code[10])
    {
      Caption = 'Based on Shipment Method Code';
    }
    field(4111; "Based Shipto-Address Code"; Code[10])
    {
      Caption = 'Based on Ship-to / Order Address Code';
    }
    field(4112; "Payment Method Code"; Code[10])
    {
      Caption = 'Payment Method Code';
    }
    field(4113; "Payment Terms Code"; Code[10])
    {
      Caption = 'Payment Terms Code';
    }
    field(4114; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(4115; "Free Item No."; Code[20])
    {
      Caption = 'Free Item No.';
    }
    field(4117; "Based Item Category Type"; Enum IntlRuleItemCatType105FDW)
    {
      Caption = 'Based on Item Category Type';
    }
    field(4118; "Based Item Category Code"; Code[20])
    {
      Caption = 'Based on Item Category Code';
    }
    field(4119; "Based Consumption UOM Type"; Enum IntlRuleConsUomType105FDW)
    {
      Caption = 'Based on Consumption UOM Type';
    }
    field(4120; "Based Consumption UOM Code"; Code[20])
    {
      Caption = 'Based on Consumption UOM Code';
    }
    field(4121; "Based Payment Method Type"; Enum IntlRulePmtMethodType105FDW)
    {
      Caption = 'Based on Payment Method Type';
    }
    field(4122; "Based Shipment Method Type"; Enum IntlRuleShpMethodType105FDW)
    {
      Caption = 'Based on Shipment Method Type';
    }
    field(4123; "Source Posting Group"; Code[20])
    {
      Caption = 'Source Posting Group';
    }
    field(4500; "Starting Date (Rule)"; Date)
    {
      Caption = 'Starting Date (Rule)';
    }
    field(4501; "Ending Date (Rule)"; Date)
    {
      Caption = 'Ending Date (Rule)';
    }
    field(5000; "Periodic Source Type"; Integer)
    {
      Caption = 'Periodic Source Type';
    }
    field(5001; "Periodic Source Subtype"; Integer)
    {
      Caption = 'Periodic Source Subtype';
    }
    field(5002; "Periodic Source ID"; Code[20])
    {
      Caption = 'Periodic Source ID';
    }
    field(5003; "Periodic Source Ref. No."; Integer)
    {
      Caption = 'Periodic Source Ref. No.';
    }
    field(5004; "Periodic Source Batch Name"; Code[10])
    {
      Caption = 'Periodic Source Batch Name';
    }
    field(5006; "Periodic Posted"; Boolean)
    {
      Caption = 'Periodic Posted';
    }
    field(8200; "Unit Amount TAX"; Decimal)
    {
    }
    field(8201; "Line Amount TAX"; Decimal)
    {
    }
    field(8300; "Unit Amount EGM"; Decimal)
    {
    }
    field(8301; "Line Amount EGM"; Decimal)
    {
    }
    field(9000; "System-Created Entry"; Boolean)
    {
      Caption = 'System-Created Entry';
    }
    field(9001; "Copied From Posted Doc."; Boolean)
    {
      Caption = 'Copied From Posted Doc.';
    }
    field(9003; "Qty. per Line Split"; Decimal)
    {
      Caption = 'Qty. per Line Split';
    }
    field(9100; Correction; Boolean)
    {
      Caption = 'Correction';
    }
  }
  keys
  {
    key(PKey; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Ref. No.", "Line No.")
    {
    }
    key(SKey_LinePosition; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Line No.")
    {
    }
    key(SKey_Document; "Source Type", "Document Type", "Document No.", "Document Line No.", "Line No.")
    {
    }
    key(SKey_RuleId; "Rule No.")
    {
    }
    key(SKey_ItemApplyEntry; "Applies-to Item Entry No.", "Applies-to Condition Entry No.")
    {
    }
    key(SKey_SourceRelation; "Source Relation Type", "Source Relation No.", "Source Relation No. (Invoice)")
    {
    }
    key(SKey_AppliesRelation; "Applies-to Relation Type", "Applies-to Relation No.", "Applies-to Relation No. (Inv.)")
    {
    }
    key(SKey_RuleSource; "Rule Source Type", "Rule Source No.")
    {
    }
    key(SKey_BaseSource; "Based Source Type", "Based Source No.")
    {
    }
    key(SKey_AttachedPosition; "Source Type", "Source ID", "Attached to Line No.")
    {
    }
  }
  // var Currency: Record Currency;
  // CurrencyExchangeRate: Record "Currency Exchange Rate";
  // IntlDimensionHook105FDW: Codeunit IntlDimensionHook105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
}