page 71631854 SalesReturnEntry104FDW
{
  Caption = 'Return Entry';
  SourceTable = ReturnEntryLine104FDW;

  layout
  {
    area(Content)
    {
    //   usercontrol(SetPageFocus; "Not available")
    //   {
    //   }
      group(Options)
      {
        Caption = 'Options';

        group(Filters)
        {
          Caption = 'Filters';

          field(ItemNoFilterCtrl; ItemNoFilter)
          {
            Caption = 'No.';
          }
          field(ItemCategoryCodeFilterCtrl; ItemCategoryCodeFilter)
          {
            Caption = 'Item Category Code';
          }
          field(RecurringSalesCodeFilterCtrl; RecurringSalesCodeFilter)
          {
            Caption = 'Recurring Sales Code';
          }
          field(ReturnReasonCodeFilterCtrl; ReturnReasonCodeFilter)
          {
            Caption = 'Return Reason Code';
          }
          field(OnlyLinesWithQuantityCtrl; OnlyLinesWithQuantity)
          {
            Caption = 'Only Lines with Quantity';
          }
        }
        group(OptionColumn2)
        {
          group(Sorting)
          {
            Caption = 'Sorting';

            field(SortingMethodCtrl; SortingMethod)
            {
              Caption = 'Sorting Method';
            }
          }
          field(SearchAsYouTypeCtrl; SearchAsYouType)
          {
            Caption = 'Search As You Type';
          }
        }
      }
      group(QuickEntry)
      {
        Caption = 'Quick Entry';
        Visible = true;

        field(QuickEntryItemNoCtrl; QuickEntryItemNo)
        {
          Caption = '&Item No.';
        }
        field(QuickEntryVariantCode; QuickEntryVariantCode)
        {
          Caption = 'Variant Code';
          Visible = true;
        }
        field(QuickEntryReasonCode; QuickEntryReturnReasonCode)
        {
          Caption = 'Return Reason Code';
        }
        field(QuickEntryQuantity; QuickEntryQuantity)
        {
          Caption = 'Quantity';
        }
      }
      group(QuickEntryWithLookup)
      {
        Caption = 'Quick Entry';
        Visible = true;

        field(QuickEntryItemNoWithLookupCtrl; QuickEntryItemNo)
        {
          Caption = '&Item No.';
        }
        field(QuickEntryReasonCodeWithLookup; QuickEntryReturnReasonCode)
        {
          Caption = 'Return Reason Code';
        }
        field(QuickEntryQuantityWithLookup; QuickEntryQuantity)
        {
          Caption = 'Quantity';
        }
      }
      repeater(Lines)
      {
        // field(Type; Rec.Type)
        // {
        // }
        field("No."; Rec."No.")
        {
        }
        field(Description; Rec.Description)
        {
        }
        field(Quantity; Rec.Quantity)
        {
        }
        field("Is Empty Good"; Rec."Is Empty Good")
        {
        }
        field("Return Reason Code"; Rec."Return Reason Code")
        {
        }
        field("Reason Code 101FDW"; Rec."Reason Code")
        {
          Visible = false;
        }
        field("Location Code"; Rec."Location Code")
        {
          Visible = false;
        }
        field("Unit of Measure Code"; Rec."Unit of Measure Code")
        {
        }
        field("Variant Code"; Rec."Variant Code")
        {
          Visible = false;
        }
        field("Unit Price"; Rec."Unit Price")
        {
          Visible = false;
        }
        field("Line Discount %"; Rec."Line Discount %")
        {
          Visible = false;
        }
        field("Line Discount Amount"; Rec."Line Discount Amount")
        {
          Visible = false;
        }
        field("Line Amount"; Rec."Line Amount")
        {
          Visible = false;
        }
        field("Item Category Code"; Rec."Item Category Code")
        {
          Visible = false;
        }
        field("Standard Sales Code"; Rec."Standard Sales Code")
        {
          Visible = false;
        }
        field("Created on Date/Time"; Rec."Created on Date/Time")
        {
        }
      }
    }
    area(FactBoxes)
    {
    //   part(CustomerDetail; CustDetailsFactbox104FDW)
    //   {
    //     Caption = 'Customer Details';
    //   }
    //   part(EGMCustBal; CustomerBalFactbox104FDW)
    //   {
    //     Caption = 'Empty Goods Balance';
    //   }
    //   part(LoanCustBalFactbox104FDW; LoanCustBalFctbox101FDW)
    //   {
    //     Caption = 'Loan In Use Balance';
    //   }
    }
  }
  actions
  {
    area(Processing)
    {
      action(Apply)
      {
        Caption = 'Apply Changes';
      }
      action(GetRecurringSalesLines)
      {
        Caption = 'Get Recurring Sales Lines';
      }
      action(GetLoanInUseItems)
      {
        Caption = 'Get Loan In Use Items';
        Visible = true;
      }
    }
  }
  var Customer: Record Customer;
  SalesHeader: Record "Sales Header";
  ConfirmManagement: Codeunit System.Utilities."Confirm Management";
//   EGMLOGIntegration101FDW: Codeunit EGMLOGIntegration101FDW;
//   ItemVariantMgmt101FDW: Codeunit ItemVariantMgmt101FDW;
  IsGetLoanInUseItemsVisible: Boolean;
  ItemLookupVisible: Boolean;
  OnlyLinesWithQuantity: Boolean;
  SearchAsYouType: Boolean;
  LocationCode: Code[10];
  LocationReceiptCode: Code[10];
  QuickEntryReturnReasonCode: Code[10];
  ReasonCode: Code[10];
  CustomerNo: Code[20];
  SourceID: Code[20];
  QuickEntryQuantity: Decimal;
  QuickEntryVariantCode: Code[10];
  ShowVariantCode: Boolean;
  SortingMethod: Enum IntlReturnEntrySort104FDW;
  SourceSubType: Integer;
  SourceType: Integer;
//   ApplyChangesQst: Label;
//   ApplySortingMethodNotHandledErr: Label;
//   ChangesAppliedLbl: Label;
//   CloseWithoutApplyingQst: Label;
//   DeleteDocQst: Label;
//   PageCaptionLbl: Label;
  ItemCategoryCodeFilter: Text;
  ItemNoFilter: Text;
  RecurringSalesCodeFilter: Text;
  ReturnReasonCodeFilter: Text;
  StyleText: Text;
  QuickEntryItemNo: Code[20];
}