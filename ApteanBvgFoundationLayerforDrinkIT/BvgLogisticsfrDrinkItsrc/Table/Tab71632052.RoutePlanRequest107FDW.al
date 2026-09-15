table 71632052 RoutePlanRequest107FDW
{
  Caption = 'Route Planning Request';

  fields
  {
    field(1; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(2; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers= "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption = '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(3; "Source Document Type"; Enum IntlSrcDocumentType107FDW)
    {
      Caption = 'Document Type';
    }
    field(4; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(5; "Route Planning No."; Code[20])
    {
      Caption = 'Route Planning No.';
    }
    field(6; Route; Code[20])
    {
      Caption = 'Route';
    }
    field(7; "Shipment / Receipt Date"; Date)
    {
      Caption = 'Shipment /Receipt Date';
    }
    field(8; "Delivery Type"; Code[10])
    {
      Caption = 'Delivery Type';
    }
    field(9; "Opening Time"; Time)
    {
      Caption = 'Delivery from time';
    }
    field(10; "Closing Time"; Time)
    {
      Caption = 'Delivery to time';
    }
    field(11; "Multiple Route Order"; Boolean)
    {
      Caption = 'Multiple Route Order';
    }
    field(12; "Two Driver Required"; Boolean)
    {
      Caption = 'Two Driver Required';
    }
    field(14; "Sell-To/Buy From No."; Code[20])
    {
      Caption = 'Sell-To/Buy From No.';
    }
    field(15; "Ship./Rec. Name"; Text[100])
    {
      Caption = 'Ship/Receipt-To Name';
    }
    field(16; "Ship./Rec. City"; Text[30])
    {
      Caption = 'Ship/Recepit-To City';
    }
    field(17; "Sales Logistic Status"; Code[10])
    {
      Caption = 'Sales Logistic Status';
    }
    field(19; "Shipping Weight"; Decimal)
    {
      Caption = 'Shipping Weight';
    }
    field(20; "Receiving Weight"; Decimal)
    {
      Caption = 'Receiving Weight';
    }
    field(21; "Shipping Pallet"; Decimal)
    {
      Caption = 'Shipping Pallet';
    }
    field(22; "Receiving Pallet"; Decimal)
    {
      Caption = 'Receiving Pallet';
    }
    field(25; "Shipment Method Code"; Code[10])
    {
      Caption = 'Shipment Method Code';
    }
    field(26; "Drive No."; Integer)
    {
      Caption = 'Drive No.';
    }
    field(27; Inbound; Boolean)
    {
      Caption = 'Inbound';
    }
    field(28; "Nonworking Day"; Boolean)
    {
      Caption = 'Nonworking Day';
    }
    field(29; "Delivery Time Code"; Code[10])
    {
      Caption = 'Delivery/Pickup Time Code';
    }
    field(30; "Addres Code"; Code[10])
    {
      Caption = 'Address Code';
    }
    field(31; "Load/Unload Zone Left"; Boolean)
    {
      Caption = 'Load/Unload Zone Left';
    }
    field(32; "Load/Unload Zone Right"; Boolean)
    {
      Caption = 'Load/Unload Zone Right';
    }
    field(33; "Load/Unload Zone Back"; Boolean)
    {
      Caption = 'Load/Unload Zone Back';
    }
    field(40; "Source Type Filter"; Enum IntlDeliverySrcType107FDW)
    {
      Caption = 'Source Type Filter';
    }
    // field(41; "Day Filter 107FDW"; Enum IntlDays100FDW)
    // {
    //   Caption = 'Day Filter';
    // }
    field(42; "Error Message"; Enum ErrorMessageType107FDW)
    {
      Caption = 'Message';
    }
    field(43; "Route Limit"; Boolean)
    {
      Caption = 'Route Limit';
    }
    field(45; "Delivery Sequence"; Code[10])
    {
      Caption = 'Delivery Sequence';
    }
    field(50; "Bill-To/Pay To No."; Code[20])
    {
      Caption = 'Bill-To/Pay To No.';
    }
    field(60; "Ship/Receipt-To Name 2"; Text[50])
    {
      Caption = 'Ship/Receipt-To Name 2';
    }
    field(61; "Ship/Receipt-To Address"; Text[100])
    {
      Caption = 'Ship/Receipt-To Address';
    }
    field(62; "Ship/Receipt-To Address 2"; Text[50])
    {
      Caption = 'Ship/Receipt-To Address 2';
    }
    field(63; "Ship/Receipt-To Post Code"; Code[20])
    {
      Caption = 'Ship/Receipt-To Post Code';
    }
    field(64; "Ship/Rcpt-To Country/Reg. Code"; Code[10])
    {
      Caption = 'Ship/Receipt-To Country/Region Code';
    }
  }
  keys
  {
    key(Key1; "Source Type", "Source Subtype", "Source No.", Inbound)
    {
    }
    key(Key2; "Route Planning No.", "Delivery Sequence")
    {
    }
    key(Key3; "Source No.", "Source Document Type")
    {
    }
  }
//   var GlobalLOGIntlLogisticsHook: Codeunit IntlLogisticsHook107FDW;
//   GlobalLOGIntlRoutePlanHook: Codeunit IntlRoutePlanHook107FDW;
//   GlobalLOGIntlRoutePlanWhse: Codeunit IntlRoutePlanWhse107FDW;
//   SourceTypeCalendar: Enum Microsoft.Foundation.Calendar."Calendar Source Type";
}