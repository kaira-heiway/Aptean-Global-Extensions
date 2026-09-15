table 71632056 RoutePlanVLoadZone107FDW
{
  Caption = 'Route Planning Vehicle Load zone';

  fields
  {
    field(1; "Route Planning No."; Code[20])
    {
      Caption = 'Route Planning No.';
    }
    field(2; "Load Zone Template Code"; Code[10])
    {
      Caption = 'Load Zone Template Code';
    }
    field(3; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(4; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(5; "Truck zone Left"; Boolean)
    {
      Caption = 'Truck zone Left';
    }
    field(6; "Truck zone Right"; Boolean)
    {
      Caption = 'Truck zone Right';
    }
    field(7; "Truck zone Back"; Boolean)
    {
      Caption = 'Truck zone Back';
    }
    field(8; "Pallet places (cap)"; Integer)
    {
      Caption = 'Pallet places (cap)';
    }
  }
  keys
  {
    key(Key1; "Route Planning No.", "Load Zone Template Code", Code)
    {
    }
  }
}