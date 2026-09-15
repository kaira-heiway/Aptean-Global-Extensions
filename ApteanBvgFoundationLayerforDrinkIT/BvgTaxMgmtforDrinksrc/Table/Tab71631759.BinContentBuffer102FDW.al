table 71631759 BinContentBuffer102FDW
{
  Caption = 'Bin Content Buffer';

  fields
  {
    field(1; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(2; "Zone Code"; Code[10])
    {
      Caption = 'Zone Code';
    }
    field(3; "Bin Code"; Code[20])
    {
      Caption = 'Bin Code';
    }
    field(4; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(5; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(6; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(10; Cubage; Decimal)
    {
      Caption = 'Cubage';
    }
    field(11; Weight; Decimal)
    {
      Caption = 'Weight';
    }
    field(12; "Base Unit of Measure"; Code[10])
    {
      Caption = 'Base Unit of Measure';
    }
    field(50; "Qty. to Handle (Base)"; Decimal)
    {
      Caption = 'Qty. to Handle (Base)';
    }
    field(51; "Qty. Outstanding (Base)"; Decimal)
    {
      Caption = 'Qty. Outstanding (Base)';
    }
    field(6500; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(6501; "Serial No."; Code[50])
    {
      Caption = 'Serial No.';
    }
    field(6515; "Package No."; Code[50])
    {
      Caption = 'Package No.';
    }
    // field(6516; "Excise Type"; Enum ExciseType100FDW)
    // {
    //   Caption = 'Excise Type';
    // }
  }
  keys
  {
    // key(Key1; "Location Code", "Bin Code", "Item No.", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.", "Package No.", "Excise Type")
    // {
    // }
  }
}