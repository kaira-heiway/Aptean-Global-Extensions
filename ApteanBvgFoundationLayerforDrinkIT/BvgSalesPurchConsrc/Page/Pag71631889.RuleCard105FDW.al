page 71631889 RuleCard105FDW
{
  Caption = 'Sales and Purchase Condition Rule Card';
  SourceTable = RuleSetup105FDW;

  layout
  {
    area(Content)
    {
      group(GeneralGroup)
      {
        Caption = 'General';

        field("Rule No."; Rec."Rule No.")
        {
        }
        field("Calculation Code"; Rec."Calculation Code")
        {
        }
        field(Description; Rec.Description)
        {
        }
        field(Translation; Rec.Translation)
        {
        }
        field("Direction of Movement"; Rec."Direction of Movement")
        {
        }
        // field("Indirect Sales"; Rec."Indirect Sales")
        // {
        // }
        field("Calc. On Special Price Type"; Rec."Calc. On Special Price Type")
        {
        }
        group(OtherGroupExtra)
        {
          group(OtherGroupExtraTAX)
          {
            field("Based Calculate On TAX"; Rec."Based Calculate On TAX Type")
            {
            }
          }
          group(OtherGroupExtraEGM)
          {
            field("Based Calculate On EGM"; Rec."Based Calculate On EGM Type")
            {
            }
          }
          field("Calculation on VAT Lines"; Rec."Calculation on VAT Lines")
          {
          }
        }
        field("Position Level"; Rec."Position Level")
        {
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
        field(Status; Rec.Status)
        {
        }
        field("Include Suggest.History Jnl."; Rec."Include Suggest.History Jnl.")
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
        field("No. of InEx Groups"; Rec."No. of InEx Groups")
        {
        }
      }
      group(SourceGroup)
      {
        Caption = 'Customer/Vendor (Source)';

        field("Source Type"; Rec."Source Type")
        {
        }
        field("Source No."; Rec."Source No.")
        {
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
        field("No. of InEx Rules (Source)"; Rec."No. of InEx Rules (Source)")
        {
        }
        group(SourceGroupShipping)
        {
          Caption = 'Shipping';

          field("Based Shipment Method Type"; Rec."Based Shipment Method Type")
          {
          }
          field("Based Shipment Method Code"; Rec."Based Shipment Method Code")
          {
          }
          field("Based Shipto-Address Code"; Rec."Based Shipto-Address Code")
          {
          }
          field("No. of InEx Rules (ShipAddr)"; Rec."No. of InEx Rules (ShipAddr)")
          {
          }
        }
        group(SourceGroupPayment)
        {
          Caption = 'Payments';

          field("Payment Method Code"; Rec."Payment Method Code")
          {
          }
          field("Payment Terms Code"; Rec."Payment Terms Code")
          {
          }
          field("Based Payment Method Type"; Rec."Based Payment Method Type")
          {
          }
          field("Based Payment Method Code"; Rec."Based Payment Method Code")
          {
          }
        }
        group(SourceGroupPostingDetail)
        {
          Caption = 'Posting Details';

          field("Source Posting Group"; Rec."Source Posting Group")
          {
          }
        }
        group(SourceGroupMaxRule)
        {
          Caption = 'Others';

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
        }
      }
      group(ItemGroup)
      {
        Caption = 'Item';

        field("Item Type"; Rec."Item Type")
        {
        }
        field("Item No."; Rec."Item No.")
        {
        }
        field("No. of InEx Rules (Item)"; Rec."No. of InEx Rules (Item)")
        {
        }
        field("Based Item Type"; Rec."Based Item Type")
        {
        }
        field("Based Item No."; Rec."Based Item No.")
        {
        }
        group(ItemGroupCategory)
        {
          field("Based Item Category Type"; Rec."Based Item Category Type")
          {
          }
          field("Based Item Category Code"; Rec."Based Item Category Code")
          {
          }
          field("Based Item Category Policy"; Rec."Based Item Categ. Policy Type")
          {
          }
        }
        group(ItemGroupConsumptionUom)
        {
          field("Based Consumption UOM Type"; Rec."Based Consumption UOM Type")
          {
          }
          field("Based Consumption UOM Code"; Rec."Based Consumption UOM Code")
          {
          }
        }
      }
      group(FreeGroup)
      {
        Caption = 'Free Item';
        Visible = false;
      }
      group(OtherGroup)
      {
        Caption = 'Others';

        group(OtherGroupShipping)
        {
          Caption = 'Shipping';

          field("Location Code"; Rec."Location Code")
          {
          }
          field("Based Location Type"; Rec."Based Location Type")
          {
          }
          field("Based Location Code"; Rec."Based Location Code")
          {
          }
        }
        group(OtherGroupReason)
        {
          Caption = 'Reasons';

          field("Reason Code"; Rec."Reason Code")
          {
          }
          field("Based Reason Type"; Rec."Based Reason Type")
          {
          }
          field("Based Reason Code"; Rec."Based Reason Code")
          {
          }
        }
        group(OtherGroupMaxDeal)
        {
          Caption = 'Max. Deal';

          field("Maximum Quantity Deal Member"; Rec."Maximum Quantity Deal Member")
          {
          }
          field("Maximum Quantity Deal"; Rec."Maximum Quantity Deal")
          {
          }
          field("Max. Deal per Rate List"; Rec."Max. Deal per Rate List")
          {
          }
        }
      }
      group(ContractManagement)
      {
        Caption = 'Contract Management';
        Visible = true;

        field("Loan No."; Rec."Loan No.")
        {
        }
        field("Contract No."; Rec."Contract No.")
        {
        }
      }
      part(RateLines; RateLinesSubform105FDW)
      {
        Caption = 'Rates';
        ObsoleteState = Pending;
        ObsoleteTag = '26.0';
        ObsoleteReason = 'This Part page is Obsoleted, will be replaced with RateLinesSubform';
        Visible = true;
      }
      part(NewRateLines; RateLinesSubform105FDW)
      {
        Caption = 'Rates';
        Visible = true;
      }
    }
  }
  actions
  {
    area(Processing)
    {
      group(Functions)
      {
        Caption = 'Functions';

        action(CopyCalcTranslation)
        {
          Caption = 'Copy Calculation Translation';
        }
        group(RuleRateInstances)
        {
          Caption = 'Rule & Rate Instances';

          group(PostedRuleRateInstances)
          {
            Caption = 'Posted Instances';

            action(UpdatePostedRuleRateInstance)
            {
              Caption = 'Update No. of Posted Instances';
              ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
              ObsoleteState = Pending;
              ObsoleteTag = '24.0';
              Visible = false;
            }
            action(ResetPostedRuleRateInstance)
            {
              Caption = 'Reset No. of Posted Instances';
              ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
              ObsoleteState = Pending;
              ObsoleteTag = '24.0';
              Visible = false;
            }
          }
          group(OrderedRuleRateInstances)
          {
            Caption = 'Ordered Instances';
            ObsoleteState = Pending;
            ObsoleteTag = '26.0';
            ObsoleteReason = 'This field or control will be removed. The old functionality that it is updating the No. of Ordered Rule Instances was discontinued';
            Visible = false;

            action(UpdateOrderedRuleRateInstance)
            {
              Caption = 'Update No. of Ordered Instances';
              ObsoleteState = Pending;
              ObsoleteTag = '26.0';
              ObsoleteReason = 'This field or control will be removed. The old functionality that it is updating the No. of Ordered Rule Instances was discontinued';
              Visible = false;
            }
            action(ResetOrderedRuleRateInstance)
            {
              Caption = 'Reset No. of Ordered Instances';
              ObsoleteState = Pending;
              ObsoleteTag = '26.0';
              ObsoleteReason = 'This field or control will be removed. The old functionality that it is Resetting the No. of Ordered Rule Instances was discontinued';
              Visible = false;
            }
          }
        }
      }
    }
    area(Navigation)
    {
      group(HistoryGroupAction)
      {
        Caption = 'History';

        action(LedgerEntryAction)
        {
          Caption = 'Ledger Entries';
        }
        action(LedgerEntryMaxAppliedAction)
        {
          Caption = 'Ledger Entries (Applied Invoices)';
          ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = false;
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
      action(CalculationAction)
      {
        Caption = 'Calculation Codes';
      }
      action(RateAction)
      {
        Caption = 'Rate Values';
      }
      action(ClassificationsAction)
      {
        Caption = 'Classification Codes';
      }
      action(GroupsAction)
      {
        Caption = 'Group Codes';
      }
      action(InExGroupAction)
      {
        Caption = 'Include-Exclude Rules';
      }
      action(TranslationAction)
      {
        Caption = 'T&ranslation';
      }
    }
  }
  var 
//   IntlGeneralSHook105FDW: Codeunit IntlGeneralSHook105FDW;
//   FeatureControlMgmt105FDW: Codeunit FeatureControlMgmt105FDW;
  BaseConsumptionUomCodeControlEditable: Boolean;
  BaseConsumptionUomCodeControlMandatory: Boolean;
  BaseItemCategoryCodeControlEditable: Boolean;
  BaseItemCategoryCodeControlMandatory: Boolean;
  BaseItemCategoryPolicyControlEditable: Boolean;
  BaseItemNoControlEditable: Boolean;
  BaseItemTypeControlEditable: Boolean;
  BaseLocationCodeControlEditable: Boolean;
  BaseLocationCodeControlMandatory: Boolean;
  BasePayMethodCodeControlEditable: Boolean;
  BasePayMethodCodeControlMandatory: Boolean;
  BaseReasonCodeControlEditable: Boolean;
  BaseReasonCodeControlMandatory: Boolean;
  BaseShipMethodCodeControlEditable: Boolean;
  BaseShipMethodCodeControlMandatory: Boolean;
  BaseShipOrderAddrControlEditable: Boolean;
  BaseSourceNoControlEditable: Boolean;
  ContractNoControlEditable: Boolean;
  DynamicEditable: Boolean;
  FreeMaxDealPerRateListControlEditable: Boolean;
  FreeMaxQtyDealControlEditable: Boolean;
  InstalledVisibleASM: Boolean;
  InstalledVisibleCMG: Boolean;
  ItemNoControlEditable: Boolean;
  LoanNoControlEditable: Boolean;
  PostingGroupControlEditable: Boolean;
  ReasonCodeControlMandatory: Boolean;
  SourceNoControlEditable: Boolean;
  IsNewRatelinesEnabled: Boolean;
}