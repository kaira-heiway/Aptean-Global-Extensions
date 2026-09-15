page 71632046 Routes107FDW
{
  Caption = 'Routes';
  SourceTable = Route107FDW;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(Code; Rec.Code)
        {
        }
        field(Name; Rec.Name)
        {
        }
        field(Driver; Rec.Driver)
        {
        }
        field("Driver 2"; Rec."Driver 2")
        {
        }
        field(Vehicle; Rec.Vehicle)
        {
        }
        field(Trailer; Rec.Trailer)
        {
        }
        // field("Shipment Day"; Rec."Shipment Day")
        // {
        // }
        field("Shipping Agent"; Rec."Shipping Agent Code")
        {
        }
        field("Shipping Agent Service"; Rec."Shipping Agent Service Code")
        {
        }
        field("Shipment Method"; Rec."Shipment Method")
        {
        }
        field("Shipping Location"; Rec."Shipping Location")
        {
        }
        field("Shipping Dock"; Rec."Shipping Dock")
        {
        }
        field("Receipt Location"; Rec."Receipt Location")
        {
        }
        field("Receiving Dock"; Rec."Receiving Dock")
        {
        }
        field("Multiple Order Route"; Rec."Multiple Order Route")
        {
        }
        field("Cut-off No. Of Days"; Rec."Cut-off No. Of Days")
        {
        }
        field("Cut-off Time"; Rec."Cut-off Time")
        {
        }
        // field("Reschedule Action"; Rec."Reschedule Action")
        // {
        // }
        field("Reschedule Bin Code"; Rec."Reschedule Bin Code")
        {
        }
        field("Sales Rescheduled Status"; Rec."Sales Logistic Status")
        {
        }
        field("Purch. Rescheduled Status"; Rec."Purch. Logistic Status")
        {
        }
      }
    }
  }
  var ShownDriverNotifications: Dictionary of[Text, Boolean];
}