tableextension 62517 "Whse. Rcpt. Hdr Ext APS" extends "Warehouse Receipt Header"
{
    fields
    {
        // modify("Log Driver 107FDW")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         Driver: Record Driver107FDW;
        //     begin
        //         if Rec."Log Driver 107FDW" = '' then
        //             exit;
        //         if Driver.Get(Rec."Log Driver 107FDW") then
        //             if (Rec."Shipping Agent Code 107FDW" = '') and (Driver."Shipping Agent Code APS" <> '') then
        //                 Rec.Validate("Shipping Agent Code 107FDW", Driver."Shipping Agent Code APS");
        //     end;
        // }
        // modify("Vehicle Code 101FDW")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         Vehicle: Record Vehicle101FDW;
        //     begin
        //         if Rec."Vehicle Code 101FDW" = '' then
        //             exit;
        //         if Vehicle.Get(Rec."Vehicle Code 101FDW") then
        //             if (Rec."Shipping Agent Code 107FDW" = '') and (Vehicle."Shipping Agent Code APS" <> '') then
        //                 Rec.Validate("Shipping Agent Code 107FDW", Vehicle."Shipping Agent Code APS");
        //     end;
        // }
        field(62500; "Skip Trade Costs APS"; Boolean)
        {
            Caption = 'Skip Trade Costs';
            DataClassification = CustomerContent;
        }
    }
}
