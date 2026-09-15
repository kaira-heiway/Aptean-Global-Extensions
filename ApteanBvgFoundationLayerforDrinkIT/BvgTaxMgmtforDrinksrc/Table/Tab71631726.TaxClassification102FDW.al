table 71631726 TaxClassification102FDW
{
  Caption = 'Tax Classification';

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
    field(3; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(4; Description; Text[250])
    {
      Caption = 'Description';
    }
    field(5; "Last Modified Date Time"; DateTime)
    {
      Caption = 'Last Modified Date Time';
    }
    field(8; "Rate Code"; Code[20])
    {
      Caption = 'Rate Code';
    }
    field(9; "Location Ref. 1 102FDW"; Text[20])
    {
      Caption = 'Location Tax Ref. 1';
    }
    field(10; "Location Ref. 2 102FDW"; Text[20])
    {
      Caption = 'Location Tax Ref. 2';
    }
    field(11; "Item Ref. 1"; Text[20])
    {
      Caption = 'Item Tax Ref. 1';
    }
    field(12; "Item Ref. 2"; Text[20])
    {
      Caption = 'Item Tax Ref. 2';
    }
    // field(13; "Excise Type"; Enum ExciseType100FDW)
    // {
    //   Caption = 'Excise Type';
    // }
    field(14; "Excise Product Code"; Code[20])
    {
      Caption = 'Excise Product Code';
    }
    field(15; AC4; Boolean)
    {
      Caption = 'AC4';
    }
  }
  keys
  {
    key(PK; "Tax Code", Type, Code)
    {
    }
    key(Rate; "Rate Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Code, Description)
    {
    }
    fieldgroup(Brick; Code, Description)
    {
    }
  }
}