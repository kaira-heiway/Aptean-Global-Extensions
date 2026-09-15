table 71631729 TaxClassRelation102FDW
{
  Caption = 'Tax Classification Relation';

  fields
  {
    field(1; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(2; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(3; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(4; "Tax Class. Code"; Code[20])
    {
      Caption = 'Tax Classification Code';
    }
    field(5; "Calculation Factor"; Decimal)
    {
      Caption = 'Calculation Factor';
    }
    field(8; "Address Code"; Code[20])
    {
      Caption = 'Address Code';
    }
    field(9; Apply; Enum Apply102FDW)
    {
      Caption = 'Apply';
    }
    field(10; "Location Ref. 1"; Text[20])
    {
      Caption = 'Location Tax Ref. 1';
    }
    field(11; "Location Ref. 2"; Text[20])
    {
      Caption = 'Location Tax Ref. 2';
    }
    // field(12; "Excise Type"; Enum ExciseType100FDW)
    // {
    //   Caption = 'Excise Type';
    // }
  }
  keys
  {
    key(Key1; "Tax Code", Type, "No.", "Address Code", "Tax Class. Code")
    {
    }
    // key(Key2; Type, "No.", "Address Code", "Excise Type")
    // {
    // }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Tax Code", "Tax Class. Code")
    {
    }
  }
}