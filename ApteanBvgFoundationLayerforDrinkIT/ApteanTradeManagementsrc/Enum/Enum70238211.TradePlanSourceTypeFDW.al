enum 70238211 TradePlanSourceTypeFDW
{
  Extensible = true;

  value(0; "All Customers")
  {
  Caption = 'All Customers';
  }
  value(1; Customer)
  {
  Caption = 'Customer';
  }
  value(2; "All Vendors")
  {
  Caption = 'All Vendors';
  }
  value(3; Vendor)
  {
  Caption = 'Vendor';
  }
  value(4; AllLocations)
  {
  Caption = 'All Locations';
  }
  value(5; LocationsFrom)
  {
  Caption = 'Locations From';
  }
  value(6; LocationsTo)
  {
  Caption = 'Locations To';
  }
  value(7; Location)
  {
  Caption = 'Location';
  }
}