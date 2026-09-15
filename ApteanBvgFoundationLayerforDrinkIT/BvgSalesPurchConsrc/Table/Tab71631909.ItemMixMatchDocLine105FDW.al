table 71631909 ItemMixMatchDocLine105FDW
{
  Caption = 'Condition Promotion Item Mix & Match';

  fields
  {
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
    field(7; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(8; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(9; "Entry Line No."; Integer)
    {
      Caption = 'Entry Line No.';
    }
    field(26; "Source Condition No. (Filter)"; Code[20])
    {
      Caption = 'Source Condition No. (Filter)';
    }
    field(28; "Language Code"; Code[10])
    {
      Caption = 'Language Code';
    }
    field(102; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(103; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(104; "Description 2"; Text[50])
    {
      Caption = 'Description 2';
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
    field(204; "Remaining Quantity"; Decimal)
    {
      Caption = 'Remaining Quantity';
    }
    field(210; "Qty. to Handle"; Decimal)
    {
      Caption = 'Qty. to Handle';
    }
    field(211; "Qty. to Handle (Base)"; Decimal)
    {
      Caption = 'Qty. to Handle (Base)';
    }
    field(212; "Qty. Handled (Member)"; Decimal)
    {
      Caption = 'Qty. Handled (Member)';
    }
    field(213; "Qty. Handled"; Decimal)
    {
      Caption = 'Qty. Handled';
    }
    field(220; "Free Quantity"; Decimal)
    {
      Caption = 'Free Quantity';
    }
    field(221; "Free Quantity (Base)"; Decimal)
    {
      Caption = 'Free Quantity (Base)';
    }
    field(302; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
    field(303; "Is Line Per Document"; Boolean)
    {
      Caption = 'Is Line Per Document';
    }
    field(304; "Is Line Rule Max. Exceeded"; Boolean)
    {
      Caption = 'Is Line Rule Maximum Exceeded';
    }
    field(480; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(800; "Source Buffer Entry No."; Integer)
    {
      Caption = 'Source Buffer Entry No.';
    }
    field(900; "Condition Source Line ID"; Guid)
    {
      Caption = 'Condition Source Line ID';
    }
    field(901; "Condition Doc. Line ID"; Guid)
    {
      Caption = 'Condition Document Line ID';
    }
    field(1000; "Applies-to Source Header ID"; Guid)
    {
      Caption = 'Applies-to Header ID';
    }
    field(1001; "Applies-to Source Line ID"; Guid)
    {
      Caption = 'Applies-to Source Line ID';
    }
    field(1004; "Applies-to Source Ref. No."; Integer)
    {
      Caption = 'Applies-to Source Ref. No.';
    }
    field(1010; "Applies-to Item No."; Code[20])
    {
      Caption = 'Applies-to Item No.';
    }
    field(1011; "Applies-to Item Description"; Text[100])
    {
      Caption = 'Applies-to Item Description';
    }
    field(1012; "Applies-to Item Description 2"; Text[50])
    {
      Caption = 'Applies-to Item Description 2';
    }
    field(1013; "Applies-to Quantity"; Decimal)
    {
      Caption = 'Applies-to Quantity';
    }
    field(1014; "Applies-to Unit Measure Code"; Code[10])
    {
      Caption = 'Applies-to Unit Measure Code';
    }
    field(1015; "Applies-to Qty. perUnitMeasure"; Decimal)
    {
      Caption = 'Applies-to Qty. per Unit of Measure';
    }
    field(1016; "Applies-to Quantity (Base)"; Decimal)
    {
      Caption = 'Applies-to Quantity (Base)';
    }
    field(1099; "No. of Applies-to Lines"; Integer)
    {
      Caption = 'No. of Applies-to Lines';
    }
    field(2000; "Calculation Setup ID"; Guid)
    {
      Caption = 'Calculation Setup ID';
    }
    field(2001; "Calculation Code"; Code[20])
    {
      Caption = 'Calculation Code';
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
    field(3005; "Rate Quantity (Uom)"; Decimal)
    {
      Caption = 'Quantity (Uom Minimum)';
    }
    field(3006; "Maximum Free Quantity"; Decimal)
    {
      Caption = 'Maximum Free Quantity';
    }
    field(3025; "Maximum Quantity Deal Member"; Decimal)
    {
      Caption = 'Maximum Quantity Deal (per Source Member)';
    }
    field(3026; "Maximum Quantity Deal"; Decimal)
    {
      Caption = 'Maximum Quantity Deal';
    }
    field(3027; "Max. Deal per Mix Match List"; Boolean)
    {
      Caption = 'Max. Deal per Mix & Match List';
      ObsoleteReason = 'This field will be replaced by ''Max. Deal per Rate List'' field.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(3028; "Max. Deal per Rate List"; Boolean)
    {
      Caption = 'Max. Deal per Rate List';
    }
    field(3500; "Rate MixMatch Setup ID"; Guid)
    {
      Caption = 'Rate Mix & Match ID';
    }
    field(3501; "Rate MixMatch Line No."; Integer)
    {
      Caption = 'Free Item Mix & Match Line No.';
    }
    field(3502; "Rate Qty. per Unit of Item"; Decimal)
    {
      Caption = 'Rate Free Item Quantity per (relative weight)';
    }
    field(4000; "Rule Setup ID"; Guid)
    {
      Caption = 'Rule Setup ID';
    }
    field(4009; "Rule Setup No."; Integer)
    {
      Caption = 'Rule Setup No.';
    }
    field(4002; "Rule Description"; Text[100])
    {
      Caption = 'Rule Description';
    }
    field(4020; "Rule Modified Date Time"; DateTime)
    {
      Caption = 'Rule Modified Date Time';
    }
  }
  keys
  {
    key(PK_SourceIdType; "Source Type", "Source Subtype", "Source ID", "Source Ref. No.", "Source Buffer Entry No.", "Rule Setup No.", "Entry Line No.")
    {
    }
    key(SK_MainCalcSortSetup; "Source Buffer Entry No.", "Entry Line No.", "Position Level", "Calculation Code", "Item No.")
    {
    }
    key(SK_ConditionDocumentId; "Condition Doc. Line ID")
    {
    }
    key(SK_ConditionSourceId; "Condition Source Line ID")
    {
    }
    key(SK_AppliesSourceId; "Applies-to Source Line ID")
    {
    }
  }
  // var IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // IntlInventoryHook105FDW: Codeunit IntlInventoryHook105FDW;
  // IntlPurchaseHook105FDW: Codeunit IntlPurchaseHook105FDW;
  // IntlSalesHook105FDW: Codeunit IntlSalesHook105FDW;
  // MustBeLowerMaxErr: Label;
  // MustBeNegativeErr: Label;
  // MustBePositiveErr: Label;
}