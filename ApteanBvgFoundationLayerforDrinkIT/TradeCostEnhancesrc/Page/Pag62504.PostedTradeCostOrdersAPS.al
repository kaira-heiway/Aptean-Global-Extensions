page 62504 "Posted Trade Cost Orders APS"
{
    ApplicationArea = All;
    Caption = 'Posted Trade Cost Orders';
    PageType = List;
    SourceTable = "Posted Trade Cost Order APS";
    SourceTableView = sorting("Entry No.") order(descending);
    //CardPageId = "Posted Trade Cost Card APS";
    UsageCategory = Lists;
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Filters)
            {
                Caption = 'Filters';

                field(StatusFilterAPS; StatusFilterTextAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                    ToolTip = 'Filter by processing status. Use | for multiple (e.g. New|Invoiced). Leave blank to show all.';

                    trigger OnValidate()
                    begin
                        ApplyFiltersAPS();
                    end;

                    // trigger OnLookup(var Text: Text): Boolean
                    // var
                    //     TempBuffer: Record "Name/Value Buffer" temporary;
                    //     //StatusSelectionPage: Page "Status Selection APS";
                    //     OrdinalValue: Integer;
                    //     StatusIndex: Integer;
                    //     FilterText: Text;
                    // begin
                    //     foreach OrdinalValue in "Trade Cost Order Status APS".Ordinals() do begin
                    //         StatusIndex += 1;
                    //         TempBuffer.Init();
                    //         TempBuffer.ID := StatusIndex;
                    //         TempBuffer.Name := CopyStr("Trade Cost Order Status APS".Names().Get("Trade Cost Order Status APS".Ordinals().IndexOf(OrdinalValue)), 1, MaxStrLen(TempBuffer.Name));
                    //         TempBuffer.Insert();
                    //     end;

                    //     StatusSelectionPage.SetRecords(TempBuffer);
                    //     StatusSelectionPage.LookupMode(true);
                    //     if StatusSelectionPage.RunModal() = Action::LookupOK then begin
                    //         StatusSelectionPage.SetSelectionFilter(TempBuffer);
                    //         if TempBuffer.FindSet() then
                    //             repeat
                    //                 if FilterText = '' then
                    //                     FilterText := TempBuffer.Name
                    //                 else
                    //                     FilterText := FilterText + '|' + TempBuffer.Name;
                    //             until TempBuffer.Next() = 0;
                    //         StatusFilterTextAPS := CopyStr(FilterText, 1, MaxStrLen(StatusFilterTextAPS));
                    //         SetRecordFiltersAPS();
                    //         Text := StatusFilterTextAPS;
                    //         exit(true);
                    //     end;
                    //     exit(false);
                    // end;
                }
                field(ShippingAgentFilterAPS; ShippingAgentFilterAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Shipping Agent';
                    ToolTip = 'Filter by shipping agent code. Supports wildcards (* ?) and | for multiple values.';

                    trigger OnValidate()
                    begin
                        ApplyFiltersAPS();
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        ShippingAgent: Record "Shipping Agent";
                        ShippingAgentsPage: Page "Shipping Agents";
                        FilterText: Text;
                    begin
                        ShippingAgentsPage.LookupMode(true);
                        if ShippingAgentsPage.RunModal() = Action::LookupOK then begin
                            ShippingAgentsPage.SetSelectionFilter(ShippingAgent);
                            if ShippingAgent.FindSet() then
                                repeat
                                    if FilterText = '' then
                                        FilterText := ShippingAgent.Code
                                    else
                                        FilterText := FilterText + '|' + ShippingAgent.Code;
                                until ShippingAgent.Next() = 0;
                            ShippingAgentFilterAPS := CopyStr(FilterText, 1, MaxStrLen(ShippingAgentFilterAPS));
                            SetRecordFiltersAPS();
                            Text := ShippingAgentFilterAPS;
                            exit(true);
                        end;
                        exit(false);
                    end;
                }
                field(ServiceFilterAPS; ServiceFilterAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Shipping Agent Service';
                    ToolTip = 'Filter by shipping agent service code. Supports wildcards (* ?) and | for multiple values.';

                    trigger OnValidate()
                    begin
                        ApplyFiltersAPS();
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        ShippingAgentServices: Record "Shipping Agent Services";
                        ServicesPage: Page "Shipping Agent Services";
                        FilterText: Text;
                    begin
                        if ShippingAgentFilterAPS <> '' then
                            ShippingAgentServices.SetFilter("Shipping Agent Code", ShippingAgentFilterAPS);
                        ServicesPage.SetTableView(ShippingAgentServices);
                        ServicesPage.LookupMode(true);
                        if ServicesPage.RunModal() = Action::LookupOK then begin
                            ServicesPage.SetSelectionFilter(ShippingAgentServices);
                            if ShippingAgentServices.FindSet() then
                                repeat
                                    if FilterText = '' then
                                        FilterText := ShippingAgentServices.Code
                                    else
                                        FilterText := FilterText + '|' + ShippingAgentServices.Code;
                                until ShippingAgentServices.Next() = 0;
                            ServiceFilterAPS := CopyStr(FilterText, 1, MaxStrLen(ServiceFilterAPS));
                            SetRecordFiltersAPS();
                            Text := ServiceFilterAPS;
                            exit(true);
                        end;
                        exit(false);
                    end;
                }
                field(PostingDateFromFilterAPS; PostingDateFromFilterAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Posting Date From';
                    ToolTip = 'Filter by posting date (from).';

                    trigger OnValidate()
                    begin
                        ApplyFiltersAPS();
                    end;
                }
                field(PostingDateToFilterAPS; PostingDateToFilterAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Posting Date To';
                    ToolTip = 'Filter by posting date (to).';

                    trigger OnValidate()
                    begin
                        ApplyFiltersAPS();
                    end;
                }
                field(RouteFilterAPS; RouteFilterAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Route';
                    ToolTip = 'Filter by route code. Supports wildcards (* ?) and | for multiple values.';

                    trigger OnValidate()
                    begin
                        ApplyFiltersAPS();
                    end;

                    // trigger OnLookup(var Text: Text): Boolean
                    // var
                    //     Route: Record Route107FDW;
                    //     RoutesPage: Page Routes107FDW;
                    //     FilterText: Text;
                    // begin
                    //     RoutesPage.LookupMode(true);
                    //     if RoutesPage.RunModal() = Action::LookupOK then begin
                    //         RoutesPage.SetSelectionFilter(Route);
                    //         if Route.FindSet() then
                    //             repeat
                    //                 if FilterText = '' then
                    //                     FilterText := Route.Code
                    //                 else
                    //                     FilterText := FilterText + '|' + Route.Code;
                    //             until Route.Next() = 0;
                    //         RouteFilterAPS := CopyStr(FilterText, 1, MaxStrLen(RouteFilterAPS));
                    //         SetRecordFiltersAPS();
                    //         Text := RouteFilterAPS;
                    //         exit(true);
                    //     end;
                    //     exit(false);
                    // end;
                }
            }
            repeater(Lines)
            {
                Editable = IsLineEditableAPS;

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the entry number.';
                }
                field("Trade Plan Code"; Rec."Trade Plan Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the trade plan code.';
                }
                field("Trade Order No."; Rec."Trade Order No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the trade order number created from this cost.';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    Editable = ShippingFieldsEditableAPS;
                    ToolTip = 'Specifies the shipping agent code.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    Editable = ShippingFieldsEditableAPS;
                    ToolTip = 'Specifies the shipping agent service code.';
                }
                field("Route Code"; Rec."Route Code")
                {
                    ApplicationArea = All;
                    Editable = ShippingFieldsEditableAPS;
                    ToolTip = 'Specifies the route code.';
                }
                field("Posted Whse. Shipment No."; Rec."Posted Whse. Shipment No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the posted warehouse shipment number.';

                    trigger OnDrillDown()
                    var
                        PostedWhseShptHeader: Record "Posted Whse. Shipment Header";
                    begin
                        if Rec."Posted Whse. Shipment No." = '' then
                            exit;
                        if PostedWhseShptHeader.Get(Rec."Posted Whse. Shipment No.") then
                            Page.Run(Page::"Posted Whse. Shipment", PostedWhseShptHeader);
                    end;
                }
                field("Posted Whse. Receipt No."; Rec."Posted Whse. Receipt No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the posted warehouse receipt number.';

                    trigger OnDrillDown()
                    var
                        PostedWhseRcptHeader: Record "Posted Whse. Receipt Header";
                    begin
                        if Rec."Posted Whse. Receipt No." = '' then
                            exit;
                        if PostedWhseRcptHeader.Get(Rec."Posted Whse. Receipt No.") then
                            Page.Run(Page::"Posted Whse. Receipt", PostedWhseRcptHeader);
                    end;
                }
                field("Driver Code"; Rec."Driver Code")
                {
                    ApplicationArea = All;
                    Editable = ShippingFieldsEditableAPS;
                    ToolTip = 'Specifies the driver code.';
                }
                field("Vehicle Code"; Rec."Vehicle Code")
                {
                    ApplicationArea = All;
                    Editable = ShippingFieldsEditableAPS;
                    ToolTip = 'Specifies the vehicle code.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the amount.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the posting date.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the vendor number for the purchase order.';
                }
                field("Purchase Order No."; Rec."Purchase Order No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the purchase order number created from this cost.';

                    trigger OnDrillDown()
                    var
                        PurchaseHeader: Record "Purchase Header";
                    begin
                        if Rec."Purchase Order No." = '' then
                            exit;
                        if PurchaseHeader.Get(PurchaseHeader."Document Type"::Order, Rec."Purchase Order No.") then
                            Page.Run(Page::"Purchase Order", PurchaseHeader);
                    end;
                }
                field("Blanket Order No."; Rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the blanket purchase order number.';
                }
                field("Blanket Order Line No."; Rec."Blanket Order Line No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the blanket purchase order line number.';
                }
                field("Rate Type"; Rec."Rate Type")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the rate type.';
                }
                field("Unit Of Measure Code"; Rec."Unit Of Measure Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the unit of measure used to filter source lines when Rate Type is Unit Of Measure.';
                }
                field("Original Amount"; Rec."Original Amount")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the original amount before price updates.';
                }
                field("Price Updated"; Rec."Price Updated")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies whether the price was updated after posting.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the processing status of this trade cost order.';
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies whether this trade cost was successfully posted. If not, use Post Trade Cost to retry after fixing the underlying issue (e.g. Trade Plan G/L Account or dimension setup).';
                }
                field(OrigSourceDocNoAPS; OrigSourceDocNoAPS)
                {
                    ApplicationArea = All;
                    Caption = 'Source Document No.';
                    Editable = false;
                    ToolTip = 'Specifies the original source document number(s) from the accrual entries.';

                    // trigger OnDrillDown()
                    // begin
                    //     DrillDownSourceDocs();
                    // end;
                }
                field("Cost Center Code"; Rec."Cost Center Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the cost center code for this trade cost order.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the currency code from the pricing record.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
    //         action(PostTradeCostAPS)
    //         {
    //             Caption = 'Post Trade Cost';
    //             ApplicationArea = All;
    //             ToolTip = 'Retry posting a trade cost that failed to post automatically (Posted = No), after fixing the underlying issue.';
    //             Image = Post;
    //             Enabled = not Rec.Posted;

    //             trigger OnAction()
    //             var
    //                 TradeCostPosting: Codeunit "Trade Cost Posting APS";
    //             begin
    //                 TradeCostPosting.RetryPostTradeCostOrder(Rec);
    //                 CurrPage.Update(false);
    //             end;
    //         }
    //         action(ShowAccrualEntriesAPS)
    //         {
    //             Caption = 'Show Accrual Entries';
    //             ApplicationArea = All;
    //             ToolTip = 'View the Trade Accrual Entries for this trade cost order.';
    //             Image = Entries;

    //             trigger OnAction()
    //             var
    //                 TradeAccrualEntryInt: Record "Trade Accrual Entry (Int.) FDW";
    //             begin
    //                 TradeAccrualEntryInt.SetRange("Trade Plan No.", Rec."Trade Plan Code");
    //                 TradeAccrualEntryInt.SetRange("Trade Cost Hdr. No. APS", Rec."Trade Order No.");
    //                 Page.Run(0, TradeAccrualEntryInt);
    //             end;
    //         }
    //         action(UpdatePricesAPS)
    //         {
    //             Caption = 'Update Prices';
    //             ApplicationArea = All;
    //             ToolTip = 'Retrieve latest pricing and update trade cost amounts for selected orders.';
    //             Image = UpdateUnitCost;

    //             trigger OnAction()
    //             var
    //                 SelectedRecords: Record "Posted Trade Cost Order APS";
    //                 UpdatePriceMgt: Codeunit "Trade Cost Purch. Order APS";
    //             begin
    //                 CurrPage.SetSelectionFilter(SelectedRecords);
    //                 UpdatePriceMgt.RunUpdatePrices(SelectedRecords);
    //                 CurrPage.Update(false);
    //             end;
    //         }
            action(CreatePurchaseOrderAPS)
            {
                Caption = 'Create Purchase Order';
                ApplicationArea = All;
                ToolTip = 'Generate a Purchase Order from the selected trade cost orders.';
                Image = CreateDocument;
                Enabled = Rec.Posted;

                // trigger OnAction()
                // var
                //     SelectedRecords: Record "Posted Trade Cost Order APS";
                //     PurchOrderMgt: Codeunit "Trade Cost Purch. Order APS";
                // begin
                //     CurrPage.SetSelectionFilter(SelectedRecords);
                //     PurchOrderMgt.CreatePurchaseOrderFromSelection(SelectedRecords);
                //     CurrPage.Update(false);
                // end;
            }
    //         action(AddTradeCostAPS)
    //         {
    //             Caption = 'Add Trade Cost';
    //             ApplicationArea = All;
    //             ToolTip = 'Add a new trade cost order. If the current record has a posted warehouse shipment, it will be pre-filled.';
    //             Image = AddAction;

    //             trigger OnAction()
    //             var
    //                 PostedWhseShptHeader: Record "Posted Whse. Shipment Header";
    //                 AddWhseDocTradeCost: Report "Add Whse. Doc Trade Cost APS";
    //             begin
    //                 if (Rec."Posted Whse. Shipment No." <> '') and PostedWhseShptHeader.Get(Rec."Posted Whse. Shipment No.") then
    //                     AddWhseDocTradeCost.SetPostedWhseShipmentHeader(PostedWhseShptHeader)
    //                 else
    //                     AddWhseDocTradeCost.SetDocumentSelectable();
    //                 AddWhseDocTradeCost.RunModal();
    //                 CurrPage.Update(false);
    //             end;
    //         }
    //         action(ShowPriceRecordAPS)
    //         {
    //             Caption = 'Show Price Record';
    //             ApplicationArea = All;
    //             ToolTip = 'Open the pricing record that matches this trade cost order based on Shipping Agent, Route, and Service.';
    //             Image = Price;

    //             trigger OnAction()
    //             var
    //                 TradeCostPricing: Record "Trade Cost Pricing APS";
    //             begin
    //                 TradeCostPricing.SetRange("Shipping Agent Code", Rec."Shipping Agent Code");
    //                 TradeCostPricing.SetRange("Route Code", Rec."Route Code");
    //                 if Rec."Shipping Agent Service Code" <> '' then
    //                     TradeCostPricing.SetRange("Shipping Agent Service Code", Rec."Shipping Agent Service Code");
    //                 if TradeCostPricing.FindFirst() then begin
    //                     if TradeCostPricing.Next() = 0 then
    //                         Page.Run(Page::"Trade Cost Pricing Card APS", TradeCostPricing)
    //                     else
    //                         Page.Run(Page::"Trade Cost Pricing List APS", TradeCostPricing);
    //                 end else
    //                     Page.Run(Page::"Trade Cost Pricing List APS", TradeCostPricing);
    //             end;
    //         }
    //         action(ReverseAccrualEntriesAPS)
    //         {
    //             Caption = 'Reverse Accrual Entries';
    //             ApplicationArea = All;
    //             ToolTip = 'Reverse all interim accrual entries for the selected trade cost orders that have not yet been reversed or invoiced.';
    //             Image = ReverseLines;

    //             trigger OnAction()
    //             var
    //                 TradeAccrualEntryInt: Record "Trade Accrual Entry (Int.) FDW";
    //                 TMSetup: Record "Trade Management Setup FDW";
    //                 TradeCostReversal: Codeunit "Trade Cost Reversal APS";
    //             begin
    //                 TradeAccrualEntryInt.SetRange("Trade Cost Hdr. No. APS", Rec."Trade Order No.");
    //                 TradeAccrualEntryInt.SetRange(Reversed, false);
    //                 TradeAccrualEntryInt.SetRange("Date Invoiced.", 0D);
    //                 if TradeAccrualEntryInt.IsEmpty() then begin
    //                     Message(NoEntriesToReverseMsg);
    //                     exit;
    //                 end;

    //                 if not Confirm(ConfirmReverseAllMsg) then
    //                     exit;

    //                 TMSetup.SetLoadFields("Cost Center Dim. Code APS");
    //                 if not TMSetup.Get() then
    //                     TMSetup.Init();

    //                 TradeCostReversal.ReverseAccrualEntries(
    //                     TradeAccrualEntryInt,
    //                     Rec."Trade Order No.",
    //                     TMSetup."Cost Center Dim. Code APS",
    //                     Rec."Cost Center Code");

    //                 CurrPage.Update(false);
    //             end;
    //         }
    //         action(UpdateBlanketOrderAPS)
    //         {
    //             Caption = 'Update Blanket Order';
    //             ApplicationArea = All;
    //             ToolTip = 'Update the blanket order reference on selected entries from their Trade Plan.';
    //             Image = BlanketOrder;

    //             trigger OnAction()
    //             var
    //                 SelectedRecords: Record "Posted Trade Cost Order APS";
    //                 TradePlan: Record "Trade Plan FDW";
    //                 UpdateCount: Integer;
    //             begin
    //                 CurrPage.SetSelectionFilter(SelectedRecords);
    //                 if SelectedRecords.IsEmpty() then
    //                     exit;
    //                 TradePlan.SetLoadFields("Blanket Order No. APS", "Blanket Order Line No. APS");
    //                 SelectedRecords.FindSet(true);
    //                 repeat
    //                     if TradePlan.Get(SelectedRecords."Trade Plan Code") then begin
    //                         SelectedRecords."Blanket Order No." := TradePlan."Blanket Order No. APS";
    //                         SelectedRecords."Blanket Order Line No." := TradePlan."Blanket Order Line No. APS";
    //                         SelectedRecords.Modify();
    //                         UpdateCount += 1;
    //                     end;
    //                 until SelectedRecords.Next() = 0;
    //                 CurrPage.Update(false);
    //                 Message(BlanketOrdersUpdatedMsg, UpdateCount);
    //             end;
    //         }
    //         action(DeletePurchaseOrders)
    //         {
    //             Caption = 'Delete Purchase Orders';
    //             ApplicationArea = All;
    //             ToolTip = 'Delete the created purchase orders for selected lines.';
    //             Image = Delete;

    //             trigger OnAction()
    //             var
    //                 SelectedRecords: Record "Posted Trade Cost Order APS";
    //                 PurchaseHeader: Record "Purchase Header";
    //                 UpdateCount: Integer;
    //             begin
    //                 CurrPage.SetSelectionFilter(SelectedRecords);
    //                 SelectedRecords.SetRange(Status, Rec.Status::"Purchase Order Created");
    //                 SelectedRecords.SetFilter("Purchase Order No.", '<>%1', '');

    //                 if SelectedRecords.FindSet() then begin
    //                     repeat
    //                         PurchaseHeader.SetLoadFields("Your Reference");
    //                         if PurchaseHeader.get(PurchaseHeader."Document Type"::Order, SelectedRecords."Purchase Order No.") then begin
    //                             PurchaseHeader.Delete(true);
    //                             UpdateCount += 1;
    //                         end;
    //                     until SelectedRecords.Next() = 0;
    //                     Message(DeletedPurchaseOrdersMsg, UpdateCount);
    //                 end;
    //                 CurrPage.Update(false);
    //             end;
    //         }
            }
    //     area(Promoted)
    //     {
    //         group(Category_Process)
    //         {
    //             Caption = 'Process';

    //             actionref(PostTradeCostAPS_Promoted; PostTradeCostAPS) { }
    //             actionref(ShowAccrualEntriesAPS_Promoted; ShowAccrualEntriesAPS) { }
    //             actionref(UpdatePricesAPS_Promoted; UpdatePricesAPS) { }
    //             actionref(CreatePurchaseOrderAPS_Promoted; CreatePurchaseOrderAPS) { }
    //             actionref(AddTradeCostAPS_Promoted; AddTradeCostAPS) { }
    //             actionref(ShowPriceRecordAPS_Promoted; ShowPriceRecordAPS) { }
    //             actionref(UpdateBlanketOrderAPS_Promoted; UpdateBlanketOrderAPS) { }
    //             actionref(ReverseAccrualEntriesAPS_Promoted; ReverseAccrualEntriesAPS) { }
    //         }
    //     }
    }

    // trigger OnOpenPage()
    // var
    //     TMSetup: Record "Trade Management Setup FDW";
    // begin
    //     if not TMSetup.Get() then
    //         Error(FeatureDisabledErr);
    //     if not TMSetup."Trade Cost Enh. Enabled APS" then
    //         Error(FeatureDisabledErr);
    //     if Rec.HasFilter then begin
    //         StatusFilterTextAPS := CopyStr(Rec.GetFilter(Status), 1, MaxStrLen(StatusFilterTextAPS));
    //         ShippingAgentFilterAPS := CopyStr(Rec.GetFilter("Shipping Agent Code"), 1, MaxStrLen(ShippingAgentFilterAPS));
    //         ServiceFilterAPS := CopyStr(Rec.GetFilter("Shipping Agent Service Code"), 1, MaxStrLen(ServiceFilterAPS));
    //         RouteFilterAPS := CopyStr(Rec.GetFilter("Route Code"), 1, MaxStrLen(RouteFilterAPS));
    //     end else begin
    //         StatusFilterTextAPS := Format(Rec.Status::New);
    //     end;
    //     ApplyFiltersAPS();
    //     CurrPage.Update(false);
    // end;

    // trigger OnAfterGetRecord()
    // begin
    //     IsLineEditableAPS := not (Rec.Status in [Rec.Status::Received, Rec.Status::Invoiced]);
    //     SetShippingFieldsEditableAPS();
    //     CalcOrigSourceDocNo();
    //     UpdateReceivedStatusForCurrentRecord();
    // end;

    local procedure ApplyFiltersAPS()
    begin
        SetRecordFiltersAPS();
        CurrPage.Update(false);
    end;

    local procedure SetRecordFiltersAPS()
    begin
        if StatusFilterTextAPS <> '' then
            Rec.SetFilter(Status, StatusFilterTextAPS)
        else
            Rec.SetRange(Status);

        if ShippingAgentFilterAPS <> '' then
            Rec.SetFilter("Shipping Agent Code", ShippingAgentFilterAPS)
        else
            Rec.SetRange("Shipping Agent Code");

        if ServiceFilterAPS <> '' then
            Rec.SetFilter("Shipping Agent Service Code", ServiceFilterAPS)
        else
            Rec.SetRange("Shipping Agent Service Code");

        if RouteFilterAPS <> '' then
            Rec.SetFilter("Route Code", RouteFilterAPS)
        else
            Rec.SetRange("Route Code");

        if (PostingDateFromFilterAPS <> 0D) and (PostingDateToFilterAPS <> 0D) then
            Rec.SetRange("Posting Date", PostingDateFromFilterAPS, PostingDateToFilterAPS)
        else
            if PostingDateFromFilterAPS <> 0D then
                Rec.SetFilter("Posting Date", '%1..', PostingDateFromFilterAPS)
            else
                if PostingDateToFilterAPS <> 0D then
                    Rec.SetFilter("Posting Date", '..%1', PostingDateToFilterAPS)
                else
                    Rec.SetRange("Posting Date");
    end;

    local procedure UpdateReceivedStatusForCurrentRecord()
    var
        PurchRcptLine: Record "Purch. Rcpt. Line";
    begin
        if Rec.Status <> Rec.Status::"Purchase Order Created" then
            exit;
        if Rec."Purchase Order No." = '' then
            exit;
        PurchRcptLine.SetLoadFields("Order No.");
        PurchRcptLine.SetRange("Order No.", Rec."Purchase Order No.");
        if not PurchRcptLine.IsEmpty() then begin
            Rec.Status := Rec.Status::Received;
            Rec.Modify();
        end;
    end;

    var
        IsLineEditableAPS: Boolean;
        ShippingFieldsEditableAPS: Boolean;
        PostingDateFromFilterAPS: Date;
        PostingDateToFilterAPS: Date;
        BlanketOrdersUpdatedMsg: Label '%1 entries updated with blanket order reference.', Comment = '%1 = Count';
        DeletedPurchaseOrdersMsg: Label '%1 purchase orders deleted.', Comment = '%1 = Count';
        ConfirmReverseAllMsg: Label 'Do you want to reverse all interim accrual entries for this trade cost order?';
        FeatureDisabledErr: Label 'Trade Cost Enhancement is not enabled in Trade Management Setup.';
        NoEntriesToReverseMsg: Label 'There are no accrual entries to reverse for this trade cost order.';
        OrigSourceDocNoAPS: Text[100];
        RouteFilterAPS: Text[100];
        ServiceFilterAPS: Text[100];
        ShippingAgentFilterAPS: Text[100];
        StatusFilterTextAPS: Text[100];

    // local procedure CalcOrigSourceDocNo()
    // var
    //     SourceDocHelper: Codeunit "Trade Cost Document Mgt. APS";
    // begin
    //     OrigSourceDocNoAPS := SourceDocHelper.CalcOrigSourceDocNo(Rec."Trade Plan Code", Rec."Trade Order No.");
    // end;

    // local procedure DrillDownSourceDocs()
    // var
    //     SourceDocHelper: Codeunit "Trade Cost Document Mgt. APS";
    // begin
    //     SourceDocHelper.DrillDownSourceDocs(Rec."Trade Plan Code", Rec."Trade Order No.");
    // end;

    // local procedure SetShippingFieldsEditableAPS()
    // var
    //     UserSetup: Record "User Setup";
    // begin
    //     ShippingFieldsEditableAPS := false;
    //     if Rec.Status <> "Trade Cost Order Status APS"::New then
    //         exit;
    //     if not UserSetup.Get(UserId) then
    //         exit;
    //     ShippingFieldsEditableAPS := UserSetup."Allow Edit PTCO APS";
    // end;
}
