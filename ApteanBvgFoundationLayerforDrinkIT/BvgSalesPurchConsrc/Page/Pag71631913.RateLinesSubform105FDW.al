page 71631913 RateLinesSubform105FDW
{
  Caption = 'Sales and Purchase Condition Rates';
  SourceTable = RateLines105FDW;
  PageType = ListPart;

  layout
  {
    area(Content)
    {
      repeater(RepeaterGroup)
      {
        field("Starting Date"; Rec."Starting Date")
        {
        }
        field("Ending Date"; Rec."Ending Date")
        {
        }
        field("Unit of Measure Code"; Rec.UnitofMeasureCodeQty)
        {
        }
        field("No. of Combi Minimum Rates"; Rec."No. of Combi Minimum Rates")
        {
          Visible = true;
        }
        field("No. of Item Mandatory Rates"; Rec."No. of Combi Minimum Rates")
        {
          Caption = 'No. of Combi Item Mandatory Rates';
          Visible = true;
        }
        field("Minimum Quantity"; Rec."Minimum Quantity")
        {
        }
        field("Maximum Quantity"; Rec."Maximum Quantity")
        {
        }
        field("Minimum Amount"; Rec."Minimum Amount")
        {
        }
        field("Maximum Amount"; Rec."Maximum Amount")
        {
        }
        field("Rate Value"; Rec."Rate Value")
        {
        }
        field(Direction; DirectionText)
        {
          Caption = 'Direction';
          Visible = false;
        }
        field("Item No."; Rec."Item No.")
        {
        }
        field("Unit of Measure Code (Price)"; Rec."Unit of Measure Code (Price)")
        {
        }
        field("Currency Code"; Rec."Currency Code")
        {
        }
        field("Price Includes VAT"; Rec.PricesIncludingVAT)
        {
        }
        field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
        {
        }
        field("Allow Line Disc."; Rec."Allow Line Disc.")
        {
        }
        field("Unit Measure Method Type"; Rec."Unit Measure Method Type")
        {
        }
        field("Max. No. of Rate Instances"; Rec."Max. No. of Rate Instances")
        {
          ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = true;
        }
        field("No. of Pstd. Rate Instances"; Rec."No. of Pstd. Rate Instances")
        {
          ObsoleteReason = 'This field or control will be removed. The old functional that it was integrating to was discontinued.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = true;
        }
        field("Rounding Method Type (Quantity)"; Rec."Rounding Method Type")
        {
        }
        field("Recurring Mode"; Rec."Recurring Mode")
        {
        }
        field("Recurring Quantity"; Rec."Recurring Quantity")
        {
        }
        field("Free Item Type"; Rec."Free Item Type")
        {
        }
        field("Free Item No."; Rec."Free Item No.")
        {
        }
        field("No. of Free MixMatch Rates"; Rec."No. of Free MixMatch Rates")
        {
          Visible = true;
        }
        field("Free Quantity"; Rec."Free Quantity")
        {
        }
        field("Maximum Free Quantity"; Rec."Maximum Free Quantity")
        {
        }
        field("Free Unit of Measure Code"; Rec."Free Unit of Measure Code")
        {
        }
        field("Maximum Quantity Deal Member"; Rec."Maximum Quantity Deal Member")
        {
        }
        field("Maximum Quantity Deal"; Rec."Maximum Quantity Deal")
        {
        }
        field("Max. Deal per Mix Match List"; ObsoleteRemovedVisible)
        {
          Caption = '[Obsolete] Max. Deal per Mix Match List';
          ObsoleteReason = 'This field or control will be replaced by ''Max. Deal per Rate List''.';
          ObsoleteState = Pending;
          ObsoleteTag = '24.0';
          Visible = true;
        }
        field("Max. Deal per Rate List"; Rec."Max. Deal per Rate List")
        {
        }
        field("Line No."; Rec."Line No.")
        {
          Visible = false;
        }
      }
    }
  }
  actions
  {
    area(Processing)
    {
      action(GetInsertRate)
      {
        Caption = 'Get Rate Line(s) From';
      }
      action(EditCombiMinimumRate)
      {
        Caption = 'Edit Combined Minimum Rates';
      }
      action(EditCombiMinimumMixMatchRate)
      {
        Caption = 'Edit Mix & Match Item Mandatory Rates';
        Visible = true;
      }
      action(EditFreeMixMatchRate)
      {
        Caption = 'Edit Free Mix & Match Item Rates';
      }
    }
  }
  var FreeItemControlEditable: Boolean;
  FreeItemControlMandatory: Boolean;
  FreeMaxDealPerRateListControlEditable: Boolean;
  FreeMaxQtyControlEditable: Boolean;
  FreeMaxQtyDealControlEditable: Boolean;
  FreeQtyControlEditable: Boolean;
  FreeQtyControlMandatory: Boolean;
  FreeUnitMeasureControlEditable: Boolean;
  FreeUnitMeasureControlMandatory: Boolean;
  ItemNoControlEditable: Boolean;
  MinimumAmountControlMandatory: Boolean;
  MinimumMaxQtyControlEditable: Boolean;
  MinimumQuantityControlMandatory: Boolean;
  ObsoleteRemovedVisible: Boolean;
  PriceUnitMeasureCodeControlEditable: Boolean;
  PriceUnitMeasureCodeControlMandatory: Boolean;
  RateCombiMinimumControlEnabled: Boolean;
  RateFreeMixMatchControlEnabled: Boolean;
  RateValueControlMandatory: Boolean;
  RecurringControlEditable: Boolean;
  RecurringQuantityControlMandatory: Boolean;
  UnitMeasureCodeControlEditable: Boolean;
  UnitMeasureCodeControlMandatory: Boolean;
  DirectionText: Text;
//   DirectionDiscountLbl: Label;
//   DirectionChargeLbl: Label;
}