pageextension 62509 "Ship. Agent Serv. Ext APS" extends "Shipping Agent Services"
{
    layout
    {
        addlast(Control1)
        {
            field("Overrule TC Expected APS"; Rec."Overrule TC Expected APS")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether this service overrules the Trade Cost Expected setting on the Shipping Agent. When ticked, trade costs are NOT expected for this service even if the Shipping Agent has Trade Costs Expected enabled.';
            }
        }
    }
    actions
    {
        addlast(Navigation)
        {
            action("TradeCostPricingAPS APS")
            {
                Caption = 'Trade Cost Pricing';
                ApplicationArea = All;
                ToolTip = 'View trade cost pricing records for this shipping agent and service.';
                Image = Price;
                RunObject = page "Trade Cost Pricing List APS";
                RunPageLink = "Shipping Agent Code" = field("Shipping Agent Code"), "Shipping Agent Service Code" = field(Code);
            }
        }
    }
}
