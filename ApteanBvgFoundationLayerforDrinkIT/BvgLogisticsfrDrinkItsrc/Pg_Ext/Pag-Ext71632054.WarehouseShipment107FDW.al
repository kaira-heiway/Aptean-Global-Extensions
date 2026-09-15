pageextension 71632054 WarehouseShipment107FDW extends "Warehouse Shipment"
{
  layout
  {
    addafter(Shipping)
    {
      group("LOG Logistics 107FDW")
      {
        Caption = 'Logistics';

        // field("Route 107FDW"; Rec."Route 107FDW")
        // {
        // }
        // field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
        // {
        // }
        // field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
        // {
        // }
        // field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
        // {
        // }
        // field("LOG Co-driver 107FDW"; Rec."Co-Driver 107FDW")
        // {
        // }
        // field("Trailer 107FDW"; Rec."Trailer 107FDW")
        // {
        // }
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
      Editable = EditableRouteFields;
    }
    modify("Shipping Agent Service Code")
    {
      Editable = EditableRouteFields;
    }
    modify("Location Code")
    {
      Editable = EditableRouteFields;
    }
    modify("Shipment Date")
    {
      Editable = EditableShipmentdate;
    }
  }
  var 
  //FeatureControlManagement: Codeunit FeatureControlManagement107FDW;
  EditableRouteFields: Boolean;
  EditableShipmentdate: Boolean;
  LogFactboxVisible: Boolean;
  ShownDriverNotifications: Dictionary of[Text, Boolean];
}