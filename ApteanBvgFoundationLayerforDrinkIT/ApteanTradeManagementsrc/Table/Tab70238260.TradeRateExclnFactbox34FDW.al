table 70238260 TradeRateExclnFactbox34FDW
{
  Caption = 'TradeRateExclnFactbox34';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Trade Plan Line No."; Integer)
    {
      Caption = 'Trade Plan Line No.';
    }
    field(3; CustomerExclusionFilter; Boolean)
    {
      Caption = 'Customer Exclusion Filter';
    }
    field(4; VendorExclusionFilter; Boolean)
    {
      Caption = 'Vendor Exclusion Filter';
    }
    field(5; ItemExclusionFilter; Boolean)
    {
      Caption = 'Item Exclusion Filter';
    }
    field(6; LocationExclusionFilter; Boolean)
    {
      Caption = 'Location Exclusion Filter';
    }
    field(7; ShipmentMethodExclusionFilter; Boolean)
    {
      Caption = 'Shipment Method Exclusion Filter';
    }
    field(8; "No.OfCustomerExclusion"; Integer)
    {
      Caption = 'No. of Customer Exclusion';
    }
    field(9; "No.OfVendorExclusion"; Integer)
    {
      Caption = 'No. of Vendor Exclusion';
    }
    field(10; "No.OfItemExclusion"; Integer)
    {
      Caption = 'No. of Item Exclusion';
    }
    field(11; "No.OfLocationExclusion"; Integer)
    {
      Caption = 'No. of Location Exclusion';
    }
    field(12; "No.OfShipmentMethodExclusion"; Integer)
    {
      Caption = 'No. of Shipment Method Exclusion';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Trade Plan Line No.")
    {
    }
  }
}