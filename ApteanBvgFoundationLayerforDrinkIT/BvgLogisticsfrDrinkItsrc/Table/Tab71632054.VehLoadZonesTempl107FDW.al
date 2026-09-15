table 71632054 VehLoadZonesTempl107FDW
{
  Caption = 'Vehicle load zones templates';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(3; "Total pallet (Cap)"; Integer)
    {
      Caption = 'Total Pallet (cap)';
    }
    field(10; "Unload Left Side"; Boolean)
    {
      Caption = 'Unload Left Side';
    }
    field(11; "Unload Right Side"; Boolean)
    {
      Caption = 'Unload Right Side';
    }
    field(12; "Unload Backside"; Boolean)
    {
      Caption = 'Unload Backside';
    }
  }
  keys
  {
    key(Key1; Code)
    {
    }
  }
}