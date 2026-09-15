table 71631889 ConditionLedgerEntry105FDW
{
  Caption = 'Condition Ledger Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    // field(4; "Item Ledger Entry Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Entry Type")
    // {
    //   Caption = 'Item Ledger Entry Type';
    // }
    field(5; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(6; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(7; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(8; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(9; "Inventory Posting Group"; Code[20])
    {
      Caption = 'Inventory Posting Group';
    }
    field(10; "Source Posting Group"; Code[20])
    {
      Caption = 'Source Posting Group';
    }
    field(11; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(12; "Valued Quantity"; Decimal)
    {
      Caption = 'Quantity';
    }
    field(13; "Item Ledger Entry Quantity"; Decimal)
    {
      Caption = 'Item Ledger Entry Quantity';
    }
    field(14; "Invoiced Quantity"; Decimal)
    {
      Caption = 'Invoiced Quantity';
    }
    field(15; "Valued Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(16; "Invoiced Quantity (Base)"; Decimal)
    {
      Caption = 'Invoiced Quantity (Base)';
    }
    field(17; "Sales Amount (Actual)"; Decimal)
    {
      Caption = 'Condition Sales Amount (Actual)';
    }
    field(22; "Salespers./Purch. Code"; Code[20])
    {
      Caption = 'Salespers./Purch. Code';
    }
    field(23; "Discount Amount"; Decimal)
    {
      Caption = 'Condition Discount Amount';
    }
    field(24; "User ID"; Code[50])
    {
      Caption = 'User ID';
    }
    field(25; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(33; "Global Dimension 1 Code"; Code[20])
    {
      Caption = 'Global Dimension 1 Code';
    }
    field(34; "Global Dimension 2 Code"; Code[20])
    {
      Caption = 'Global Dimension 2 Code';
    }
    // field(42; "Source Type"; Enum Microsoft.Foundation.Enums."Analysis Source Type")
    // {
    //   Caption = 'Source Type';
    // }
    field(46; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(48; "Journal Batch Name"; Code[10])
    {
      Caption = 'Journal Batch Name';
    }
    field(57; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(58; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(60; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(61; "External Document No."; Code[35])
    {
      Caption = 'External Document No.';
    }
    field(64; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(80; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(81; "DDocument Type"; Enum IntlLdgDocumentType105FDW)
    {
      Caption = 'Document Type';
    }
    field(98; Expected; Boolean)
    {
      Caption = 'Expected';
    }
    field(99; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(103; Inventoriable; Boolean)
    {
      Caption = 'Inventoriable';
    }
    field(104; "Valuation Date"; Date)
    {
      Caption = 'Valuation Date';
    }
    // field(110; "VAT Calculation Type"; Enum Microsoft.Foundation.Enums."Tax Calculation Type")
    // {
    //   Caption = 'VAT Calculation Type';
    // }
    field(111; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(112; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(113; "VAT %"; Decimal)
    {
      Caption = 'VAT %';
    }
    field(114; "Tax Area Code"; Code[20])
    {
      Caption = 'Tax Area Code';
    }
    field(115; "Tax Liable"; Boolean)
    {
      Caption = 'Tax Liable';
    }
    field(116; "Tax Group Code"; Code[20])
    {
      Caption = 'Tax Group Code';
    }
    field(146; "Cost Amount (Expected)"; Decimal)
    {
      Caption = 'Cost Amount (Expected)';
    }
    field(147; "Cost Amount (Actual)"; Decimal)
    {
      Caption = 'Cost Amount (Actual)';
    }
    field(148; "Purchase Amount (Actual)"; Decimal)
    {
      Caption = 'Condition Purchase Amount (Actual)';
    }
    field(149; "Purchase Amount (Expected)"; Decimal)
    {
      Caption = 'Condition Purchase Amount (Expected)';
    }
    field(150; "Sales Amount (Expected)"; Decimal)
    {
      Caption = 'Condition Sales Amount (Expected)';
    }
    field(151; Adjustment; Boolean)
    {
      Caption = 'Adjustment';
    }
    field(152; "Return Reason Code"; Code[10])
    {
      Caption = 'Return Reason Code';
    }
    field(480; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(999; "Value Entry No."; Integer)
    {
      Caption = 'Value Entry No.';
    }
    field(1000; "Attached to Line No."; Integer)
    {
      Caption = 'Document Attached to Line No.';
    }
    field(1001; "Condition Source No."; Code[20])
    {
      Caption = 'Condition Source No.';
    }
    field(1002; "Order Date"; Date)
    {
      Caption = 'Order Date';
    }
    field(1003; "Shipment-Receipt Date"; Date)
    {
      Caption = 'Shipment/Receipt Date';
    }
    field(1004; "Shipto-Address Code"; Code[10])
    {
      Caption = 'Ship-to/Address Code';
    }
    field(1005; "Sell-to/Buy-from Type"; Enum IntlSourceType105FDW)
    {
      Caption = 'Sell-to/Buy-from Type';
    }
    field(1006; "Sell-to/Buy-from No."; Code[20])
    {
      Caption = 'Sell-to/Buy-from No.';
    }
    field(1007; "Bill-to/Pay-to Type"; Enum IntlSourceType105FDW)
    {
      Caption = 'Bill-to/Pay-to Type';
    }
    field(1008; "Bill-to/Pay-to No."; Code[20])
    {
      Caption = 'Bill-to/Pay-to No.';
    }
    field(1103; "Shortcut Dimension 3 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 3 Code';
    }
    field(1104; "Shortcut Dimension 4 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 4 Code';
    }
    field(1105; "Shortcut Dimension 5 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 5 Code';
    }
    field(1106; "Shortcut Dimension 6 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 6 Code';
    }
    field(1107; "Shortcut Dimension 7 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 7 Code';
    }
    field(1108; "Shortcut Dimension 8 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(1109; "Shortcut Dimension 9 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 9 Code';
    }
    field(1110; "Shortcut Dimension 10 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 10 Code';
    }
    field(2002; "Description Source"; Text[100])
    {
      Caption = 'Description Source';
    }
    field(2003; "Applies-to Entry"; Integer)
    {
      Caption = 'Correction Applies-to Entry';
    }
    field(2004; Open; Boolean)
    {
      Caption = 'Open';
    }
    field(2900; "Applies-to Doc. Type"; Enum IntlJnlDocumentType105FDW)
    {
      Caption = 'Applies-to Doc. Type';
    }
    field(2901; "Applies-to Doc. No."; Code[20])
    {
      Caption = 'Applies-to Doc. No.';
    }
    field(2902; "Applies-to ID"; Code[50])
    {
      Caption = 'Applies-to ID';
    }
    field(2903; "Applying Entry"; Boolean)
    {
      Caption = 'Applying Entry';
    }
    field(2904; "Closed by Entry No."; Integer)
    {
      Caption = 'Closed by Entry No.';
    }
    field(2905; "Closed at Date"; Date)
    {
      Caption = 'Closed at Date';
    }
    field(2910; Reversed; Boolean)
    {
      Caption = 'Reversed';
    }
    field(2911; "Reversed by Entry No."; Integer)
    {
      Caption = 'Reversed by Entry No.';
    }
    field(2912; "Reversed Entry No."; Integer)
    {
      Caption = 'Reversed Entry No.';
    }
    field(3000; "Accrual Posted to G/L"; Decimal)
    {
      Caption = 'Accrual Posted to G/L';
    }
    field(3002; Settlement; Boolean)
    {
      Caption = 'Settlement';
    }
    field(3003; "Stlmt. Purch. Amount (Actual)"; Decimal)
    {
      Caption = 'Settlement Purchase Amount (Actual)';
    }
    field(3004; "Stlmt. Sales Amount (Actual)"; Decimal)
    {
      Caption = 'Settlement Sales Amount (Actual)';
    }
    field(3005; "Stlmt. Disc. Amount (Actual)"; Decimal)
    {
      Caption = 'Settlement Discount Amount (Actual)';
    }
    field(3006; "Stlmt. Cost Amount (Actual)"; Decimal)
    {
      Caption = 'Settlement Cost Amount (Actual)';
    }
    field(9000; "Transaction No."; Integer)
    {
      Caption = 'Transaction No. (Condition)';
    }
    field(10000; Positive; Boolean)
    {
      Caption = 'Positive';
    }
    field(10001; "Shipment Method Code"; Code[10])
    {
      Caption = 'Shipment Method Code';
    }
    field(10002; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(10003; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(10004; "Completely Invoiced"; Boolean)
    {
      Caption = 'Completely Invoiced';
    }
    field(10005; Correction; Boolean)
    {
      Caption = 'Correction';
    }
    field(10006; "Item Purchase Amount (Expectd)"; Decimal)
    {
      Caption = 'Item Purchase Amount (Expected)';
    }
    field(10007; "Item Purchase Amount (Actual)"; Decimal)
    {
      Caption = 'Item Purchase Amount (Actual)';
    }
    field(10008; "Item Sales Amount (Expected)"; Decimal)
    {
      Caption = 'Item Sales Amount (Expected)';
    }
    field(10009; "Item Sales Amount (Actual)"; Decimal)
    {
      Caption = 'Item Sales Amount (Actual)';
    }
    field(10010; "Item Base Unit of Measure Code"; Code[10])
    {
      Caption = 'Item Base Unit of Measure Code';
    }
    field(10011; "Item Ledger Entry Unit Measure"; Code[10])
    {
      Caption = 'Item Ledger Entry Unit of Measure Code';
    }
    field(10012; "Item Ledger Completed Invd."; Boolean)
    {
      Caption = 'Item Ledger Entry Completed Invoiced';
    }
    field(10013; "Item Charge No. Filter"; Code[20])
    {
      Caption = 'Item Charge No. Filter';
    }
    field(10014; "Item Category Code"; Code[20])
    {
      Caption = 'Item Category Code';
    }
    field(10015; "Consumption Unit Measure"; Code[10])
    {
      Caption = 'Consumption Unit of Measure Code';
    }
    field(10016; "Item Cost Amount (Expected)"; Decimal)
    {
      Caption = 'Item Cost Amount (Expected)';
    }
    field(10017; "Item Cost Amount (Actual)"; Decimal)
    {
      Caption = 'Item Cost Amount (Actual)';
    }
    field(10018; "Item Special Price"; Boolean)
    {
      Caption = 'Item Special Price';
    }
    field(11000; "G/L Entry No."; Integer)
    {
      Caption = 'G/L Entry No.';
    }
    field(11002; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(11003; "G/L Account Name"; Text[100])
    {
      Caption = 'G/L Account Name';
    }
    field(12000; "Calculation ID"; Guid)
    {
      Caption = 'Calculation ID';
    }
    field(12001; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
    }
    field(12002; "Calculation Method Type"; Enum IntlCalcMethodType105FDW)
    {
      Caption = 'Calculation Method Type';
    }
    field(12003; "Calculation On Date"; Enum IntlCalcOnDateType105FDW)
    {
      Caption = 'Calculation on Date (Document)';
    }
    field(12004; "Calculation Type"; Enum IntlCalculationType105FDW)
    {
      Caption = 'Calculation Type';
    }
    field(12005; "Calc. On Special Price Type"; Enum IntlCalcSpecPriceType105FDW)
    {
      Caption = 'Calculation on Special Price Type';
    }
    field(12006; "Calc. Post Accrual to G/L"; Boolean)
    {
      Caption = 'Calculation Post Accrual to G/L';
    }
    field(12007; "Calculation Period Type"; Enum IntlCalcPeriodType105FDW)
    {
      Caption = 'Calculation Period Type';
    }
    field(12008; "Price Calculation Method Type"; Enum IntlPriceCalcMethodType105FDW)
    {
      Caption = 'Price Calculation Method Type';
    }
    field(12009; "Ignore Item Line Discount"; Boolean)
    {
      Caption = 'Ignore Item Line Discount';
    }
    field(13000; "Rate ID"; Guid)
    {
      Caption = 'Condition Rate ID';
    }
    field(13001; "Starting Date (Rate)"; Date)
    {
      Caption = 'Starting Date (Rate)';
    }
    field(13002; "Ending Date (Rate)"; Date)
    {
      Caption = 'Ending Date (Rate)';
    }
    field(13003; "Rate Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code (Minimum)';
    }
    field(13004; "Rate Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure (Minimum)';
    }
    field(13005; "Minimum Quantity"; Decimal)
    {
      Caption = 'Minimum Quantity';
    }
    field(13006; "Maximum Quantity"; Decimal)
    {
      Caption = 'Maximum Quantity';
    }
    field(13008; "Unit Measure Method Type"; Enum IntlUomMethodType105FDW)
    {
      Caption = 'Unit Measure Method Type';
    }
    field(13009; "Calculation Minimum Type"; Enum IntlMinimumType105FDW)
    {
      Caption = 'Calculation Minimum Type';
    }
    field(13010; "Recurring Mode"; Boolean)
    {
      Caption = 'Recurring';
    }
    field(13011; "Recurring Quantity"; Decimal)
    {
      Caption = 'Recurring Quantity';
    }
    field(13012; "Rate Currency Code"; Code[10])
    {
      Caption = 'Rate Currency Code';
    }
    field(13013; "Minimum Amount"; Decimal)
    {
      Caption = 'Minimum Amount';
    }
    field(13014; "Maximum Amount"; Decimal)
    {
      Caption = 'Maximum Amount';
    }
    field(13015; "Free Quantity"; Decimal)
    {
      Caption = 'Free Quantity';
    }
    field(13016; "Maximum Free Quantity"; Decimal)
    {
      Caption = 'Maximum Free Quantity';
    }
    field(13017; "Free Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code (Free)';
    }
    field(13018; "Price Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code (Price)';
    }
    field(13019; "Price Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure (Price)';
    }
    field(13020; "Rate Value (Price)"; Decimal)
    {
      Caption = 'Rate Unit Amount';
    }
    field(13021; "Rate Value (Percent)"; Decimal)
    {
      Caption = 'Rate Percentage';
    }
    field(13022; "Rate Valued Quantity (Uom)"; Decimal)
    {
      Caption = 'Quantity (Uom Minimum)';
    }
    field(13023; "Rate Item No."; Code[20])
    {
      Caption = 'Rate Item No.';
    }
    field(13024; "Free Item Type"; Enum IntlFreeItemType105FDW)
    {
      Caption = 'Free Item Type';
    }
    field(3025; "Rate Rounding Method Type"; Enum RateRoundMethodType105FDW)
    {
      Caption = 'Rate Rounding Method Type';
    }
    field(13026; "Maximum Quantity Deal Member"; Decimal)
    {
      Caption = 'Maximum Quantity Deal (per Source Member)';
    }
    field(13027; "Maximum Quantity Deal"; Decimal)
    {
      Caption = 'Maximum Quantity Deal';
    }
    field(13029; "Max. Deal per Rate List"; Boolean)
    {
      Caption = 'Max. Deal per Rate List';
    }
    field(13200; "Rate Qty. per Unit of Item"; Decimal)
    {
      Caption = 'Rate Free Item Quantity per (relative weight)';
    }
    field(14000; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(14001; "Direction of Movement"; Enum IntlDirectionMvmtType105FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(14002; "Rule Source Type"; Enum IntlRuleSourceType105FDW)
    {
      Caption = 'Rule Source Type';
    }
    field(14003; "Rule Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(14004; "Rule Item Type"; Enum IntlRuleItemType105FDW)
    {
      Caption = 'Rule Item Type';
    }
    field(14005; "Rule Item No."; Code[20])
    {
      Caption = 'Rule Item No.';
    }
    field(14006; "Indirect Sales"; Boolean)
    {
      Caption = 'Indirect Sales';
    }
    field(14020; "Loan No."; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(14021; "Contract No."; Code[20])
    {
      Caption = 'Contract No.';
    }
    field(14099; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(14100; "Based Source Type"; Enum IntlRuleBaseSrcType105FDW)
    {
      Caption = 'Based on Source Type';
    }
    field(14101; "Based Source No."; Code[20])
    {
      Caption = 'Based on Source Type';
    }
    field(14102; "Based Item Type"; Enum IntlRuleBaseItemType105FDW)
    {
      Caption = 'Based on Item Type';
    }
    field(14103; "Based Item No."; Code[20])
    {
      Caption = 'Based on Item Type';
    }
    field(14104; "Based Location Type"; Enum IntlRuleLocationType105FDW)
    {
      Caption = 'Based on Location Type';
    }
    field(14105; "Based Location Code"; Code[10])
    {
      Caption = 'Based on Location Code';
    }
    field(14106; "Based Reason Type"; Enum IntlRuleReasonType105FDW)
    {
      Caption = 'Based on Reason Type';
    }
    field(14107; "Based Reason Code"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(14109; "Based Payment Method Code"; Code[10])
    {
      Caption = 'Based on Payment Method Code';
    }
    field(14110; "Based Shipment Method Code"; Code[10])
    {
      Caption = 'Based on Shipment Method Code';
    }
    field(14111; "Based Shipto-Address Code"; Code[10])
    {
      Caption = 'Based on Ship-to / Order Address Code';
    }
    field(14112; "Payment Method Code"; Code[10])
    {
      Caption = 'Payment Method Code';
    }
    field(14113; "Payment Terms Code"; Code[10])
    {
      Caption = 'Payment Terms Code';
    }
    field(14115; "Free Item No."; Code[20])
    {
      Caption = 'Free Item No.';
    }
    field(14116; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
    field(14117; "Based Item Category Type"; Enum IntlRuleItemCatType105FDW)
    {
      Caption = 'Based on Item Category Type';
    }
    field(14118; "Based Item Category Code"; Code[20])
    {
      Caption = 'Based on Item Category Code';
    }
    field(14119; "Based Consumption UOM Type"; Enum IntlRuleConsUomType105FDW)
    {
      Caption = 'Based on Consumption UOM Type';
    }
    field(14120; "Based Consumption UOM Code"; Code[20])
    {
      Caption = 'Based on Consumption UOM Code';
    }
    field(14121; "Based Payment Method Type"; Enum IntlRulePmtMethodType105FDW)
    {
      Caption = 'Based on Payment Method Type';
    }
    field(14122; "Based Shipment Method Type"; Enum IntlRuleShpMethodType105FDW)
    {
      Caption = 'Based on Shipment Method Type';
    }
    field(14500; "Starting Date (Rule)"; Date)
    {
      Caption = 'Starting Date (Rule)';
    }
    field(14501; "Ending Date (Rule)"; Date)
    {
      Caption = 'Ending Date (Rule)';
    }
  }
  keys
  {
    key(PKey; "Entry No.")
    {
    }
    key(SKey_DocPosting; "Posting Date", "Document No.")
    {
    }
    key(SK_GLEntry; "G/L Entry No.")
    {
    }
    key(SK_ItemEntry; "Item Ledger Entry No.", "Closed by Entry No.")
    {
    }
    key(SK_ValueEntry; "Value Entry No.")
    {
    }
    key(SK_RuleOpenEntry; "Rule No.", Expected)
    {
    }
    key(SK_DocumentTypeNo; "DDocument Type", "Document No.", "Document Line No.", Correction)
    {
    }
    key(SK_SelltoBuyfrom; "Sell-to/Buy-from Type", "Sell-to/Buy-from No.")
    {
    }
    key(SK_BilltoPayto; "Bill-to/Pay-to Type", "Bill-to/Pay-to No.")
    {
    }
    key(SK_RuleSource; "Rule Source Type", "Rule Source No.")
    {
    }
    key(SK_BasedSource; "Based Source Type", "Based Source No.")
    {
    }
    // key(SK_ConditionSource; "Source Type", "Condition Source No.")
    // {
    // }
    // key(SK_SourceNo; "Source No.", "Source Type")
    // {
    // }
     key(SK_ConditionSource; "Condition Source No.")
    {
    }
    key(SK_SourceNo; "Source No.")
    {
    }
    key(SK_RuleRateDocId; "Rule No.", "Rate ID", "DDocument Type", "Document No.", "Condition Source No.", "Posting Date", "Item No.", "Item Charge No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Entry No.", Description, "Item No.", "Posting Date", "Document No.")
    {
    }
  }
  var ConditionRegister105FDW: Record ConditionRegister105FDW;
  //GlobalItemLedgerEntry: Record "Item Ledger Entry";
  //Item: Record Item;
  SPCCalculationLine: Record Calculation105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // SPCIntlDimensionHook: Codeunit IntlDimensionHook105FDW;
  // SPCIntlInventoryHook: Codeunit IntlInventoryHook105FDW;
  // UnitofMeasureManagement: Codeunit Microsoft.Foundation.UOM."Unit of Measure Management";
  HideDynamicCaptionFields: Boolean;
}