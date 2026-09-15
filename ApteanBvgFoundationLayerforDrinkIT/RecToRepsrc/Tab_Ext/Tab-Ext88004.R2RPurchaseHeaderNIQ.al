/// <summary>
/// TableExtension R2R Purchase Header NIQ (ID 88004) extends Record Purchase Header.
/// </summary>
tableextension 88004 "R2R Purchase Header NIQ" extends "Purchase Header"
{
    fields
    {
        // modify("Buy-from Vendor No.")
        // {
        //     // trigger OnAfterValidate()
        //     // var
        //     //     Vendor: Record Vendor;
        //     // begin
        //     //     UpdateReasonCode();
        //     //     FillPaymentTerms_Method();

        //     //     if not Vendor.Get("Buy-from Vendor No.") then
        //     //         Vendor.Init();
        //     //     // if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Vendor, Vendor."Default Class. 102FDW") then
        //     //     //     TaxGeneralClassification.Init();
        //     //     "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //     // end;
        // }
        // modify("Pay-to Vendor No.")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         Setup: Record "R2R Extension Setup NIQ";
        //     begin
        //         Setup.SetLoadFields("En. Dflt R.Code on Mast. Data", "R2R Dflt R.Code Vnd. From NIQ");
        //         if not Setup.Get() then
        //             Setup.Init();

        //         if Setup."En. Dflt R.Code on Mast. Data" and
        //            (Setup."R2R Dflt R.Code Vnd. From NIQ" = Setup."R2R Dflt R.Code Vnd. From NIQ"::"Pay-to Vendor") then
        //             UpdateReasonCode();
        //     end;
        // }
        // modify("Order Address Code")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         Vendor: Record Vendor;
        //     begin
        //         if not Vendor.Get("Buy-from Vendor No.") then
        //             Vendor.Init();
        //         if "Order Address Code" <> '' then begin
        //             if not OrderAddress.Get("Buy-from Vendor No.", "Order Address Code") then
        //                 OrderAddress.Init();
        //             if TaxGeneralClassification.Get(TaxGeneralClassification.Type::Vendor, OrderAddress."Default Class. 102FDW") then
        //                 "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type"
        //             else begin
        //                 if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Vendor, Vendor."Default Class. 102FDW") then
        //                     TaxGeneralClassification.Init();
        //                 "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //             end;
        //         end else begin
        //             if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Vendor, Vendor."Default Class. 102FDW") then
        //                 TaxGeneralClassification.Init();
        //             "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //         end;
        //     end;
        //}
        field(88000; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
            // trigger OnValidate()
            // var
            //     R2RInvoiceGroup: Record "R2R Invoice Group NIQ";
            //     Vendor: Record Vendor;
            // begin
            //     FillPaymentTerms_Method();
            //     ValidatePostingNoSeries();
            //     if "R2R Invoice Group NIQ" <> '' then begin
            //         if R2RInvoiceGroup.Get("R2R Invoice Group NIQ") then
            //             if R2RInvoiceGroup."Vendor Posting Group" <> '' then
            //                 Validate("Vendor Posting Group", R2RInvoiceGroup."Vendor Posting Group");
            //     end else begin
            //         if not Vendor.Get("Buy-from Vendor No.") then
            //             Vendor.Init();
            //         Validate("Vendor Posting Group", Vendor."Vendor Posting Group");
            //     end;
            // end;
        }
        // field(88001; "R2R Excise Type NIQ"; Enum ExciseType100FDW)
        // {
        //     Caption = 'Excise Type';
        //     DataClassification = CustomerContent;
        //     trigger OnValidate()
        //     var
        //         LOGRoutePlanRequestNIQ: Record RoutePlanRequest107FDW;
        //     begin
        //         if (Rec."Document Type" = Rec."Document Type"::Order) or (Rec."Document Type" = Rec."Document Type"::"Return Order") then begin
        //             LOGRoutePlanRequestNIQ.Reset();
        //             LOGRoutePlanRequestNIQ.SetRange("Source Document Type", LOGRoutePlanRequestNIQ."Source Document Type"::"S.Order");
        //             LOGRoutePlanRequestNIQ.SetRange("Source No.", Rec."No.");
        //             if LOGRoutePlanRequestNIQ.FindSet() then
        //                 LOGRoutePlanRequestNIQ.ModifyAll("R2R Excise Type NIQ", Rec."R2R Excise Type NIQ", false);
        //         end;
        //     end;
        // }
        field(88031; "R2R Invoice Operation ID NIQ"; Guid)
        {
            Caption = 'Invoice Operation ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    // local procedure UpdateReasonCode()
    // var
    //     FoundationSetup: Record FoundationSetup101FDW;
    //     Setup: Record "R2R Extension Setup NIQ";
    //     BuyFromVendor: Record Vendor;
    //     PayToVendor: Record Vendor;
    // begin
    //     Setup.SetLoadFields("En. Dflt R.Code on Mast. Data", "R2R Dflt R.Code Vnd. From NIQ");
    //     if not Setup.Get() then
    //         Setup.Init();

    //     if Setup."En. Dflt R.Code on Mast. Data" and
    //        (Setup."R2R Dflt R.Code Vnd. From NIQ" = Setup."R2R Dflt R.Code Vnd. From NIQ"::"Pay-to Vendor") then begin
    //         PayToVendor.SetLoadFields("R2R Default Reason Code NIQ");
    //         if PayToVendor.Get("Pay-to Vendor No.") then
    //             if PayToVendor."R2R Default Reason Code NIQ" <> '' then begin
    //                 Validate("Reason Code", PayToVendor."R2R Default Reason Code NIQ");
    //                 exit;
    //             end;
    //     end else
    //         BuyFromVendor.SetLoadFields("R2R Default Reason Code NIQ");
    //     if BuyFromVendor.Get("Buy-from Vendor No.") then
    //         if BuyFromVendor."R2R Default Reason Code NIQ" <> '' then begin
    //             Validate("Reason Code", BuyFromVendor."R2R Default Reason Code NIQ");
    //             exit;
    //         end;

    //     if not FoundationSetup.Get() then
    //         exit;

    //     case "Document Type" of
    //         "Document Type"::Order:
    //             Validate("Reason Code", FoundationSetup."Purch. Order Reason Code");
    //         "Document Type"::Invoice:
    //             Validate("Reason Code", FoundationSetup."Purch. Invoice Reason Code");
    //         "Document Type"::"Blanket Order":
    //             Validate("Reason Code", FoundationSetup."Purch. Blnk. Order Reason Code");
    //         "Document Type"::"Credit Memo":
    //             Validate("Reason Code", FoundationSetup."Purch. Cr.Memo Reason Code");
    //         "Document Type"::Quote:
    //             Validate("Reason Code", FoundationSetup."Purch. Quote Reason Code");
    //         "Document Type"::"Return Order":
    //             Validate("Reason Code", FoundationSetup."Purch. Return Reason Code");
    //     end;
    // end;

    // procedure FillPaymentTerms_Method()
    // var
    //     R2RSetup: Record "R2R Extension Setup NIQ";
    //     R2RInvoiceGroupNIQ: Record "R2R Invoice Group NIQ";
    //     Vendor: Record Vendor;
    // begin
    //     R2RSetup.Get();
    //     if not R2RSetup."Enable Invoicing By Inv. Group" then
    //         exit;
    //     if not R2RInvoiceGroupNIQ.Get("R2R Invoice Group NIQ") then
    //         R2RInvoiceGroupNIQ.Init();
    //     if not Vendor.Get("Buy-from Vendor No.") then
    //         Vendor.Init();

    //     if R2RInvoiceGroupNIQ."Payment Terms from Customer" = R2RInvoiceGroupNIQ."Payment Terms from Customer"::" " then
    //         Validate("Payment Terms Code", Vendor."Payment Terms Code");

    //     if R2RInvoiceGroupNIQ."Payment Method from Customer" = R2RInvoiceGroupNIQ."Payment Method from Customer"::" " then
    //         Validate("Payment Method Code", Vendor."Payment Method Code");

    //     if R2RInvoiceGroupNIQ."Payment Terms from Customer" = R2RInvoiceGroupNIQ."Payment Terms from Customer"::Deposit then
    //         if Vendor."Payment Terms Code 104FDW" <> '' then
    //             Validate("Payment Terms Code", Vendor."Payment Terms Code 104FDW");

    //     if R2RInvoiceGroupNIQ."Payment Method from Customer" = R2RInvoiceGroupNIQ."Payment Method from Customer"::Deposit then
    //         if Vendor."Payment Method Code 104FDW" <> '' then
    //             Validate("Payment Method Code", Vendor."Payment Method Code 104FDW");
    // end;

    procedure ValidatePostingNoSeries()
    var
        R2RSetup: Record "R2R Extension Setup NIQ";
        R2RInvoiceGroupNIQ: Record "R2R Invoice Group NIQ";
        PostingNoSeries: Code[20];
    begin
        R2RSetup.Get();
        if not R2RSetup."Enable Invoicing By Inv. Group" then
            exit;
        PostingNoSeries := "Posting No. Series";
        Rec.PurchSetup.GetRecordOnce();
        if R2RInvoiceGroupNIQ.Get("R2R Invoice Group NIQ") and (R2RInvoiceGroupNIQ."Posting No. Series (Purchase)" <> '') then
            PostingNoSeries := R2RInvoiceGroupNIQ."Posting No. Series (Purchase)"
        else
            if IsCreditDocType() then
                PostingNoSeries := Rec.PurchSetup."Posted Credit Memo Nos."
            else
                PostingNoSeries := Rec.PurchSetup."Posted Invoice Nos.";

        if PostingNoSeries <> "Posting No. Series" then begin
            "Posting No." := '';
            Validate("Posting No. Series", PostingNoSeries)
        end;
    end;

    var
        OrderAddress: Record "Order Address";
        //TaxGeneralClassification: Record TaxGeneralClassification102FDW;
}
