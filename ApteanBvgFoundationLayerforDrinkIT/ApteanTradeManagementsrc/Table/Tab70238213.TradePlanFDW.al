table 70238213 "Trade Plan FDW"
{
  Caption = 'Trade Plan';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(3; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(4; "Rate Type"; Enum TradePlanRateTypeFDW)
    {
      Caption = 'Rate Type';
    }
    field(5; "Volume Type"; Enum TradePlanVolumeTypeFDW)
    {
      Caption = 'Volume Type';
    }
    field(6; "Trade Rate Setup"; Enum TradePlanRateSetupFDW)
    {
      Caption = 'Trade Rate Setup';
    }
    field(7; "Starting Date"; Date)
    {
      Caption = 'Starting Date';
    }
    field(8; "Ending Date"; Date)
    {
      Caption = 'Ending Date';
    }
    field(9; "Price Rule"; Enum TradePlanPriceRuleFDW)
    {
      Caption = 'Price Rule';
    }
    field(10; "Calculation Base"; Enum TradePlanCalculationBaseFDW)
    {
      Caption = 'Calculation Base';
    }
    field(11; "Calculation Level"; Integer)
    {
      Caption = 'Calculation Level';
    }
    field(12; "Accrual Type"; Enum TradePlanAccrualTypeFDW)
    {
      Caption = 'Accrual Type';
    }
    field(13; "Item Charge No."; Code[20])
    {
      Caption = 'Item Charge No.';
    }
    field(14; "Allocation Method"; Enum TradePlanAllocationMethodFDW)
    {
      Caption = 'Allocation Method';
    }
    field(15; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(16; Status; Enum TradePlanStatusFDW)
    {
      Caption = 'Status';
    }
    field(17; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(18; "No. of Exclusions"; Integer)
    {
      Caption = 'No. of Exclusions';
    }
    field(19; "Use in Sales"; Boolean)
    {
      Caption = 'Use in Sales';
    }
    field(20; "Use in Purchase"; Boolean)
    {
      Caption = 'Use in Purchase';
    }
    field(21; "Use in Transfer"; Boolean)
    {
      Caption = 'Use in Transfer';
    }
    field(22; "Applies-to"; Enum TradePlanAppliesToFDW)
    {
      Caption = 'Applies-to';
    }
    field(23; "Trade Partner Source"; Enum TradePartnerSource34FDW)
    {
      Caption = 'Trade Partner Source';
    }
    field(24; "Trade Partner Group Code"; Code[20])
    {
      Caption = 'Trade Partner Group Code';
    }
    field(25; "Include Line Discount"; Boolean)
    {
      Caption = 'Include Line Discount';
    }
    field(26; "Use in Sales Return"; Boolean)
    {
      Caption = 'Use in Sales Return';
    }
    field(27; "Use in Purchase Return"; Boolean)
    {
      Caption = 'Use in Purchase Return';
    }
    field(28; "Use In Transport Order"; Boolean)
    {
      Caption = 'Use In Transport Order';
    }
    field(30; "Shipping Type"; Text[30])
    {
      Caption = 'Packaging Type';
      ObsoleteReason = 'Field will be removed and will be available on Trade plan rates.';
      ObsoleteState = Pending;
      ObsoleteTag = '25.0';
    }
    field(31; "Shipping Code"; Code[20])
    {
      Caption = 'Packaging Code';
      ObsoleteReason = 'Field will be removed and will be available on Trade plan rates.';
      ObsoleteState = Pending;
      ObsoleteTag = '25.0';
    }
    field(35; "Trade Plan Type"; Enum "Trade Plan Freight Type34FDW")
    {
      Caption = 'Trade Plan Type';
    }
    field(36; "Manual Freight"; Boolean)
    {
      Caption = 'Manual Freight';
    }
    field(37; "Expense Item No."; Code[20])
    {
      Caption = 'Expense Item No.';
    }
    field(38; "Non Reversible"; Boolean)
    {
      Caption = 'Non-Reversible';
    }
    field(40; Invalid; Boolean)
    {
      Caption = 'Invalid';
    }
    field(41; "Process After ILE No."; Integer)
    {
      Caption = 'Process after Item Ledger Entry No.';
    }
    field(42; "Last Calculated ILE No."; Integer)
    {
      Caption = 'Last Calculated Item Ledger Entry No.';
    }
    field(43; "Work Center"; Code[20])
    {
      Caption = 'Work Center';
    }
    field(44; "G/L Account No."; Code[20])
    {
      Caption = 'G/L Account No.';
    }
    field(45; "Balance Account No."; Code[20])
    {
      Caption = 'Balance Account No.';
    }
    field(46; "G/L Account No. (Actual)"; Code[20])
    {
      Caption = 'G/L Account No. (Actual)';
    }
  }
  keys
  {
    key(PK; "No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; "No.", Description, Status, "Applies-to", "Price Rule")
    {
    }
  }
  var TradeManagementSetup: Record "Trade Management Setup FDW";
  NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  //AccrualTypeValueErr: Label;
  // ChangeFieldWithRatesErr: Label[120];
  // CurrValueNotAllowedForAppliesToValueErr: Label[100];
  // EditingNotAllowedErr: Label;
  // EnumFieldValueErr: Label;
  // ManualFreightCannotBeSetErr: Label;
  // PriceRuleUseInPurchaseErr: Label;
  // PriceRuleUseInSalesErr: Label;
  // TradePlanRatesExistsErr: Label;
}