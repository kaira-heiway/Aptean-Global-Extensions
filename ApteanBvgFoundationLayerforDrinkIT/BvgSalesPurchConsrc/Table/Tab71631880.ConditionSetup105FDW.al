table 71631880 ConditionSetup105FDW
{
  Caption = 'Sales Purchase Condition Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Allow Rule Deletion"; Boolean)
    {
      Caption = 'Allow Ended Rule Deletion';
    }
    field(3; "Automatic Accrual Posting"; Boolean)
    {
      Caption = 'Automatic Accrual Posting';
    }
    field(4; "Accrual Post Source Code"; Code[10])
    {
      Caption = 'Accrual Post Source Code';
    }
    field(5; "Jnl.Templ.Name Accrual Posting"; Code[10])
    {
      Caption = 'Jnl. Templ. Name Accrual Posting';
    }
    field(6; "Jnl.Batch.Name Accrual Posting"; Code[10])
    {
      Caption = 'Jnl. Batch Name Accrual Posting';
    }
    field(10; "Rule Max. Instance Warning"; Boolean)
    {
      Caption = 'Ordered Rule Maximum Instance Warning';
    }
    field(20; "Copy Translations Calc to Rule"; Boolean)
    {
      Caption = 'Copy Translations Calculation to Rule Setup';
    }
    field(101; "Sales Reason Code Mandatory"; Boolean)
    {
      Caption = 'Reason Mandatory for Line Discounts (Sales)';
    }
    field(102; "Sales Price Reason Mandatory"; Boolean)
    {
      Caption = 'Reason Mandatory for Price Change (Sales)';
    }
    // field(104; "Default Sales Cond. Date Type"; Enum IntlSalesCondDateType100FDW)
    // {
    //   Caption = 'Default Sales Condition Date Type (Sales)';
    // }
    field(105; "S. Reason Mandatory Cond.Price"; Boolean)
    {
      Caption = 'Reason Mandatory for Condition Price Change (Sales)';
    }
    field(201; "Purchase Reason Code Mandatory"; Boolean)
    {
      Caption = 'Reason Mandatory for Line Discounts (Purchase)';
    }
    field(202; "Purch. Price Reason Mandatory"; Boolean)
    {
      Caption = 'Reason Mandatory for Price Change (Purchase)';
    }
    field(203; "Purch. Incl. Charge Exp. Cost"; Boolean)
    {
      Caption = 'Include Condition Charge in Expected Cost (Purchase)';
    }
    // field(204; "Default Purch. Cond. Date Type"; Enum IntlPurchaseCondDateType100FDW)
    // {
    //   Caption = 'Default Purchase Condition Date Type (Purchase)';
    // }
    field(205; "P. Reason Mandatory Cond.Price"; Boolean)
    {
      Caption = 'Reason Mandatory for Condition Price Change (Purchase)';
    }
    field(300; "Default Jnl. Source Code"; Code[10])
    {
      Caption = 'Default Source Code (Journal)';
    }
    field(301; "Default Per. Jnl. Source Code"; Code[10])
    {
      Caption = 'Default Source Code (Periodic Journal)';
    }
    field(302; "Reversal Source Code"; Code[10])
    {
      Caption = 'Reversal Source Code';
    }
    field(330; "Per. Sales Invoice Nos."; Code[20])
    {
      Caption = 'Sales Invoice Nos.';
    }
    field(331; "Per. Pstd Sales Invoice Nos."; Code[20])
    {
      Caption = 'Posted Sales Invoice Nos.';
    }
    field(332; "Per. Sales Cr.Memo Nos."; Code[20])
    {
      Caption = 'Sales Credit Memo Nos.';
    }
    field(333; "Per. Pstd Sales Cr.Memo Nos."; Code[20])
    {
      Caption = 'Posted Sales Credit Memo Nos.';
    }
    field(350; "Per. Purch. Invoice Nos."; Code[20])
    {
      Caption = 'Purch. Invoice Nos.';
    }
    field(351; "Per. Pstd Purch. Invoice Nos."; Code[20])
    {
      Caption = 'Posted Purch. Invoice Nos.';
    }
    field(352; "Per. Purch. Cr.Memo Nos."; Code[20])
    {
      Caption = 'Purch. Credit Memo Nos.';
    }
    field(353; "Per. Pstd Purch. Cr.Memo Nos."; Code[20])
    {
      Caption = 'Posted Purch. Credit Memo Nos.';
    }
    field(900; "Show Group-Classif Type Filter"; Boolean)
    {
      Caption = 'Show Group & Classification Type Filter';
    }
    field(901; "Keep User Rule Setup Filters"; Boolean)
    {
      Caption = 'Keep User Rule Setup Filters';
    }
    field(904; "Show Exp. Sources Dimension"; Boolean)
    {
      Caption = 'Show Classification Expected Sources by Dimension';
    }
    field(905; "Use Rule Filter Sets Buffers"; Boolean)
    {
      Caption = 'Use Rule Filter Sets Buffers';
    }
    field(1000; "Use Rule Filter Sets"; Boolean)
    {
      Caption = 'Use Rule Filter Sets';
    }
    field(1001; "Disable Dimension Update"; Boolean)
    {
      Caption = 'Disable Dimension Update during Calculation';
      ObsoleteState = Pending;
      ObsoleteReason = 'Added temporarily for backward compatibility.';
      ObsoleteTag = '24.0';
    }
    field(1002; "Prevent Description Changes"; Boolean)
    {
      Caption = 'Prevent Description Changes';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
  //var IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
}