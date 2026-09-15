page 71631901 RulesList105FDW
{
  Caption = 'Sales and Purchase Condition Rules List';
  SourceTable = RuleSetup105FDW;

  layout
  {
    area(Content)
    {
      repeater(Group)
      {
        field("Rule No."; Rec."Rule No.")
        {
        }
        field("Source Type"; Rec."Source Type")
        {
        }
        field("Source No."; Rec."Source No.")
        {
        }
        field("Item Type"; Rec."Item Type")
        {
        }
        field("Item No."; Rec."Item No.")
        {
        }
        field("Calculation Code"; Rec."Calculation Code")
        {
        }
        // field("No. of Rates"; Rec."No. of Rates")
        // {
        //   Visible = true;
        // }
        field("Number of Rates"; Rec."Number of Rates")
        {
          Visible = true;
        }
        field(StatusControl; Rec.Status)
        {
        }
        field(Description; Rec.Description)
        {
        }
        field(Translation; Rec.Translation)
        {
          Visible = false;
        }
        field("Based Source Type"; Rec."Based Source Type")
        {
        }
        field("Based Source No."; Rec."Based Source No.")
        {
        }
        field("Based On Condition Cust/Vend"; Rec."Based On Condition Cust/Vend")
        {
        }
        field("Based Item Type"; Rec."Based Item Type")
        {
        }
        field("Based Item No."; Rec."Based Item No.")
        {
        }
        field("Location Code"; Rec."Location Code")
        {
          Visible = false;
        }
        field("Payment Method Code"; Rec."Payment Method Code")
        {
          Visible = false;
        }
        field("Payment Terms Code"; Rec."Payment Terms Code")
        {
          Visible = false;
        }
        field("Source Posting Group"; Rec."Source Posting Group")
        {
          Visible = false;
        }
        field("Reason Code"; Rec."Reason Code")
        {
        }
        field("Direction of Movement"; Rec."Direction of Movement")
        {
        }
        field("Based Location Type"; Rec."Based Location Type")
        {
          Visible = false;
        }
        field("Based Location Code"; Rec."Based Location Code")
        {
          Visible = false;
        }
        field("Based Reason Type"; Rec."Based Reason Type")
        {
        }
        field("Based Reason Code"; Rec."Based Reason Code")
        {
        }
        field("Based Item Category Type"; Rec."Based Item Category Type")
        {
          Visible = false;
        }
        field("Based Item Category Code"; Rec."Based Item Category Code")
        {
          Visible = false;
        }
        field("Based Item Category Policy"; Rec."Based Item Categ. Policy Type")
        {
          Visible = false;
        }
        field("Based Item Consumption UOM Type"; Rec."Based Consumption UOM Type")
        {
          Visible = false;
        }
        field("Based Consumption UOM Code"; Rec."Based Consumption UOM Code")
        {
          Visible = false;
        }
        field("Based Payment Method Type"; Rec."Based Payment Method Type")
        {
        }
        field("Based Payment Method Code"; Rec."Based Payment Method Code")
        {
        }
        field("Based Shipment Method Type"; Rec."Based Shipment Method Type")
        {
        }
        field("Based Shipment Method Code"; Rec."Based Shipment Method Code")
        {
        }
        field("Based Shipto-Address Code"; Rec."Based Shipto-Address Code")
        {
          Visible = false;
        }
        field("Based Calculate On TAX"; Rec."Based Calculate On TAX Type")
        {
        }
        field("Based Calculate On EGM"; Rec."Based Calculate On EGM Type")
        {
        }
        field("Position Level"; Rec."Position Level")
        {
        }
        // field("Indirect Sales"; Rec."Indirect Sales")
        // {
        //   Visible = false;
        // }
        field("Calc. On Special Price Type"; Rec."Calc. On Special Price Type")
        {
          Visible = false;
        }
        field("Starting Date"; Rec."Starting Date")
        {
        }
        field("Ending Date"; Rec."Ending Date")
        {
        }
        field("Accrual Posted to G/L"; Rec."Accrual Posted to G/L")
        {
          Caption = 'Accrual Posted to G/L';
        }
        field("Post Accrual to G/L"; Rec."Post Accrual to G/L")
        {
          Visible = false;
        }
        field("No. of InEx Groups"; Rec."No. of InEx Groups")
        {
        }
        field("Calculation Method Type"; Rec."Calculation Method Type")
        {
          Visible = false;
        }
        field("Calculation Period Type"; Rec."Calculation Period Type")
        {
          Visible = false;
        }
        field("Ignore Item Line Discount"; Rec."Ignore Item Line Discount")
        {
          Visible = false;
        }
        field("Calculation Type"; Rec."Calculation Type")
        {
          Visible = false;
        }
        field("Calculation Minimum Type"; Rec."Calculation Minimum Type")
        {
          Visible = false;
        }
        field("Calculation On Date";'')
        {
          Caption = 'Calculation On Date';
          ObsoleteReason = 'Redesign on needs - unused field';
          ObsoleteState = Pending;
          ObsoleteTag = '23.0';
          Visible = true;
        }
        field("Calc. On Application Policy"; Rec."Calc. On Application Policy")
        {
          Visible = false;
        }
        field("Price Calculation Method Type"; Rec."Price Calculation Method Type")
        {
          Visible = false;
        }
        field("Calculation on VAT Lines"; Rec."Calculation on VAT Lines")
        {
          Visible = false;
        }
        field("Per Document"; Rec."Per Document")
        {
          Visible = false;
        }
        // field("Rate Free Mix Match"; Rec."Rate Free Mix Match")
        // {
        //   Visible = false;
        // }
        field("Rate Lines Free Mix Match"; Rec."Rate Lines Free Mix Match")
        {
          Visible = false;
        }
        field("Calculation Indirect Sales"; Rec."Calculation Indirect Sales")
        {
          Visible = false;
        }
        field("Last Modified Date Time"; Rec."Last Modified Date Time")
        {
          Visible = false;
        }
        field("Max. No. of Rule Instance (Rule)"; Rec."Max. No of Rule Instance(Rule)")
        {
          ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = false;
        }
        field("Max. No. of Rule Instances"; Rec."Max. No. of Rule Instances")
        {
          ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = false;
        }
        field("No. of Ordered Rule Instances"; Rec."No. of Ordered Rule Instances")
        {
          ObsoleteReason = 'This field has been replaced with new field Ordered Rule Instances';
          ObsoleteState = Pending;
          ObsoleteTag = '26.0';
          Visible = false;
        }
        field("Ordered Rule Instances"; Rec."Ordered Rule Instances")
        {
        }
        field("No. of Pstd. Rule Instances"; Rec."No. of Pstd. Rule Instances")
        {
          ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = false;
        }
        field("Maximum Quantity Deal Member"; Rec."Maximum Quantity Deal Member")
        {
        }
        field("Maximum Quantity Deal"; Rec."Maximum Quantity Deal")
        {
        }
        field("Max. Deal per Rate List"; Rec."Max. Deal per Rate List")
        {
        }
        field("Loan No."; Rec."Loan No.")
        {
          Visible = false;
        }
        field("Contract No."; Rec."Contract No.")
        {
          Visible = false;
        }
        field("Include Suggest.History Jnl."; Rec."Include Suggest.History Jnl.")
        {
          Visible = false;
        }
      }
    }
    area(FactBoxes)
    {
      systempart(Control1900383207; Links)
      {
        Visible = false;
      }
      systempart(Control1905767507; Notes)
      {
        Visible = false;
      }
    }
  }
  actions
  {
    area(Processing)
    {
      action(ManualViewMode)
      {
        Caption = 'Edit List';
        Visible = true;
      }
      group(LinesGroupProcessing)
      {
        Caption = 'Lines';

        group(SortLinesGroupProcessing)
        {
          Caption = 'Sorting';

          action(SortCalculationPriorityAction)
          {
            Caption = 'Sort Rules by Application Policy';
          }
          action(SortRulePriorityAction)
          {
            Caption = 'Sort Rules by Lowest Priority';
          }
        }
        group(FilterLinesGroupProcessing)
        {
          Caption = 'Filtering';

          action(FilterRulesSalesAction)
          {
            Caption = 'Filter Sales Rule types';
          }
          action(FilterRulesPurchaseAction)
          {
            Caption = 'Filter Purchase Rule types';
          }
        }
      }
    }
    area(Navigation)
    {
      group(HistoryGroupNavigate)
      {
        Caption = 'History';

        action(LedgerEntryAction)
        {
          Caption = 'Ledger Entries';
        }
      }
      group(ClassifcationGroupNavigate)
      {
        Caption = 'Classifications';

        action(CustomerClassAction)
        {
          Caption = 'Customer';
        }
        action(VendorClassAction)
        {
          Caption = 'Vendor';
        }
        action(ItemClassAction)
        {
          Caption = 'Item';
        }
      }
      group(SourceGroupNavigate)
      {
        Caption = 'Groups';

        action(CustomerGroupAction)
        {
          Caption = 'Customer';
        }
        action(VendorGroupAction)
        {
          Caption = 'Vendor';
        }
        action(ItemGroupAction)
        {
          Caption = 'Item';
        }
        action(LocationGroupAction)
        {
          Caption = 'Location';
        }
        action(ReasonGroupAction)
        {
          Caption = 'Reason';
        }
        action(ItemCategoryGroupAction)
        {
          Caption = 'Item Category';
        }
        action(ConsmptionUomGroupAction)
        {
          Caption = 'Consumption Unit Measure';
        }
        action(ShipmentMethodGroupAction)
        {
          Caption = 'Shipment Method';
        }
        action(PaymentMethodGroupAction)
        {
          Caption = 'Payment Method';
        }
      }
      group(GeneralGroupNavigate)
      {
        Caption = 'Rule';

        action(AllCalculationsAction)
        {
          Caption = 'Calculation Codes';
        }
        action(AllRatesAction)
        {
          Caption = 'Rate Values';
        }
        action(AllClassificationsAction)
        {
          Caption = 'Classification Codes';
        }
        action(AllGroupsAction)
        {
          Caption = 'Group Codes';
        }
        action(AllInExGroupsAction)
        {
          Caption = 'Include-Exclude Rules';
        }
      }
    }
  }
  var 
  //IntlGeneralSHook105FDW: Codeunit IntlGeneralSHook105FDW;
  InstalledVisibleASM: Boolean;
  InstalledVisibleCMG: Boolean;
  RateLinesfeatureEnabled: Boolean;
  ObsoleteRemovedVisible: Boolean;
  PageEditButtonVisible: Boolean;
//   MarkedLinesPurchaseLbl: Label;
//   MarkedLinesSalesLbl: Label;
  LastFilters: Text;
  MarkedLinesText: Text;
  PageCaptionCustom: Text;
  PageCaptionDefault: Text;
}