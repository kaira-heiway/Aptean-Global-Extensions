pageextension 71632055 PurchaseOrder107FDW extends "Purchase Order"
{
  layout
  {
    addafter(Prepayment)
    {
      group("LOG Logistics 107FDW")
      {
        Caption = 'Logistics';

        field("Route 107FDW"; Rec."Route 107FDW")
        {
        }
        field("Route Limit 107FDW"; Rec."Route Limit 107FDW")
        {
        }
        field("Delivery Sequence 107FDW"; Rec."Delivery Sequence 107FDW")
        {
          Visible = false;
        }
        field("Load Zone Left 107FDW"; Rec."Load Zone Left 107FDW")
        {
        }
        field("Load Zone Right 107FDW"; Rec."Load Zone Right 107FDW")
        {
        }
        field("Load Zone Back 107FDW"; Rec."Load Zone Back 107FDW")
        {
        }
        field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
        {
        }
        field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
        {
        }
        field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
        {
        }
        field("LOG Co-driver 107FDW"; Rec."Co-Driver 107FDW")
        {
        }
        field("Trailer 107FDW"; Rec."Trailer 107FDW")
        {
        }
        field("Delivery Type 107FDW"; Rec."Delivery Type 107FDW")
        {
        }
        field("Delivery Time Code 107FDW"; Rec."Delivery Time Code 107FDW")
        {
        }
        field("Nonworking Day 107FDW"; Rec."Nonworking Day 107FDW")
        {
        }
        field("Opening Time 107FDW"; Rec."Opening Time 107FDW")
        {
        }
        field("Closing Time 107FDW"; Rec."Closing Time 107FDW")
        {
        }
        field("Shipping Agent Code 107FDW"; Rec."Shipping Agent Code 107FDW")
        {
        }
        field("LOG Shipping Agent Service 107FDW"; Rec."Shipp. Agent Serv. 107FDW")
        {
        }
        field("Logistic Status 107FDW"; Rec."Logistic Status 107FDW")
        {
        }
      }
    }
    modify("Location Code")
    {
      Editable = Editablelocation;
    }
    modify("Shipment Method Code")
    {
      Editable = EditableShipmentMethod;
    }
    addafter(WorkflowStatus)
    {
    //   part("LOG Transport Unit 107FDW"; SalTransUnitFactbox107FDW)
    //   {
    //     Visible = true;
    //   }
    }
  }
  actions
  {
    addafter(Release)
    {
    }
    addafter(IncomingDocument)
    {
      group("LOG Logistcs 107FDW")
      {
        Caption = 'Logistics';

        action("LOG Next Source Route 107FDW")
        {
          Caption = 'Next Source Route';
        }
        action("LOG Previous Source Route 107FDW")
        {
          Caption = 'Previous Source Route';
        }
        action("LOG Next Logistic Status 107FDW")
        {
          Caption = 'Update to next Logistic Status';
        }
        action("LOG Previous Logistic Status 107FDW")
        {
          Caption = 'Update to Previous Logistic Status';
        }
      }
    }
  }
  var LOGRoute: Record Route107FDW;
//   FeatureControlManagement: Codeunit FeatureControlManagement107FDW;
//   LOGIntlLogisticsHook: Codeunit IntlLogisticsHook107FDW;
//   LOGIntlPurchRouteRqst: Codeunit IntlPurchRouteRqst107FDW;
  Editablelocation: Boolean;
  EditableRouteFields: Boolean;
  EditableShipmentMethod: Boolean;
  EditableShippingAgent: Boolean;
  EditableShippingAgentService: Boolean;
  LogFactboxVisible: Boolean;
  RouteCode: Code[20];
  NewShipmentDate: Date;
  ShownDriverNotifications: Dictionary of[Text, Boolean];
  SourceType: Enum IntlDeliverySrcType107FDW;
}