/// <summary>
/// TableExtension R2R Sales Header NIQ (ID 88005) extends Record Sales Header.
/// </summary>
tableextension 88005 "R2R Sales Header NIQ" extends "Sales Header"
{
    fields
    {
        // modify("Bill-to Customer No.")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         Setup: Record "R2R Extension Setup NIQ";
        //     begin
        //         FillPaymentTerms_Method();
        //         Setup.SetLoadFields("En. Dflt R.Code on Mast. Data", "R2R Dflt R.Code Cst. From NIQ");
        //         if not Setup.Get() then
        //             Setup.Init();

        //         if Setup."En. Dflt R.Code on Mast. Data" and
        //            (Setup."R2R Dflt R.Code Cst. From NIQ" = Setup."R2R Dflt R.Code Cst. From NIQ"::"Bill-to Customer") then
        //             UpdateReasonCode();
        //     end;
        // }
        modify("Customer Posting Group")
        {
            trigger OnAfterValidate()
            var
                CustomerPostingGroup: Record "Customer Posting Group";
            begin
                if not CustomerPostingGroup.Get("Customer Posting Group") then
                    CustomerPostingGroup.Init();

                "R2R IC Company VendPostGrp NIQ" := CustomerPostingGroup."R2R ICCompany VendPostGrp NIQ";
            end;
        }
        // modify("Loan Entry Type 114FDW")
        // {
        //     trigger OnAfterValidate()
        //     begin
        //         UpdatePayBackExclVATSales();
        //     end;
        // }
        // modify("Loan No. 114FDW")
        // {
        //     trigger OnAfterValidate()
        //     begin
        //         UpdatePayBackExclVATSales();
        //     end;
        // }
        // modify("Sell-to Customer No.")
        // {
        //     trigger OnAfterValidate()
        //     begin
        //         UpdateReasonCode();
        //         UpdateSendICDocument();

        //         if not Customer.Get("Sell-to Customer No.") then
        //             Customer.Init();

        //         //"R2R Invoice per Order NIQ" := Customer."R2R Invoice per Order NIQ";
        //         if Customer."Ship-to Code" <> '' then begin
        //             if not ShiptoAddress.Get("Sell-to Customer No.", "Ship-to Code") then
        //                 ShiptoAddress.Init();
        //             // if TaxGeneralClassification.Get(TaxGeneralClassification.Type::Customer, ShiptoAddress."Default Class. 102FDW") then
        //             //     "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type"
        //             // else begin
        //             //     if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Customer, Customer."Default Class. 102FDW") then
        //             //         TaxGeneralClassification.Init();
        //             //     "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //             // end;
        //         end else begin
        //             // if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Customer, Customer."Default Class. 102FDW") then
        //             //     TaxGeneralClassification.Init();
        //             // "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //         end;
        //     end;
        // }
        modify("Send IC Document")
        {
            trigger OnAfterValidate()
            var
                GLAcc: Record "G/L Account";
                ICPartner: Record "IC Partner";
                Resource: Record Resource;
                SalesHeader1: Record "Sales Header";
                SalesLine: Record "Sales Line";
            begin
                if "Send IC Document" then begin
                    TestField("Sell-to IC Partner Code");
                    TestField("Bill-to IC Partner Code");

                    if (Rec."Document Type" = Rec."Document Type"::Invoice) or (Rec."Document Type" = Rec."Document Type"::"Credit Memo") then begin
                        if not SalesHeader1.Get(Rec."Document Type", Rec."No.") then
                            SalesHeader1.Init();
                        SalesLine.Reset();
                        SalesLine.SetRange("Document Type", Rec."Document Type");
                        SalesLine.SetRange("Document No.", Rec."No.");
                        SalesLine.SetFilter("IC Partner Reference", '%1', '');
                        if SalesLine.FindSet() then
                            repeat
                                if (SalesLine.Type = SalesLine.Type::" ") or (SalesLine.Type = SalesLine.Type::"Charge (Item)") then begin
                                    SalesLine."IC Partner Ref. Type" := SalesLine.Type;
                                    SalesLine."IC Partner Reference" := SalesLine."No.";
                                    SalesLine.Modify(false);
                                end;

                                if SalesLine.Type = SalesLine.Type::"G/L Account" then begin
                                    GLAcc.Get(SalesLine."No.");
                                    SalesLine."IC Partner Ref. Type" := SalesLine.Type;
                                    SalesLine."IC Partner Reference" := GLAcc."Default IC Partner G/L Acc. No";
                                    SalesLine.Modify(false);
                                end;

                                if SalesLine.Type = SalesLine.Type::Item then begin
                                    if SalesHeader1."Sell-to IC Partner Code" <> '' then
                                        ICPartner.Get(SalesHeader1."Sell-to IC Partner Code")
                                    else
                                        ICPartner.Get(SalesHeader1."Bill-to IC Partner Code");
                                    case ICPartner."Outbound Sales Item No. Type" of
                                        ICPartner."Outbound Sales Item No. Type"::"Common Item No.":
                                            begin
                                                SalesLine.Validate("IC Partner Ref. Type", SalesLine."IC Partner Ref. Type"::"Common Item No.");
                                                SalesLine.Modify(false);
                                            end;
                                        ICPartner."Outbound Sales Item No. Type"::"Internal No.":
                                            begin
                                                SalesLine.Validate("IC Partner Ref. Type", SalesLine."IC Partner Ref. Type"::Item);
                                                SalesLine."IC Partner Reference" := SalesLine."No.";
                                                SalesLine.Modify(false);
                                            end;
                                        ICPartner."Outbound Sales Item No. Type"::"Cross Reference":
                                            begin
                                                SalesLine.Validate("IC Partner Ref. Type", SalesLine."IC Partner Ref. Type"::"Cross Reference");
                                                UpdateICPartnerItemReference(SalesLine);
                                                SalesLine.Modify(false);
                                            end;
                                    end;
                                    if SalesLine.Type = SalesLine.Type::"Fixed Asset" then begin
                                        SalesLine."IC Partner Ref. Type" := SalesLine."IC Partner Ref. Type"::" ";
                                        SalesLine."IC Partner Reference" := '';
                                        SalesLine.Modify(false);
                                    end;
                                    if SalesLine.Type = SalesLine.Type::Resource then begin
                                        Resource.Get("No.");
                                        SalesLine."IC Partner Ref. Type" := SalesLine."IC Partner Ref. Type"::"G/L Account";
                                        SalesLine."IC Partner Reference" := Resource."IC Partner Purch. G/L Acc. No.";
                                        SalesLine.Modify(false);
                                    end;
                                end;
                            until SalesLine.Next() = 0;
                    end;
                end;
            end;
        }
        // modify("Ship-to Code")
        // {
        //     trigger OnAfterValidate()
        //     begin
        //         if not Customer.Get("Sell-to Customer No.") then
        //             Customer.Init();
        //         if "Ship-to Code" <> '' then begin
        //             if not ShiptoAddress.Get("Sell-to Customer No.", "Ship-to Code") then
        //                 ShiptoAddress.Init();
        //             // if TaxGeneralClassification.Get(TaxGeneralClassification.Type::Customer, ShiptoAddress."Default Class. 102FDW") then
        //             //     "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type"
        //             // else begin
        //             //     if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Customer, Customer."Default Class. 102FDW") then
        //             //         TaxGeneralClassification.Init();
        //             //     "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //             // end;
        //         end else begin
        //             // if not TaxGeneralClassification.Get(TaxGeneralClassification.Type::Customer, Customer."Default Class. 102FDW") then
        //             //     TaxGeneralClassification.Init();
        //             // "R2R Excise Type NIQ" := TaxGeneralClassification."Excise Type";
        //         end;
        //     end;
        // }
        field(88000; "R2R IC Company VendPostGrp NIQ"; Code[20])
        {
            Caption = 'Target IC Company Vendor Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Vendor Posting Group";
        }
        field(88001; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
            // trigger OnValidate()
            // var
            //     Customer: Record Customer;
            //     R2RInvoiceGroup: Record "R2R Invoice Group NIQ";
            // begin
            //     FillPaymentTerms_Method();
            //     ValidatePostingNoSeries();
            //     if "R2R Invoice Group NIQ" <> '' then begin
            //         if R2RInvoiceGroup.Get("R2R Invoice Group NIQ") then
            //             if R2RInvoiceGroup."Customer Posting Group" <> '' then
            //                 Validate("Customer Posting Group", R2RInvoiceGroup."Customer Posting Group");
            //     end else
            //         //if ("Loan Entry Type 114FDW" = "Loan Entry Type 114FDW"::" 114FDW") and ("Loan No. 114FDW" = '') then begin
            //             if not Customer.Get("Sell-to Customer No.") then
            //                 Customer.Init();
            //             Validate("Customer Posting Group", Customer."Customer Posting Group");
            //         //end;
            // end;
        }
        field(88002; "R2R Pre-Assigned No. NIQ"; Integer)
        {
            Caption = 'Pre-Assigned Invoice No.';
            DataClassification = CustomerContent;
            ObsoleteReason = 'Wrong Data Type';
            ObsoleteState = Removed;
        }
        field(88003; "R2R Pre-Assigned No NIQ"; Code[20])
        {
            Caption = 'Pre-Assigned Invoice No.';
            DataClassification = CustomerContent;
        }
        // field(88004; "R2R Excise Type NIQ"; Enum ExciseType100FDW)
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
        field(88005; "R2R Invoice per Order NIQ"; Boolean)
        {
            Caption = 'Invoice per Order';
            DataClassification = CustomerContent;
        }
        field(88015; "R2R Suppress Invoice Print NIQ"; Boolean)
        {
            Caption = 'Suppress Invoice Print ';
            DataClassification = CustomerContent;
        }
        field(88020; "R2R Payment Reference NIQ"; Code[50])
        {
            Caption = 'Payment Reference';
            DataClassification = CustomerContent;
        }
        field(88031; "R2R Invoice Operation ID NIQ"; Guid)
        {
            Caption = 'Invoice Operation ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(88032; "R2R PayBackExcl.VATSales NIQ"; Boolean)
        {
            Caption = 'Pay back excl. VAT (Sales)';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies that when a loan number is selected in a sales document with loan entry type set to pay back cap., the document will post and possibly apply the amount excluding VAT to the loan. In addition it will post a second entry on the regular customer posting group for the VAT amount.';
        }
    }

    // local procedure UpdateReasonCode()
    // var
    //     BillToCustomer: Record Customer;
    //     FoundationSetup: Record FoundationSetup101FDW;
    //     Setup: Record "R2R Extension Setup NIQ";
    // begin
    //     Setup.SetLoadFields("En. Dflt R.Code on Mast. Data", "R2R Dflt R.Code Cst. From NIQ");
    //     if not Setup.Get() then
    //         Setup.Init();

    //     if Setup."En. Dflt R.Code on Mast. Data" and
    //        (Setup."R2R Dflt R.Code Cst. From NIQ" = Setup."R2R Dflt R.Code Cst. From NIQ"::"Bill-to Customer") then begin
    //         BillToCustomer.SetLoadFields("R2R Default Reason Code NIQ");
    //         if BillToCustomer.Get("Bill-to Customer No.") then
    //             if BillToCustomer."R2R Default Reason Code NIQ" <> '' then begin
    //                 Validate("Reason Code", BillToCustomer."R2R Default Reason Code NIQ");
    //                 exit;
    //             end;
    //     end else
    //         if Customer.Get("Sell-to Customer No.") then
    //             if Customer."R2R Default Reason Code NIQ" <> '' then begin
    //                 Validate("Reason Code", Customer."R2R Default Reason Code NIQ");
    //                 exit;
    //             end;

    //     if not FoundationSetup.Get() then
    //         exit;

    //     case "Document Type" of
    //         "Document Type"::Order:
    //             Validate("Reason Code", FoundationSetup."Sales Order Reason Code");
    //         "Document Type"::Invoice:
    //             Validate("Reason Code", FoundationSetup."Sales Invoice Reason Code");
    //         "Document Type"::"Blanket Order":
    //             Validate("Reason Code", FoundationSetup."Sales Blank. Order Reason Code");
    //         "Document Type"::"Credit Memo":
    //             Validate("Reason Code", FoundationSetup."Sales Cr.Memo Reason Code");
    //         "Document Type"::Quote:
    //             Validate("Reason Code", FoundationSetup."Sales Quote Reason Code");
    //         "Document Type"::"Return Order":
    //             Validate("Reason Code", FoundationSetup."Sales Return Reason Code");
    //     end;
    // end;

    // procedure UpdateSendICDocument()
    // begin
    //     if not R2RSetup.Get() then
    //         R2RSetup.Init();
    //     if not R2RSetup."Enable Send IC Doc. per Doc." then
    //         exit;
    //     if Customer.Get("Sell-to Customer No.") then
    //         case "Document Type" of
    //             "Document Type"::Invoice, "Document Type"::"Credit Memo":
    //                 "Send IC Document" := Customer."R2R Send IC Doc. SInv. NIQ";
    //             "Document Type"::"Blanket Order", "Document Type"::Quote, "Document Type"::Order, "Document Type"::"Return Order":
    //                 "Send IC Document" := Customer."R2R Send IC Doc. SOrd. NIQ";
    //         end;
    // end;

    local procedure UpdateICPartnerItemReference(SalesLineIn: Record "Sales Line")
    var
        ItemReference: Record "Item Reference";
    begin
        ItemReference.SetRange("Reference Type", ItemReference."Reference Type"::Customer);
        ItemReference.SetRange("Reference Type No.", SalesLineIn."Sell-to Customer No.");
        ItemReference.SetRange("Item No.", SalesLineIn."No.");
        ItemReference.SetRange("Variant Code", SalesLineIn."Variant Code");
        ItemReference.SetRange("Unit of Measure", SalesLineIn."Unit of Measure Code");
        if ItemReference.FindFirst() then
            SalesLineIn."IC Item Reference No." := ItemReference."Reference No."
        else
            SalesLineIn."IC Partner Reference" := SalesLineIn."No.";
    end;

    // procedure FillPaymentTerms_Method()
    // var
    //     R2RInvoiceGroupNIQ: Record "R2R Invoice Group NIQ";
    // begin
    //     R2RSetup.Get();
    //     if not R2RSetup."Enable Invoicing By Inv. Group" then
    //         exit;
    //     if not R2RInvoiceGroupNIQ.Get("R2R Invoice Group NIQ") then
    //         R2RInvoiceGroupNIQ.Init();
    //     if not Customer.Get("Sell-to Customer No.") then
    //         Customer.Init();

    //     if R2RInvoiceGroupNIQ."Payment Terms from Customer" = R2RInvoiceGroupNIQ."Payment Terms from Customer"::" " then
    //         Validate("Payment Terms Code", Customer."Payment Terms Code");

    //     if R2RInvoiceGroupNIQ."Payment Method from Customer" = R2RInvoiceGroupNIQ."Payment Method from Customer"::" " then
    //         Validate("Payment Method Code", Customer."Payment Method Code");

    //     if R2RInvoiceGroupNIQ."Payment Terms from Customer" = R2RInvoiceGroupNIQ."Payment Terms from Customer"::Deposit then
    //         if Customer."Payment Terms Code 104FDW" <> '' then
    //             Validate("Payment Terms Code", Customer."Payment Terms Code 104FDW");

    //     if R2RInvoiceGroupNIQ."Payment Method from Customer" = R2RInvoiceGroupNIQ."Payment Method from Customer"::Deposit then
    //         if Customer."Payment Method Code 104FDW" <> '' then
    //             Validate("Payment Method Code", Customer."Payment Method Code 104FDW");
    // end;

    // procedure ValidatePostingNoSeries()
    // var
    //     R2RInvoiceGroupNIQ: Record "R2R Invoice Group NIQ";
    //     OldNoSeries: Code[20];
    // begin
    //     R2RSetup.Get();
    //     if not R2RSetup."Enable Invoicing By Inv. Group" then
    //         exit;

    //     Rec.SalesSetup.GetRecordOnce();
    //     if R2RInvoiceGroupNIQ.Get("R2R Invoice Group NIQ") and (R2RInvoiceGroupNIQ."Posting No. Series (Sales)" <> '') then
    //         Validate("Posting No. Series", R2RInvoiceGroupNIQ."Posting No. Series (Sales)")
    //     else begin
    //         OldNoSeries := Rec."No. Series";
    //         Rec."No. Series" := '';
    //         Rec.InitPostingNoSeries();
    //         Rec."No. Series" := OldNoSeries;
    //     end;
    // end;

    // local procedure UpdatePayBackExclVATSales()
    // var
    //     LoanHeader114FDW: Record LoanHeader114FDW;
    // begin
    //     if (Rec."Loan No. 114FDW" = '')
    //        or (Rec."Loan Entry Type 114FDW" <> Rec."Loan Entry Type 114FDW"::"Pay Back Cap 114FDW") then begin
    //         Rec."R2R PayBackExcl.VATSales NIQ" := false;
    //         exit;
    //     end;

    //     LoanHeader114FDW.SetRange("Loan No.", Rec."Loan No. 114FDW");
    //     LoanHeader114FDW.SetRange("Source Type", LoanHeader114FDW."Source Type"::Customer);
    //     LoanHeader114FDW.SetRange("Bill-to/Pay-to", Rec."Bill-to Customer No.");
    //     if LoanHeader114FDW.FindFirst() then
    //         if Rec."R2R PayBackExcl.VATSales NIQ" <> LoanHeader114FDW."R2R PayBackExcl.VATSales NIQ" then
    //             Rec."R2R PayBackExcl.VATSales NIQ" := LoanHeader114FDW."R2R PayBackExcl.VATSales NIQ";
    // end;

    // procedure SetPayBackExclVATSalesEditable(var PayBackExclVATSalesEditable: Boolean)
    // begin
    //     PayBackExclVATSalesEditable := (Rec."Loan No. 114FDW" <> '') and (Rec."Loan Entry Type 114FDW" = Rec."Loan Entry Type 114FDW"::"Pay Back Cap 114FDW");
    // end;

    // var
    //     Customer: Record Customer;
    //     R2RSetup: Record "R2R Extension Setup NIQ";
    //     ShiptoAddress: Record "Ship-to Address";
    //     TaxGeneralClassification: Record TaxGeneralClassification102FDW;
}
