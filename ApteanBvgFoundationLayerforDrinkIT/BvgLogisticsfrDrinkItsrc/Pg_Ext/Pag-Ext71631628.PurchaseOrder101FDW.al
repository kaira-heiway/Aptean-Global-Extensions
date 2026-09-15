pageextension 71631628 PurchaseOrder101FDW extends "Purchase Order"
{
  layout
  {
    addbefore(Status)
    {
      field("Reason Code 101FDW"; ReasonCode101FDW)
      {
        Caption = 'Reason Code';
        Visible = false;
      }
      field("Vehicle Code 101FDW"; Rec."Vehicle Code 101FDW")
      {
        Visible = false;
      }
    }
    addafter(PurchLines)
    {
      group(Foundation101FDW)
      {
        Caption = 'Drink-IT Foundation';

        // field("Blanket Order Type 101FDW"; Rec."Blanket Order Type 101FDW")
        // {
        // }
        // field("Blanket Order No. 101FDW"; Rec."Blanket Order No. 101FDW")
        // {
        // }
      }
    }
  }
  actions
  {
    // modify(SendApprovalRequest)
    // {
    // }
    // modify(Release)
    // {
    // }
    // modify("Prepayment Test &Report")
    // {
    // }
    addafter(MoveNegativeLines)
    {
      action("Move Negative Lines101FDW")
      {
        Caption = 'DIT Move Negative Lines';
      }
    }
    addlast("F&unctions")
    {
      action(CreateReturnOrder101FDW)
      {
        Caption = 'Create/Modify Return Order';
      }
      action(RecalculateLines101FDW)
      {
        Caption = 'Calculate Drink-it Lines';
      }
    }
  }
  var ReasonCode101FDW: Code[10];
  MoveNegativePurchaseLines: Report Microsoft.Purchases.Document."Move Negative Purchase Lines";
//   FeatureControlManagement: Codeunit FeatureControlManagement101FDW;
//   IntlPurchaseHook101FDW: Codeunit IntlPurchaseHook101FDW;
}