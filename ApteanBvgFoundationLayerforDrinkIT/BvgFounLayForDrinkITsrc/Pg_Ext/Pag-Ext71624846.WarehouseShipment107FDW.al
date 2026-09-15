pageextension 71624846 "Warehouse Shipment 107FDW" extends "Warehouse Shipment"
{
    layout
    {
        addafter(Shipping)
        {
            field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
            {
                ApplicationArea = All;
            }

            field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
            {
                ApplicationArea = All;
            }
            field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
            {
                ApplicationArea = All;
            }
            field("Trailer 107FDW"; Rec."Trailer 107FDW")
            {
                ApplicationArea = All;
            }
            // field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
            // {
            //     ApplicationArea = All;
            // }
            // field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
            // {
            //     ApplicationArea = All;
            // }
            field("Route 107FDW"; Rec."Route 107FDW")
            {
                ApplicationArea = All;
            }
        }
    }
}