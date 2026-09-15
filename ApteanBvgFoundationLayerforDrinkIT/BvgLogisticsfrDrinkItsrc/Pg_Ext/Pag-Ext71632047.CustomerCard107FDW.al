pageextension 71632047 CustomerCard107FDW extends "Customer Card"
{
  layout
  {
    addafter(Shipping)
    {
      group("LOG LOGLogistics 107FDW")
      {
        Caption = 'Logistics';

        field("Default Route 107FDW"; Rec."Default Route 107FDW")
        {
        }
        field("Route Limit 107FDW"; Rec."Route Limit 107FDW")
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
        field("LOG Two Drivers 107FDW"; Rec."Two Drivers Req. 107FDW")
        {
        }
        field("Key Number 107FDW"; Rec."Key Number 107FDW")
        {
        }
        field("Cue Scan Type 107FDW"; Rec."Cue Scan Type 107FDW")
        {
        }
        field("LOG Key QR Code 107FDW"; Rec."Key Scan Code 107FDW")
        {
        }
        field("Delivery Type 107FDW"; Rec."Delivery Type 107FDW")
        {
        }
        field("LOG DeliveryTimes 107FDW"; DeliveryTimeCodetxt)
        {
          Caption = 'Delivery Times';
        }
      }
    }
    modify("Location Code")
    {
      Editable = EditableLocation;
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
  actions
  {
    addlast(Action82)
    {
      action(LOGCustomerShipmentDates107FDW)
      {
        Caption = 'Customer Shipment Dates';
      }
    }
  }
  var LOGRoute: Record Route107FDW;
//   FeatureControlManagement: Codeunit FeatureControlManagement107FDW;
//   LOGIntlLogisticsHook: Codeunit IntlLogisticsHook107FDW;
  EditableLocation: Boolean;
  EditableScancode: Boolean;
  EditableShipmentMethod: Boolean;
  EditableShippingAgent: Boolean;
  EditableShippingAgentService: Boolean;
  DeliverySourceType: Enum IntlDeliverySrcType107FDW;
//   CreateDeliverytimeLbl: Label;
//   ViewDeliveryTimeTxt: Label;
  DeliveryTimeCodetxt: Text;
}