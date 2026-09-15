table 70238219 "Trade Management Setup FDW"
{
  Caption = 'Trade Management Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Trade Plan Nos."; Code[20])
    {
      Caption = 'Trade Plan Nos.';
    }
    field(3; "Default Calculation Base"; Enum TradePlanCalculationBaseFDW)
    {
      Caption = 'Default Calculation Base';
    }
    field(4; "Trade Partner Nos."; Code[20])
    {
      Caption = 'Trade Partner Nos.';
    }
    field(5; "Trade Statement Nos."; Code[20])
    {
      Caption = 'Trade Statement Nos.';
    }
    field(6; "Trade Cost Order Nos."; Code[20])
    {
      Caption = 'Trade Cost Order Nos.';
    }
    field(7; AutoAssignTradeCostsInSalesDoc; Enum AutoAssignDocTradeCostsFDW)
    {
      Caption = 'Auto-Assign Trade Costs in Sales Doc.';
    }
    field(8; AutoAssignTradeCostsInPurchDoc; Enum AutoAssignDocTradeCostsFDW)
    {
      Caption = 'Auto-Assign Trade Costs in Purchase Doc.';
    }
    field(9; AccrualPostingTemplate; Code[10])
    {
      Caption = 'Accrual Posting Template';
    }
    field(10; AccrualPostingBatch; Code[10])
    {
      Caption = 'Accrual Posting Batch';
    }
    field(20; "Trade Accr. Summary Report ID"; Integer)
    {
      Caption = 'Trade Accrual Summary Report ID';
    }
    field(21; "Trade Stmnt Summary Report ID"; Integer)
    {
      Caption = 'Trade Statement Summary Report ID';
    }
    field(22; "Trade Stmnt Detailed Report ID"; Integer)
    {
      Caption = 'Trade Statement Detailed Report ID';
    }
    field(23; "Check Purc. Inv. Amt Posting"; Boolean)
    {
      Caption = 'Check Purchase Invoice Amount On Posting';
      ObsoleteReason = 'Replaced by the standard field 11320 "Check Doc. Total Amounts" in "Purchases & Payables Setup"';
      ObsoleteState = Pending;
      ObsoleteTag = '26.0';
    }
    field(24; EnableTradeGroupSet2; Boolean)
    {
      Caption = 'Enable Trade Group Set 2';
    }
    field(25; EnableTradeGroupSet3; Boolean)
    {
      Caption = 'Enable Trade Group Set 3';
    }
    // field(26; "Freight Cost Calculation"; Enum "Freight Cost CalculationFDW")
    // {
    //   Caption = 'Freight Cost Calculation';
    // }
    field(27; AutoAssignTradeCostsInTrsfrDoc; Enum AutoAssignDocTradeCostsFDW)
    {
      Caption = 'Auto-Assign Trade Costs in Transfer Doc.';
    }
    // field(30; "Enable Cost Correction Feature"; Boolean)
    // {
    //   Caption = 'Enable Cost Correction Feature';
    //   ObsoleteState = Pending;
    //   ObsoleteReason = 'Field will be removed..';
    //   ObsoleteTag = '25.0';
    // }
    field(31; "Check Setup Before Posting"; Boolean)
    {
      Caption = 'Check Setup Before Posting';
    }
    field(32; PurchaseAccrualCalcTrigger; Enum AccrualCalcTrigger34FDW)
    {
      Caption = 'Purchase Accrual Calculation Trigger';
    }
    field(33; SalesAccrualCalcTrigger; Enum AccrualCalcTrigger34FDW)
    {
      Caption = 'Sales Accrual Calculation Trigger';
    }
    field(34; SalesRetValueEntryType; Enum SalesRetValueEntryType34FDW)
    {
      Caption = 'Sales Return Value Entry Cost Type';
    }
    field(35; PackagingExclusionMethod; Enum PackagingExclusionMode34FDW)
    {
      Caption = 'Packaging Exclusion Method';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
  var ConfirmManagement: Codeunit System.Utilities."Confirm Management";
  // ConfirmSetForChangValueFrghtCostCalcLbl: Label;
  // ConfirmSetToBlankLbl: Label;
  // TransportOrdersExistErr: Label;
}