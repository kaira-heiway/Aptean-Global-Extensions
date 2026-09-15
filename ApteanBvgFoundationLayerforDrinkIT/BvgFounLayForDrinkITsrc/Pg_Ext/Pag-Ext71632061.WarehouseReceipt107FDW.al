pageextension 71632061 WarehouseReceipt107FDW extends "Warehouse Receipt"
{
  layout
  {
    addafter(WhseReceiptLines)
    {
      group("LOG Logistics 107FDW")
      {
        Caption = 'Logistics';

        field("Route 107FDW"; Rec."Route 107FDW")
        {
        }
        field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
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
        field("Shipping Agent Code 107FDW"; Rec."Shipping Agent Code 107FDW")
        {
        }
        field("LOG Shipping Agent Service 107FDW"; Rec."Shipp. Agent Serv. 107FDW")
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
    modify("Location Code")
    {
      Editable = EditableRouteFields;
    }
  }
  var EditableRouteFields: Boolean;
  LogFactboxVisible: Boolean;
  //FeatureControlManagement: Codeunit FeatureControlManagement107FDW;
  ShownDriverNotifications: Dictionary of[Text, Boolean];
}