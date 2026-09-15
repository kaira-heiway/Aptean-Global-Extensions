table 71632049 LogisticsSetup107FDW
{
  Caption = 'Logistics Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Route Planning Nos."; Code[20])
    {
      Caption = 'Route Planning Nos.';
    }
    field(3; "Cash Payment Journal"; Code[10])
    {
      Caption = 'Cash Payment Journal';
    }
    field(4; "Card Payment Journal"; Code[10])
    {
      Caption = 'Card Payment Journal';
    }
    field(5; "Other Payment Journal"; Code[10])
    {
      Caption = 'Other Payment Journal';
    }
    field(6; "Report ID Load List"; Integer)
    {
      Caption = 'Report ID Load List';
    }
    field(7; "Shipment Dates Calculation"; DateFormula)
    {
      Caption = 'Shipment Dates Calculation';
    }
    field(8; "Receiv. Wght Eq Shipping Wght"; Boolean)
    {
      Caption = 'Receiving Weight Equal to Shipping Weight';
    }
    field(9; "Show Cust Addr for Sal Ret Ord"; Boolean)
    {
      Caption = 'Show Customer Address for Sales Return Order';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}