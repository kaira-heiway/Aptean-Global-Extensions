pageextension 71632057 TransferOrder107FDW extends "Transfer Order"
{
  layout
  {
    addafter("Foreign Trade")
    {
      group("LOG Logistics 107FDW")
      {
        Caption = 'Logistics';

        field("Route 107FDW"; Rec."Route 107FDW")
        {
        }
        field("Unload Zone Left 107FDW"; Rec."Unload Zone Left 107FDW")
        {
        }
        field("Unload Zone Right 107FDW"; Rec."Unload Zone Right 107FDW")
        {
        }
        field("Unload Zone Back 107FDW"; Rec."Unload Zone Back 107FDW")
        {
        }
        field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
        {
        }
        field("LOG Shipment Drive No. 107FDW"; Rec."Drive No. 107FDW")
        {
        }
        field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
        {
        }
        field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
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
        field("Opening Time 107FDW"; Rec."Opening Time 107FDW")
        {
        }
        field("Closing Time 107FDW"; Rec."Closing Time 107FDW")
        {
        }
      }
    }
    addafter(Control1905767507)
    {
    //   part("LOG Transport Unit 107FDW"; SalTransUnitFactbox107FDW)
    //   {
    //     Visible = true;
    //   }
    }
    modify("Shipping Agent Code")
    {
      Editable = EditableShippingAgent;
    }
    modify("Shipping Agent Service Code")
    {
      Editable = EditableShippingAgentService;
    }
    modify("Shipment Method Code")
    {
      Editable = EditableShipmentMethod;
    }
  }
  var LOGRoute: Record Route107FDW;
//   FeatureControlManagement: Codeunit FeatureControlManagement107FDW;
//   LOGIntlLogisticsHook: Codeunit IntlLogisticsHook107FDW;
  EditableRouteFields: Boolean;
  EditableShipmentMethod: Boolean;
  EditableShippingAgent: Boolean;
  EditableShippingAgentService: Boolean;
  LogFactboxVisible: Boolean;
  ShownDriverNotifications: Dictionary of[Text, Boolean];
}