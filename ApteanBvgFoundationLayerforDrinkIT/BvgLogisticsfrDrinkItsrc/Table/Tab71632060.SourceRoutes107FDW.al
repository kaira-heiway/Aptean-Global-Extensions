table 71632060 SourceRoutes107FDW
{
  Caption = 'Source Routes';

  fields
  {
    field(1; "Source Type"; Enum IntlDeliverySrcType107FDW)
    {
      Caption = 'Source Type';
    }
    field(2; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(3; "Address Code"; Code[20])
    {
      Caption = 'Address Code';
    }
    field(4; "Route Code"; Code[10])
    {
      Caption = 'Route Code';
    }
    // field(16; "Shipment Day"; Enum IntlDays100FDW)
    // {
    //   Caption = 'Shipment Day';
    // }
    field(17; "Delivery Sequence"; Code[10])
    {
      Caption = 'Delivery Sequence';
    }
    field(18; "Cut-off No. Of Days"; Integer)
    {
      Caption = 'Cut-off No. Of Days';
    }
    field(19; "Shipping Location"; Code[10])
    {
      Caption = 'Shipping Location';
    }
    field(20; "Receipt Location"; Code[10])
    {
      Caption = 'Receipt Location';
    }
  }
  keys
  {
    // key(Key1; "Source Type", "Source No.", "Address Code", "Route Code", "Shipment Day")
    // {
    // }
    key(Key1; "Source Type", "Source No.", "Address Code", "Route Code")
    {
    }
  }
  //var DeletedShipmentDatesLbl: Label;
}