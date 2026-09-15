table 71631898 ConditionJournalLine105FDW
{
  Caption = 'Condition Journal Line';

  fields
  {
    field(1; "Journal Template Name"; Code[10])
    {
      Caption = 'Journal Template Name';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(4; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(5; "Document Type"; Enum IntlJnlDocumentType105FDW)
    {
      Caption = 'Document Type';
    }
    field(6; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(7; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(10; "Account Type"; Enum IntlSourceType105FDW)
    {
      Caption = 'Account Type';
    }
    field(11; "Account No."; Code[20])
    {
      Caption = 'Account No.';
    }
    field(12; "Account Condition No."; Code[20])
    {
      Caption = 'Account Condition No.';
    }
    field(15; Type; Enum IntlDocLineType105FDW)
    {
      Caption = 'Type';
    }
    field(16; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(20; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(21; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(22; "Description 2"; Text[50])
    {
      Caption = 'Description 2';
    }
    field(23; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(24; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(25; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(26; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(27; "Tax Area Code"; Code[20])
    {
      Caption = 'Tax Area Code';
    }
    field(28; "Tax Liable"; Boolean)
    {
      Caption = 'Tax Liable';
    }
    field(29; "Tax Group Code"; Code[20])
    {
      Caption = 'Tax Group Code';
    }
    field(30; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(31; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(32; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(33; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(34; "Invoiced Quantity"; Decimal)
    {
      Caption = 'Invoiced Quantity';
    }
    field(35; "Invoiced Qty. (Base)"; Decimal)
    {
      Caption = 'Invoiced Quantity (Base)';
    }
    field(36; "Unit Amount"; Decimal)
    {
      Caption = 'Unit Price';
    }
    field(37; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(38; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(40; "Discount %"; Decimal)
    {
      Caption = 'Discount %';
    }
    field(41; "Discount Amount"; Decimal)
    {
      Caption = 'Discount Amount';
    }
    field(42; "Discount Amount (LCY)"; Decimal)
    {
      Caption = 'Discount Amount (LCY)';
    }
    field(50; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(51; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(60; "Account Delivery No."; Code[20])
    {
      Caption = 'Account Delivery No.';
    }
    field(100; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(101; "Condition Line"; Boolean)
    {
      Caption = 'Condition Line';
    }
    field(102; "Rule Source Type"; Enum IntlRuleSourceType105FDW)
    {
      Caption = 'Rule Source Type';
    }
    field(103; "Rule Source No."; Code[20])
    {
      Caption = 'Rule Source No.';
    }
    field(104; "Rule Item Type"; Enum IntlRuleItemType105FDW)
    {
      Caption = 'Rule Item Type';
    }
    field(105; "Rule Item No."; Code[20])
    {
      Caption = 'Rule Item No.';
    }
    field(106; "Rule Based Source Type"; Enum IntlRuleBaseSrcType105FDW)
    {
      Caption = 'Rule Based on Source';
    }
    field(107; "Rule Based Source No."; Code[20])
    {
      Caption = 'Based on Source Group No.';
    }
    field(108; "Rule Based Item Type"; Enum IntlRuleBaseItemType105FDW)
    {
      Caption = 'Rule Based on Item';
    }
    field(109; "Rule Based Item No."; Code[20])
    {
      Caption = 'Rule Based on Item Group No.';
    }
    field(110; "Indirect Sales"; Boolean)
    {
      Caption = 'Indirect Sales';
    }
    field(120; "Loan No."; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(121; "Contract No."; Code[20])
    {
      Caption = 'Contract No.';
    }
    field(140; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
    }
    field(141; "Post Accrual to G/L"; Boolean)
    {
      Caption = 'Post Accrual to G/L';
    }
    field(142; Expected; Boolean)
    {
      Caption = 'Expected Accrual';
    }
    field(143; "Calculation Type"; Enum IntlCalculationType105FDW)
    {
      Caption = 'Calculation Type';
    }
    field(144; "Calculation Method Type"; Enum IntlCalcMethodType105FDW)
    {
      Caption = 'Calculation Method Type';
    }
    field(145; "Calculation Minimum Type"; Enum IntlMinimumType105FDW)
    {
      Caption = 'Calculation Minimum Type';
    }
    field(146; "Ignore Item Line Discount"; Boolean)
    {
      Caption = 'Ignore Item Line Discount';
    }
    field(170; "Unit of Measure Code (Rate)"; Code[10])
    {
      Caption = 'Unit of Measure Code (Minimum)';
    }
    field(171; "Rate Quantity Expected (Uom)"; Decimal)
    {
      Caption = 'Quantity Expected (Minimum)';
    }
    field(172; "Rate Quantity Actual (Uom)"; Decimal)
    {
      Caption = 'Quantity Actual (Minimum)';
    }
    field(173; "Minimum Quantity"; Decimal)
    {
      Caption = 'Rate Minimum Quantity';
    }
    field(174; "Maximum Quantity"; Decimal)
    {
      Caption = 'Rate Maximum Quantity';
    }
    field(175; "Rate Value"; Decimal)
    {
      Caption = 'Rate Unit Value';
    }
    field(176; "Minimum Amount"; Decimal)
    {
      Caption = 'Rate Minimum Amount';
    }
    field(177; "Maximum Amount"; Decimal)
    {
      Caption = 'Rate Maximum Amount';
    }
    field(200; Status; Enum IntlJnlStatusType105FDW)
    {
      Caption = 'Status';
    }
    field(201; "Period Starting Date"; Date)
    {
      Caption = 'Period Starting Date';
    }
    field(202; "Period Ending Date"; Date)
    {
      Caption = 'Period Ending Date';
    }
    field(300; "Journal Batch Name"; Code[10])
    {
      Caption = 'Journal Batch Name';
    }
    field(301; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(302; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(303; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(304; "External Document No."; Code[35])
    {
      Caption = 'External Document No.';
    }
    field(305; "Shipto-Address Code"; Code[10])
    {
      Caption = 'Ship-to/Address Code';
    }
    field(306; "Shipment Method Code"; Code[10])
    {
      Caption = 'Shipment Method Code';
    }
    field(307; "Payment Method Code"; Code[10])
    {
      Caption = 'Payment Method Code';
    }
    field(308; "Payment Terms Code"; Code[10])
    {
      Caption = 'Payment Terms Code';
    }
    field(309; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(310; "Source Posting Group"; Code[20])
    {
      Caption = 'Source Posting Group';
    }
    field(480; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(481; "Global Dimension 1 Code"; Code[20])
    {
      Caption = 'Global Dimension 1 Code';
    }
    field(482; "Global Dimension 2 Code"; Code[20])
    {
      Caption = 'Global Dimension 2 Code';
    }
    field(483; "Shortcut Dimension 3 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 3 Code';
    }
    field(484; "Shortcut Dimension 4 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 4 Code';
    }
    field(485; "Shortcut Dimension 5 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 5 Code';
    }
    field(486; "Shortcut Dimension 6 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 6 Code';
    }
    field(487; "Shortcut Dimension 7 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 7 Code';
    }
    field(488; "Shortcut Dimension 8 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(489; "Shortcut Dimension 9 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 9 Code';
    }
    field(490; "Shortcut Dimension 10 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 10 Code';
    }
    field(500; "Amount Actual"; Decimal)
    {
      Caption = 'Condition Amount Actual';
    }
    field(501; "Amount Actual (LCY)"; Decimal)
    {
      Caption = 'Condition Amount Actual (LCY))';
    }
    field(510; "Item Amount Actual"; Decimal)
    {
      Caption = 'Item Amount Actual';
    }
    field(511; "Item Amount Actual (LCY)"; Decimal)
    {
      Caption = 'Item Amount Actual (LCY))';
    }
    field(512; "Item Ledger Completed Invd."; Boolean)
    {
      Caption = 'Item Ledger Entry Completed Invoiced';
    }
    field(530; "Indirect Sales Amt. Actual"; Decimal)
    {
      Caption = 'Indirect Sales Amount Actual';
    }
    field(531; "Indirect Sales Amt. Act. (LCY)"; Decimal)
    {
      Caption = 'Indirect Sales Amount Actual (LCY))';
    }
    field(700; "Approval Status"; Enum IntlApprovStatusType105FDW)
    {
      Caption = 'Approval Status';
    }
    field(800; "Applies-to Condition Entry"; Integer)
    {
      Caption = 'Applies-to Condition Ledger Entry No.';
    }
    field(801; "Applies-to ID"; Code[50])
    {
      Caption = 'Applies-to ID';
    }
    field(802; "Applies-to Doc. Type"; Enum IntlLdgDocumentType105FDW)
    {
      Caption = 'Applies-to Doc. Type';
    }
    field(803; "Applies-to Doc. No."; Code[20])
    {
      Caption = 'Applies-to Doc. No.';
    }
    field(804; "Applies-to Source Type"; Enum IntlSourceType105FDW)
    {
      Caption = 'Applies-to Source Type';
    }
    field(805; "Applies-to Source No."; Code[20])
    {
      Caption = 'Applies-to Source No.';
    }
    field(806; "Applies-to Item No."; Code[20])
    {
      Caption = 'Applies-to Item No.';
    }
    field(809; "Applied Automatically"; Boolean)
    {
      Caption = 'Applied Automatically';
    }
    field(900; "System-Created Entry"; Boolean)
    {
      Caption = 'System-Created Entry';
    }
    field(901; Correction; Boolean)
    {
      Caption = 'Correction';
    }
    field(902; Positive; Boolean)
    {
      Caption = 'Positive';
    }
    field(903; "Rule On Hold"; Boolean)
    {
      Caption = 'Rule On Hold';
    }
    field(904; "Settlement Document"; Boolean)
    {
      Caption = 'Settlement Document';
    }
    field(1000; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(1001; "G/L Ledger Entry No."; Integer)
    {
      Caption = 'G/L Ledger Entry No.';
    }
    field(1002; "Value Ledger Entry No."; Integer)
    {
      Caption = 'Value Ledger Entry No.';
    }
    field(1003; "Condition Doc. Line No."; Integer)
    {
      Caption = 'Condition Document Line No.';
    }
    field(1004; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(1010; "G/L Register No."; Integer)
    {
      Caption = 'G/L Register No.';
    }
    field(1011; "Item Register No."; Integer)
    {
      Caption = 'Item Register No.';
    }
    field(2000; "Calculation ID"; Guid)
    {
      Caption = 'Calculation ID';
    }
    field(3000; "Rate ID"; Guid)
    {
      Caption = 'Condition Rate ID';
    }
    field(4000; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
  }
  keys
  {
    key(PK; "Journal Template Name", "Journal Batch Name", "Line No.")
    {
    }
    key(SK_Settlement; "Account Type", "Account No.", "Applies-to Source Type", "Applies-to Source No.", "Applies-to Item No.")
    {
    }
    key(SK_ConditionEntry; "Applies-to Condition Entry")
    {
    }
    key(SK_RuleOnHold; "Rule No.", "Rule On Hold")
    {
    }
  }
  var Calculation105FDW: Record Calculation105FDW;
  CondJournalBatch105FDW: Record CondJournalBatch105FDW;
  CondJournalTemplate105FDW: Record CondJournalTemplate105FDW;
  // Currency: Record Currency;
  // CurrencyExchangeRate: Record "Currency Exchange Rate";
  // Customer: Record Customer;
  DocumentLine105FDW: Record DocumentLine105FDW;
  // GenBusinessPostingGroup: Record "Gen. Business Posting Group";
  // GenProductPostingGroup: Record "Gen. Product Posting Group";
  // GLAccount: Record "G/L Account";
  // InventorySetup: Record "Inventory Setup";
  // Item: Record Item;
  // ItemCharge: Record "Item Charge";
  RuleSetup105FDW: Record RuleSetup105FDW;
  // TempPurchaseHeader: Record "Purchase Header" temporary;
  // TempPurchaseLine: Record "Purchase Line" temporary;
  // TempRuleSetup105FDW: Record RuleSetup105FDW temporary;
  // TempSalesHeader: Record "Sales Header" temporary;
  // TempSalesLine: Record "Sales Line" temporary;
  // Vendor: Record Vendor;
  // DimensionManagement: Codeunit Microsoft.Finance.Dimension.DimensionManagement;
  // IntlApprovalHook105FDW: Codeunit IntlApprovalHook105FDW;
  // IntlDimensionHook105FDW: Codeunit IntlDimensionHook105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // IntlGeneralSHook105FDW: Codeunit IntlGeneralSHook105FDW;
  // IntlInventoryHook105FDW: Codeunit IntlInventoryHook105FDW;
  // IntlJournalHook105FDW: Codeunit IntlJournalHook105FDW;
  // IntlPeriodicHook105FDW: Codeunit IntlPeriodicHook105FDW;
  // IntlPurchaseHook105FDW: Codeunit IntlPurchaseHook105FDW;
  // IntlSalesHook105FDW: Codeunit IntlSalesHook105FDW;
  // JournalSubs105FDW: Codeunit JournalSubs105FDW;
  // NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  // UnitOfMeasureManagement: Codeunit Microsoft.Foundation.UOM."Unit of Measure Management";
  ApprovalStatusCheckSuspended: Boolean;
  SkipUpdateOfRuleLastSuggestDate: Boolean;
  StatusCheckSuspended: Boolean;
  GlobalNewSourceTypeJnlDocLine: Integer;
  // CannotBeChangedWhenErr: Label;
  // CannotBeGreaterErr: Label;
  // CannotBeSpecifiedWithoutErr: Label;
  // CannotBeValidWithRuleErr: Label;
  // MustHaveSameSignErr: Label;
  // StrFilterNotEqualLbl: Label;
}