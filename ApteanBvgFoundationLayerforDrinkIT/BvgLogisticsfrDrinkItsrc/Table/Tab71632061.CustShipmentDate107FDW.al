table 71632061 CustShipmentDate107FDW
{
  Caption = 'Customer Shipment Dates';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(10; "Customer No."; Code[20])
    {
      Caption = 'Customer No.';
    }
    field(20; "Ship-to Address Code"; Code[10])
    {
      Caption = 'Ship-to Address Code';
    }
    field(30; "Route Code"; Code[10])
    {
      Caption = 'Route Code';
    }
    field(40; "Shipment Date"; Date)
    {
      Caption = 'Shipment Date';
    }
    field(50; "Closing Time"; DateTime)
    {
      Caption = 'Closing Time';
    }
    field(51; "Cut-Off No. of Days"; Integer)
    {
      Caption = 'Cut-Off No. of Days';
    }
    field(52; "Cut-Off Time"; Time)
    {
      Caption = 'Cut-Off Time';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(K2; "Customer No.", "Ship-to Address Code", "Shipment Date")
    {
    }
    key(K3; "Closing Time")
    {
    }
    key(K4; "Customer No.", "Ship-to Address Code", "Route Code", "Closing Time")
    {
    }
  }
}