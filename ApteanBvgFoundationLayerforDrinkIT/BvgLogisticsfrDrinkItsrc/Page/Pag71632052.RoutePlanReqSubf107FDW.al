page 71632052 RoutePlanReqSubf107FDW
{
  Caption = 'Route Planning Request';
  SourceTable = RoutePlanRequest107FDW;
  PageType = CardPart;

  layout
  {
    area(Content)
    {
      repeater(Group)
      {
        field("Error Message"; Rec."Error Message")
        {
        }
        field("Document Type"; Rec."Source Document Type")
        {
        }
        field("Source No."; Rec."Source No.")
        {
        }
        field("Shipment Date"; Rec."Shipment / Receipt Date")
        {
        }
        field(Route; Rec.Route)
        {
        }
        field("Route Limit 107FDW"; Rec."Route Limit")
        {
        }
        field("Delivery Sequence 107FDW"; Rec."Delivery Sequence")
        {
        }
        field("Drive No."; Rec."Drive No.")
        {
        }
        field("Sales Logistic Status"; Rec."Sales Logistic Status")
        {
        }
        field("Shipment Method Code"; Rec."Shipment Method Code")
        {
        }
        field("Route Planning No."; Rec."Route Planning No.")
        {
          Visible = false;
        }
        field("Multiple Route Order"; Rec."Multiple Route Order")
        {
        }
        field("Delivery Type"; Rec."Delivery Type")
        {
        }
        field("Delivery Time Code"; Rec."Delivery Time Code")
        {
        }
        field("Opening Time"; Rec."Opening Time")
        {
        }
        field("Closing Time"; Rec."Closing Time")
        {
        }
        field("Nonworking Day"; Rec."Nonworking Day")
        {
        }
        field("Two Driver Required"; Rec."Two Driver Required")
        {
        }
        field("Load/Unload Zone Left"; Rec."Load/Unload Zone Left")
        {
        }
        field("Load/Unload Zone Right"; Rec."Load/Unload Zone Right")
        {
        }
        field("Load/Unload Zone Back"; Rec."Load/Unload Zone Back")
        {
        }
        field("Sell-To/Buy From No."; Rec."Sell-To/Buy From No.")
        {
        }
        field("Ship-To Name"; Rec."Ship./Rec. Name")
        {
        }
        field("Ship-To City"; Rec."Ship./Rec. City")
        {
        }
        field("Ship/Receipt-To Name 2"; Rec."Ship/Receipt-To Name 2")
        {
          Visible = false;
        }
        field("Ship/Receipt-To Address"; Rec."Ship/Receipt-To Address")
        {
          Visible = false;
        }
        field("Ship/Receipt-To Address 2"; Rec."Ship/Receipt-To Address 2")
        {
          Visible = false;
        }
        field("Ship/Receipt-To Post Code"; Rec."Ship/Receipt-To Post Code")
        {
          Visible = false;
        }
        field("Ship/Rcpt-To Country/Reg. Code"; Rec."Ship/Rcpt-To Country/Reg. Code")
        {
          Visible = false;
        }
        field("Shipping Weight"; Rec."Shipping Weight")
        {
        }
        field("Receiving Weight"; Rec."Receiving Weight")
        {
        }
        field("Shipping Pallet"; Rec."Shipping Pallet")
        {
        }
        field("Receiving Pallet"; Rec."Receiving Pallet")
        {
        }
      }
    }
  }
  actions
  {
    area(Processing)
    {
      action("Log Open Source Document 107FDW")
      {
        Caption = 'Open Source Document';
      }
      group(Warehouse)
      {
        Caption = 'Warehouse';

        group(CreateWarehouse)
        {
          Caption = 'Create Warehouse';

          action("LoG Create/Modify Warehouse Shipment 107FDW")
          {
            Caption = 'Create/Modify Warehouse Shipment';
          }
          action("LoG Create/Modify Warehouse Receipt 107FDW")
          {
            Caption = 'Create/Modify Warehouse Receipt';
          }
        }
        group("warehouse Document")
        {
          Caption = 'Warehouse Documents';

          action("Whse. Shipment Lines")
          {
            Caption = 'Warehouse shipment lines';
          }
          action("Whse. Receipt Lines")
          {
            Caption = 'Warehouse receipt lines';
          }
        }
        group("Posted Warehouse")
        {
          Caption = 'Posted Warehouse';

          action("Posted Whse. Shpt Lines")
          {
            Caption = 'Posted warehouse shipment lines';
          }
          action("Posted Whse. Rcpt Lines")
          {
            Caption = 'Posted warehouse receipt lines';
          }
        }
      }
      group(RoutePlanning)
      {
        Caption = 'Route Planning';

        action("Log Move Route Planning 107FDW")
        {
          Caption = 'Move Route Planning';
        }
        action("LOG Next Source Route 107FDW")
        {
          Caption = 'Next Source Route';
          Visible = true;
        }
        action("LOG Previous Source Route 107FDW")
        {
          Caption = 'Previous Source Route';
          Visible = true;
        }
        action("LOG Next Shipment Date 107FDW")
        {
          Caption = 'Next Shipment Date';
        }
        action("LOG Previous Shipment Date 107FDW")
        {
          Caption = 'Previous Shipment Date';
        }
        action("LOG Next Logistic Status 107FDW")
        {
          Caption = 'Update to next Logistic Status';
        }
        action("LOG Previous Logistic Status 107FDW")
        {
          Caption = 'Update to Previous Logistic Status';
        }
        action("LOG ShowComment 107FDW")
        {
          Caption = 'Show Comment';
        }
      }
      group("ASM Advanced Sales 107FDW")
      {
        Caption = 'Advanced Sales';
        Visible = true;

        action("ASM AdvancedSales 107FDW")
        {
          Caption = 'Backorder Lines';
        }
      }
      group(ReturnEntry)
      {
        Caption = 'Return Entry';

        action("EGM ReturnEntry 107FDW")
        {
          Caption = 'Return Entry';
          Visible = true;
        }
      }
      group(Payment)
      {
        Caption = 'Route Payment';

        action("LOG Cash Receipt Journal 107FDW")
        {
          Caption = 'Create Cash Payment Journal';
        }
        action("LOG Card Receipt Journal 107FDW")
        {
          Caption = 'Create Card Payment Journal';
        }
        action("LOG Other Receipt Journal 107FDW")
        {
          Caption = 'Create Other Payment Journal';
        }
      }
      group("P&osting")
      {
        Caption = 'P&osting';

        action(Post)
        {
          Caption = 'P&ost';
          Visible = true;
        }
        action(PostAndSend)
        {
          Caption = 'Post and Send';
          Visible = true;
        }
        action(PreviewPosting)
        {
          Caption = 'Preview Posting';
          Visible = true;
        }
      }
      group(Invoice)
      {
        Caption = 'Invoice';

        action("Create Periodic Invoices")
        {
          Caption = 'Create Periodic Invoices';
        }
        action("Create Periodic Credit memos")
        {
          Caption = 'Create Periodic Credit memos';
        }
      }
      group("&Print/Send")
      {
        Caption = '&Print/Send';

        action("Print Picklist")
        {
          Caption = 'Print Picklist';
          Visible = true;
        }
        action("Print Order ")
        {
          Caption = 'Print Order';
        }
      }
    }
  }
  var LogisticsSetup: Record LogisticsSetup107FDW;
  LOGRoutePlanningWork: Record RoutePlanningWork107FDW;
  DocumentPrint: Codeunit Microsoft.Foundation.Reporting."Document-Print";
//   EGMLOGIntegration101FDW: Codeunit EGMLOGIntegration101FDW;
//   GlobalLOGIntlLogisticsHook: Codeunit IntlLogisticsHook107FDW;
//   LOGIntlPaymentMgt: Codeunit IntlPaymentMgt107FDW;
  AsmEnabled: Boolean;
  ASMVISIBLE: Boolean;
  EditableRoute: Boolean;
  ROVisible: Boolean;
  ScopeRepeaterEnabled: Boolean;
  Transferinbound: Boolean;
  VisiblePostandSend: Boolean;
  VisiblePostDocument: Boolean;
  RouteCode: Code[20];
  NewShipmentDate: Date;
  AccounTType: Enum Microsoft.Finance.GeneralLedger.Journal."Gen. Journal Account Type";
  SourceType: Enum IntlDeliverySrcType107FDW;
  Usage: Option "Order Confirmation", "Work Order", "Pick Instruction";
  WkshStyle: Text;
}