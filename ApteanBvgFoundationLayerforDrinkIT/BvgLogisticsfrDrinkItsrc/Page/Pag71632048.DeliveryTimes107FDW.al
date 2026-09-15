page 71632048 DeliveryTimes107FDW
{
  Caption = 'Delivery/Pickup Times';
  SourceTable = MultiDeliveryTimes107FDW;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field("Source Type"; Rec."Source Type")
        {
        }
        field("Source Code"; Rec."Source Code")
        {
        }
        field("Address Code"; Rec."Address Code")
        {
        }
        field(Code; Rec.Code)
        {
        }
        // field(Day; Rec.Day)
        // {
        // }
        field("Opening Time"; Rec."Opening Time")
        {
        }
        field("Closing Time"; Rec."Closing Time")
        {
        }
        field(Default; Rec.Default)
        {
        }
      }
    }
  }
}