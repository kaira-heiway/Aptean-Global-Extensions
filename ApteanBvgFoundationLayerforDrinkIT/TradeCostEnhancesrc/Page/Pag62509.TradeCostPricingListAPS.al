page 62509 "Trade Cost Pricing List APS"
{
    Caption = 'Trade Cost Pricing';
    PageType = List;
    SourceTable = "Trade Cost Pricing APS";
    UsageCategory = Lists;
    ApplicationArea = All;
    //CardPageId = "Trade Cost Pricing Card APS";
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unique entry number of the pricing record.';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shipping agent code for this pricing record.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shipping agent service for this pricing record.';
                }
                field("Route Code"; Rec."Route Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the route for which this pricing applies.';
                }
                field("Trade Plan Code"; Rec."Trade Plan Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the trade plan associated with this pricing record.';
                }
                field("Rate Type"; Rec."Rate Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rate type for calculating trade costs.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the fixed amount when Rate Type is Fixed Amount.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit price used for rate-based pricing.';
                }
                field("Unit Of Measure Code"; Rec."Unit Of Measure Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit of measure when Rate Type is Unit Of Measure.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date from which this pricing is effective.';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date until which this pricing is effective.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the currency code for this pricing. Leave blank for LCY.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether this pricing record is Open or Certified.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a description for this pricing record.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ShowPostedTradeCostOrdersAPS)
            {
                ApplicationArea = All;
                Caption = 'Posted Trade Cost Orders';
                ToolTip = 'View Posted Trade Cost Orders that match this pricing record.';
                Image = List;

                trigger OnAction()
                var
                    PostedTradeCostOrder: Record "Posted Trade Cost Order APS";
                begin
                    PostedTradeCostOrder.SetRange("Shipping Agent Code", Rec."Shipping Agent Code");
                    PostedTradeCostOrder.SetRange("Route Code", Rec."Route Code");
                    if Rec."Shipping Agent Service Code" <> '' then
                        PostedTradeCostOrder.SetRange("Shipping Agent Service Code", Rec."Shipping Agent Service Code");
                    Page.Run(Page::"Posted Trade Cost Orders APS", PostedTradeCostOrder);
                end;
            }
            action(CertifyAPS)
            {
                ApplicationArea = All;
                Caption = 'Certify';
                ToolTip = 'Certify the selected pricing record(s) to make them available for use. Multiple lines can be selected at once.';
                Image = Approve;
                Enabled = Rec.Status = Rec.Status::Open;

                // trigger OnAction()
                // var
                //     SelectedTradeCostPricing: Record "Trade Cost Pricing APS";
                //     TradeCostPricingMgt: Codeunit "Trade Cost Pricing Mgt. APS";
                // begin
                //     CurrPage.SetSelectionFilter(SelectedTradeCostPricing);
                //     TradeCostPricingMgt.CertifySelection(SelectedTradeCostPricing);
                //     CurrPage.Update(false);
                // end;
            }
            action(ReopenAPS)
            {
                ApplicationArea = All;
                Caption = 'Reopen';
                ToolTip = 'Reopen the selected pricing record(s) for editing. Multiple lines can be selected at once.';
                Image = ReOpen;
                Enabled = Rec.Status = Rec.Status::Certified;

                // trigger OnAction()
                // var
                //     SelectedTradeCostPricing: Record "Trade Cost Pricing APS";
                //     TradeCostPricingMgt: Codeunit "Trade Cost Pricing Mgt. APS";
                // begin
                //     CurrPage.SetSelectionFilter(SelectedTradeCostPricing);
                //     TradeCostPricingMgt.ReopenSelection(SelectedTradeCostPricing);
                //     CurrPage.Update(false);
                // end;
            }
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process';

                actionref(ShowPostedTradeCostOrdersAPS_Promoted; ShowPostedTradeCostOrdersAPS) { }
                actionref(CertifyAPS_Promoted; CertifyAPS) { }
                actionref(ReopenAPS_Promoted; ReopenAPS) { }
            }
        }
    }

    // trigger OnOpenPage()
    // var
    //     TMSetup: Record "Trade Management Setup FDW";
    // begin
    //     TMSetup.Get();
    //     if not TMSetup."Trade Cost Enh. Enabled APS" then
    //         Error(FeatureDisabledErr);
    // end;

    var
        FeatureDisabledErr: Label 'Trade Cost Enhancement is not enabled in Trade Management Setup.';
}
