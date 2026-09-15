table 71632055 VehLoadTemplZoneL107FDW
{
  Caption = 'Vehicle load zones templates lines';

  fields
  {
    field(1; "Template Code"; Code[10])
    {
      Caption = 'Template Code';
    }
    field(2; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(3; Description; Text[100])
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
    key(Key1; "Template Code", Code)
    {
    }
  }
}