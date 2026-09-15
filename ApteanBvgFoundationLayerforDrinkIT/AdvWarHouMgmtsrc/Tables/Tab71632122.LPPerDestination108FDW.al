table 71632122 LPPerDestination108FDW
{
  Caption = 'License Plate Per Destination';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; Type; Option )
    {
      Caption = 'Type';
      OptionMembers = Header, Line;
      OptionCaption = 'Header, Line';
    }
    field(3; "Whse. Document No."; Code[20])
    {
      Caption = 'Whse. Document No.';
    }
    field(4; "Whse. Document Type"; Enum Microsoft.Warehouse.Journal."Warehouse Journal Document Type")
    {
      Caption = 'Whse. Document Type';
    }
    field(5; "Ship-to Type"; Option )
    {
      Caption = 'Ship-to Type';
      OptionMembers = " ", Customer, Vendor, Location;
      OptionCaption = ', Customer, Vendor, Location';
    }
    field(6; "Ship-to No."; Code[20])
    {
      Caption = 'Ship-to No.';
    }
    field(7; "Ship-to Address Code"; Code[10])
    {
      Caption = 'Ship-to Address Code';
    }
    field(8; "Ship-to Name"; Text[100])
    {
      Caption = 'Ship-to Name';
    }
    field(9; "No."; Code[50])
    {
      Caption = 'No.';
    }
    field(10; "Parent Entry No."; Integer)
    {
      Caption = 'Parent Entry No.';
    }
    field(11; "Shipment Type"; Enum ShipmentType108FDW)
    {
      Caption = 'Shipment Type';
    }
    field(12; "Shipment No."; Code[20])
    {
      Caption = 'Shipment No.';
    }
    field(13; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(14; Action; Enum RescheduleAction108FDW)
    {
      Caption = 'Action';
    }
    field(15; "To Bin Code"; Code[20])
    {
      Caption = 'To Bin Code';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
  }
}