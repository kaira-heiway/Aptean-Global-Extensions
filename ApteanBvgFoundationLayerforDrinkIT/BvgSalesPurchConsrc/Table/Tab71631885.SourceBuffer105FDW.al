table 71631885 SourceBuffer105FDW
{
  Caption = 'Condition Source Buffer';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Source Type"; Integer)
    {
      Caption = 'Source Table Type';
    }
    field(3; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers = "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption = '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(4; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(5; "Source Batch Name"; Code[10])
    {
      Caption = 'Source Batch Name';
    }
    field(6; "Source Prod. Order Line"; Integer)
    {
      Caption = 'Source Prod. Order Line';
      ObsoleteReason = 'redesign on needs - unused field';
      ObsoleteState = Pending;
      ObsoleteTag = '23.0';
    }
    field(7; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(8; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(9; "Attached to Line No. (Filter)"; Integer)
    {
      Caption = 'Attached to Line No. (Filter)';
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
    field(15; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(16; "Prices Including VAT"; Boolean)
    {
      Caption = 'Prices Including VAT';
    }
    field(17; "Order Date"; Date)
    {
      Caption = 'Order Date';
    }
    field(18; "Shipment-Receipt Date"; Date)
    {
      Caption = 'Shipment/Receipt Date';
    }
    field(19; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(20; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(21; "Shipto-Address Code"; Code[10])
    {
      Caption = 'Ship-to/Address Code';
    }
    field(22; "Shipment Method Code"; Code[10])
    {
      Caption = 'Shipment Method Code';
    }
    field(23; "Payment Method Code"; Code[10])
    {
      Caption = 'Payment Method Code';
    }
    field(24; "Payment Terms Code"; Code[10])
    {
      Caption = 'Payment Terms Code';
    }
    field(25; "Source Relation No. (Invoice)"; Code[20])
    {
      Caption = 'Source Relation No. (Invoice)';
    }
    field(26; "Source Condition No. (Filter)"; Code[20])
    {
      Caption = 'Source Condition No. (Filter)';
    }
    field(27; "Source Delivery No. (Filter)"; Code[20])
    {
      Caption = 'Source Delivery No. (Filter)';
    }
    field(28; "Language Code"; Code[10])
    {
      Caption = 'Language Code';
    }
    field(29; "Condition Date (Filter)"; Date)
    {
      Caption = 'Condition Date (Filter)';
    }
    field(30; "Source Posting Group"; Code[20])
    {
      Caption = 'Source Posting Group';
    }
    field(31; "Header Dimension Set ID"; Integer)
    {
      Caption = 'Header Dimension Set ID';
    }
    field(32; "Header Condition Dim. Set ID"; Integer)
    {
      Caption = 'Header Condition Dim. Set ID';
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
    field(106; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
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
    field(115; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(116; "Return Reason Code"; Code[10])
    {
      Caption = 'Return Reason Code';
    }
    field(117; "Allow Item Charge Assignment"; Boolean)
    {
      Caption = 'Allow Item Charge Assignment';
    }
    field(118; "Is SKU"; Boolean)
    {
      Caption = 'Is SKU';
    }
    field(119; "Item Category Code"; Code[20])
    {
      Caption = 'Item Category Code';
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
    field(204; "Unit Price-Direct Unit Cost"; Decimal)
    {
      Caption = 'Unit Price/Direct Unit Cost';
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
    field(208; "Quantity Invoiced"; Decimal)
    {
      Caption = 'Quantity Invoiced';
    }
    field(209; "Quantity Invoiced (Base)"; Decimal)
    {
      Caption = 'Quantity Invoiced (Base)';
    }
    field(210; "Qty. Ship/Rcpt Not Invoiced"; Decimal)
    {
      Caption = 'Qty. Ship/Rcpt Not Invoiced';
    }
    field(211; "Qty. Ship/Rcpt NotInvd. (Base)"; Decimal)
    {
      Caption = 'Quantity Ship/Rcpt Not Invoiced (Base)';
    }
    field(300; "Is Line Inbound"; Boolean)
    {
      Caption = 'Is Line Inbound';
    }
    field(301; "Is Line CreditDocType"; Boolean)
    {
      Caption = 'Is Line CreditDocType';
    }
    field(302; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
    field(303; "Is Line Per Document"; Boolean)
    {
      Caption = 'Is Line Per Document';
    }
    field(304; "Is Line Invoiced"; Boolean)
    {
      Caption = 'Is Line Invoiced';
    }
    field(305; "Is Line Expected"; Boolean)
    {
      Caption = 'Is Line Expected';
    }
    field(306; "Is Line Free"; Boolean)
    {
      Caption = 'Is Line Free';
    }
    field(307; "Is Fixed Price"; Boolean)
    {
      Caption = 'Fixed Price';
    }
    field(308; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(309; "Is Special Price"; Boolean)
    {
      Caption = 'Is Special Price';
    }
    field(310; "Max. No of Order Rule Instance"; Integer)
    {
      Caption = 'Maximum Number of Ordered Rule Instances';
    }
    field(400; "Line Amount (LCY)"; Decimal)
    {
      Caption = 'Line Amount (LCY)';
    }
    field(401; "Line Discount Amount (LCY)"; Decimal)
    {
      Caption = 'Line Discount Amount (LCY)';
    }
    field(402; "Unit Cost"; Decimal)
    {
      Caption = 'Unit Cost';
    }
    field(403; "Unit Cost (LCY)"; Decimal)
    {
      Caption = 'Unit Cost (LCY)';
    }
    field(404; "Cost Amount"; Decimal)
    {
      Caption = 'Cost Amount';
    }
    field(405; "Cost Amount (LCY)"; Decimal)
    {
      Caption = 'Line Amount (LCY)';
    }
    field(410; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(411; "Amount Including VAT"; Decimal)
    {
      Caption = 'Amount Including VAT';
    }
    field(412; "VAT Base Amount"; Decimal)
    {
      Caption = 'VAT Base Amount';
    }
    field(479; "Condition Dimension Set ID"; Integer)
    {
      Caption = 'Condition Dimension Set ID';
    }
    field(500; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(501; "Shortcut Dimension Code 1"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 1';
    }
    field(502; "Shortcut Dimension Code 2"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 2';
    }
    field(503; "Shortcut Dimension Code 3"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 3';
    }
    field(504; "Shortcut Dimension Code 4"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 4';
    }
    field(505; "Shortcut Dimension Code 5"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 5';
    }
    field(506; "Shortcut Dimension Code 6"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 6';
    }
    field(507; "Shortcut Dimension Code 7"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 7';
    }
    field(508; "Shortcut Dimension Code 8"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 8';
    }
    field(509; "Shortcut Dimension Code 9"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 9';
    }
    field(510; "Shortcut Dimension Code 10"; Code[20])
    {
      Caption = 'Shortcut Dimension Code 10';
    }
    field(1010; "Applies-to Item No."; Code[20])
    {
      Caption = 'Applies-to Item No.';
    }
    field(2000; "Calculation Setup ID"; Guid)
    {
      Caption = 'Calculation Setup ID';
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
    field(2009; "Price Calculation Method Type"; Enum IntlPriceCalcMethodType105FDW)
    {
      Caption = 'Price Calculation Method';
    }
    field(2010; "Ignore Item Line Discount"; Boolean)
    {
      Caption = 'Ignore Item Line Discount';
    }
    field(2011; "Calculation on VAT Lines"; Boolean)
    {
      Caption = 'Calculation on VAT Lines';
    }
    field(3000; "Rate Setup ID"; Guid)
    {
      Caption = 'Rate Setup ID';
    }
    field(3003; "Unit of Measure Code (Rate)"; Code[10])
    {
      Caption = 'Unit of Measure Code (Minimum)';
    }
    field(3004; "Qty. per Unit of Measure(Rate)"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure (Minimum)';
    }
    field(3009; "Calculation Minimum Type"; Enum IntlMinimumType105FDW)
    {
      Caption = 'Calculation Minimum';
    }
    field(3016; "Maximum Free Quantity"; Decimal)
    {
      Caption = 'Maximum Free Quantity';
    }
    field(3020; "Rate Quantity (Uom)"; Decimal)
    {
      Caption = 'Quantity (Uom Minimum)';
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
    field(3028; "Max. Deal per Mix Match List"; Boolean)
    {
      Caption = 'Max. Deal per Mix & Match List';
      ObsoleteReason = 'This field will be replaced by ''Max. Deal per Rate List'' field.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(3029; "Max. Deal per Rate List"; Boolean)
    {
      Caption = 'Max. Deal per Rate List';
    }
    field(3200; "Rate Qty. per Unit of Item"; Decimal)
    {
      Caption = 'Rate Free Item Quantity per (relative weight)';
    }
    field(4000; "Rule Setup ID"; Guid)
    {
      Caption = 'Rule Setup ID';
    }
    field(4090; "Max. Deal per Rule List"; Boolean)
    {
      Caption = 'Max. Deal per Rule List';
    }
    field(4009; "Rule Setup No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(7000; "Source Header ID"; Guid)
    {
      Caption = 'Source Header ID';
    }
    field(7001; "Source Line ID"; Guid)
    {
      Caption = 'Source Line ID';
    }
    field(7002; "Item Ledger Entry ID"; Guid)
    {
      Caption = 'Item Ledger Entry ID';
    }
    field(7003; "MixMatch Doc. Line ID"; Guid)
    {
      Caption = 'MixMatch Doc. Line ID';
    }
    field(7004; "Condition Doc. Line ID"; Guid)
    {
      Caption = 'Condition Doc. Line ID';
    }
    field(7100; "Ignore Buffer Price"; Boolean)
    {
      Caption = 'Ignore Buffer Price';
    }
    field(7101; "Is Line Rule Max. Exceeded"; Boolean)
    {
      Caption = 'Is Line Rule Maximum Exceeded';
    }
    field(7102; "Is Line Recalculate"; Boolean)
    {
      Caption = 'Is Line Recalculate';
    }
    field(7103; "Is Rate Setup Invalid"; Boolean)
    {
      Caption = 'Is Rate Setup Invalid';
    }
    field(7104; "Is Rate Combine Item"; Boolean)
    {
      Caption = 'Is Rate Combine Item';
    }
    // field(8100; "Attached Line Type (DIT)"; Enum Module100FDW)
    // {
    //   Caption = 'Attached Line Type (DIT)';
    // }
    field(8101; "Consumption UOM Code"; Code[10])
    {
      Caption = 'Consumption UOM Code';
    }
    field(8180; "Item Dimension 1 Code"; Code[1024])
    {
      Caption = 'Item Dimension 1 Code';
    }
    field(8181; "Item Dimension 2 Code"; Code[1024])
    {
      Caption = 'Item Dimension 2 Code';
    }
    field(8182; "Item Dimension 3 Code"; Code[1024])
    {
      Caption = 'Item Dimension 3 Code';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(SK_RecSourceType; "Source Type", "Source Subtype", "Source ID", "Source Ref. No.", "Source Batch Name")
    {
    }
    // key(SK_SourceIdType; "Source ID", "Source Relation Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.")
    // {
    // }
     key(SK_SourceIdType; "Source ID", "Source Relation Type", "Source Subtype", "Source Batch Name","Source Ref. No.")
    {
    }
    key(SK_PositionLevel; "Document Type", "Document No.", "Position Level", "Document Line No.", Type, "No.")
    {
    }
    key(SK_PositionLevel2; "Source Type", "Source Subtype", "Source ID", "Position Level", "Source Ref. No.", Type, "No.")
    {
    }
    key(SK_PostionLevelLastFree; "Source Type", "Source Subtype", "Source ID", "Is Line Free", "Position Level")
    {
    }
  }
  var 
  //Currency: Record Currency;
  // GenBusinessPostingGroup: Record "Gen. Business Posting Group";
  // GenProductPostingGroup: Record "Gen. Product Posting Group";
  // GLAccount: Record "G/L Account";
  // Item: Record Item;
  // ItemCharge: Record "Item Charge";
  // VATPostingSetup: Record "VAT Posting Setup";
  ConditionSetup105FDW: Record ConditionSetup105FDW;
  // DimensionManagement: Codeunit Microsoft.Finance.Dimension.DimensionManagement;
  // IntlDimensionHook105FDW: Codeunit IntlDimensionHook105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // IntlInventoryHook105FDW: Codeunit IntlInventoryHook105FDW;
  // IntlPurchaseHook105FDW: Codeunit IntlPurchaseHook105FDW;
  // IntlSalesHook105FDW: Codeunit IntlSalesHook105FDW;
  // UnitOfMeasureManagement: Codeunit Microsoft.Foundation.UOM."Unit of Measure Management";
  // FeatureControlMgmt105FDW: Codeunit FeatureControlMgmt105FDW;
  DimensionUpdateSuspended: Boolean;
}