pageextension 71632053 SalesReturnOrder107FDW extends "Sales Return Order"
{
    layout
    {
        addafter("Order Date")
        {
            field("Route 107FDW"; Rec."Route 107FDW")
            {
                ApplicationArea = All;
            }

            field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
            {
                ApplicationArea = All;
            }
        }

        addafter("Foreign Trade")
        {
            group("LOG Logistics 107FDW")
            {
                Caption = 'Logistics';

                field("Route Limit 107FDW"; Rec."Route Limit 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Delivery Sequence 107FDW"; Rec."Delivery Sequence 107FDW")
                {
                    Visible = false;
                }

                field("Unload Zone Left 107FDW"; Rec."Unload Zone Left 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Unload Zone Right 107FDW"; Rec."Unload Zone Right 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Unload Zone Back 107FDW"; Rec."Unload Zone Back 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
                {
                    ApplicationArea = All;
                }

                field("LOG Co-driver 107FDW"; Rec."Co-Driver 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Trailer 107FDW"; Rec."Trailer 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Delivery Type 107FDW"; Rec."Delivery Type 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Delivery Time Code 107FDW"; Rec."Delivery Time Code 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Opening Time 107FDW"; Rec."Opening Time 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Closing Time 107FDW"; Rec."Closing Time 107FDW")
                {
                    ApplicationArea = All;
                }

                field("LOG Non Working 107FDW"; Rec."Nonworking Day 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Key Number 107FDW"; Rec."Key Number 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Cue Scan Type 107FDW"; Rec."Cue Scan Type 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Key Scan Code 107FDW"; Rec."Key Scan Code 107FDW")
                {
                    ApplicationArea = All;
                }

                field("Logistic Status 107FDW"; Rec."Logistic Status 107FDW")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}