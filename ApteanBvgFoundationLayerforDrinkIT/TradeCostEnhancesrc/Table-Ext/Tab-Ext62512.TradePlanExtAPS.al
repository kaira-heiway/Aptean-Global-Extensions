// tableextension 62512 "Trade Plan Ext APS" extends "Trade Plan FDW"
// {
//     fields
//     {
//         modify("Trade Partner No.")
//         {
//             trigger OnAfterValidate()
//             var
//                 TradePartnerFDW: Record "Trade Partner FDW";
//             begin
//                 if Rec."Trade Partner No." <> xRec."Trade Partner No." then begin
//                     Rec.Validate("Blanket Order No. APS", '');
//                 end;
//             end;

//         }
//         field(62500; "Apply Each Shipment APS"; Boolean)
//         {
//             Caption = 'Apply Each Shipment';
//             DataClassification = CustomerContent;
//         }
//         field(62501; "PO Creation Method APS"; Enum "PO Creation Method APS")
//         {
//             Caption = 'Purchase Order Creation';
//             DataClassification = CustomerContent;
//         }
//         field(62502; "Blanket Order No. APS"; Code[20])
//         {
//             Caption = 'Blanket Order No.';
//             DataClassification = CustomerContent;
//             TableRelation = "Purchase Header"."No." where("Document Type" = const("Blanket Order"), Status = const(Released), "Currency Code" = field("Currency Code"));
//             trigger OnLookup()
//             var
//                 PurchHeader: Record "Purchase Header";
//                 TradeCostPurchOrderAPS: Codeunit "Trade Cost Purch. Order APS";
//             begin
//                 TradeCostPurchOrderAPS.ApplyFilterFromTradePlan(PurchHeader, Rec);
//                 if Page.RunModal(Page::"Purchase List", PurchHeader) = Action::LookupOK then
//                     Rec."Blanket Order No. APS" := PurchHeader."No.";
//             end;

//             trigger OnValidate()
//             var
//                 PurchHeader: Record "Purchase Header";
//                 TradeCostPurchOrderAPS: Codeunit "Trade Cost Purch. Order APS";
//             begin
//                 if Rec."Blanket Order No. APS" = '' then begin
//                     Rec."Blanket Order Line No. APS" := 0;
//                     exit;
//                 end;

//                 TradeCostPurchOrderAPS.ApplyFilterFromTradePlan(PurchHeader, Rec);
//                 PurchHeader.FindFirst();
//                 PurchHeader.TestField(Status, PurchHeader.Status::Released);
//                 PurchHeader.TestField("Currency Code", Rec."Currency Code");

//                 // Clear line if blanket order changed
//                 Rec."Blanket Order Line No. APS" := 0;
//             end;
//         }
//         field(62503; "Blanket Order Line No. APS"; Integer)
//         {
//             Caption = 'Blanket Order Line No.';
//             DataClassification = CustomerContent;

//             trigger OnValidate()
//             begin
//                 if Rec."Blanket Order Line No. APS" <> 0 then
//                     ValidateBlanketOrderLine();
//             end;

//             trigger OnLookup()
//             var
//                 PurchLine: Record "Purchase Line";
//             begin
//                 PurchLine.SetRange("Document Type", PurchLine."Document Type"::"Blanket Order");
//                 PurchLine.SetRange("Document No.", Rec."Blanket Order No. APS");
//                 ApplyBlanketLineTypeFilter(PurchLine);
//                 if Page.RunModal(0, PurchLine) = Action::LookupOK then begin
//                     Rec."Blanket Order Line No. APS" := PurchLine."Line No.";
//                     ValidateBlanketOrderLine();
//                 end;
//             end;
//         }
//         field(62504; "Shipping Agent Code APS"; Code[10])
//         {
//             Caption = 'Shipping Agent Code';
//             FieldClass = FlowField;
//             CalcFormula = lookup("Trade Partner FDW"."Shipping Agent Code APS" where("No." = field("Trade Partner No.")));
//             Editable = false;
//         }
//     }

//     var
//         BlanketLineTypeMismatchErr: Label 'Blanket Order Line %1 has Type %2 / No. %3 which does not match the Trade Plan''s Item Charge No. %4 or G/L Account No. %5.', Comment = '%1=Line No., %2=Type, %3=No., %4=Item Charge No., %5=G/L Account No.';

//     local procedure ValidateBlanketOrderLine()
//     var
//         PurchLine: Record "Purchase Line";
//     begin
//         Rec.TestField("Blanket Order No. APS");
//         PurchLine.Get(PurchLine."Document Type"::"Blanket Order", Rec."Blanket Order No. APS", Rec."Blanket Order Line No. APS");

//         if (Rec."Item Charge No." <> '') and
//            (PurchLine.Type = PurchLine.Type::"Charge (Item)") and
//            (PurchLine."No." = Rec."Item Charge No.")
//         then
//             exit;

//         if (Rec."G/L Account No." <> '') and
//            (PurchLine.Type = PurchLine.Type::"G/L Account") and
//            (PurchLine."No." = Rec."G/L Account No.")
//         then
//             exit;

//         Error(BlanketLineTypeMismatchErr,
//             Rec."Blanket Order Line No. APS",
//             PurchLine.Type,
//             PurchLine."No.",
//             Rec."Item Charge No.",
//             Rec."G/L Account No.");
//     end;

//     local procedure ApplyBlanketLineTypeFilter(var PurchLine: Record "Purchase Line")
//     begin
//         if Rec."Item Charge No." <> '' then begin
//             PurchLine.SetRange(Type, PurchLine.Type::"Charge (Item)");
//             PurchLine.SetRange("No.", Rec."Item Charge No.");
//         end else
//             if Rec."G/L Account No." <> '' then begin
//                 PurchLine.SetRange(Type, PurchLine.Type::"G/L Account");
//                 PurchLine.SetRange("No.", Rec."G/L Account No.");
//             end;
//     end;
// }
