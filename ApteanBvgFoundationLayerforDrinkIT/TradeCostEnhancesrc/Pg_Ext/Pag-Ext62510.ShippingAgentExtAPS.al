pageextension 62510 "Shipping Agent Ext APS" extends "Shipping Agents"
{
    layout
    {
        addlast(Control1)
        {
            field("Trade Costs Expected APS"; Rec."Trade Costs Expected APS")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether trade costs are expected for this shipping agent. If enabled, warehouse shipment posting will be blocked when no trade costs are present.';
            }
        }
    }

    actions
    {
        addlast(navigation)
        {
            action("TradeCostPricingAPS APS")
            {
                Caption = 'Trade Cost Pricing';
                ApplicationArea = All;
                ToolTip = 'View trade cost pricing records for this shipping agent.';
                Image = Price;
                RunObject = page "Trade Cost Pricing List APS";
                RunPageLink = "Shipping Agent Code" = field(Code);
            }
        }
    }
}
