table 71631725 Tax102FDW
{
  Caption = 'Tax';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(3; Formula; Code[100])
    {
      Caption = 'Formula';
    }
    field(6; "Duty Point"; Enum DutyPoint102FDW)
    {
      Caption = 'Duty Point';
    }
    field(7; "Item Charge Code"; Code[20])
    {
      Caption = 'No.';
    }
    field(8; "Default Box ID"; Code[20])
    {
      Caption = 'Default Box ID';
    }
    field(9; "Taxable Base"; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base';
    }
    field(10; "Taxable Base 2"; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base 2';
    }
    field(11; "Strength Base"; Enum StrengthType102FDW)
    {
      Caption = 'Strength Base';
    }
    field(12; "Strength Base 2"; Enum StrengthType102FDW)
    {
      Caption = 'Strength Base 2';
    }
    field(13; "Excise Product Category Code"; Code[20])
    {
      Caption = 'Excise Product Category Code';
    }
    field(14; Type; Enum DocLineType102FDW)
    {
      Caption = 'Type';
    }
    field(20; "BE AC4 Declaration Type"; Enum AC4DeclarationType102FDW)
    {
      Caption = 'BE AC4 Declaration Type';
    }
    field(21; "BE AC4 Quantity"; Enum ValueType102FDW)
    {
      Caption = 'BE AC4 Quantity';
    }
    field(22; "BE AC4 Alcohol Percentage"; Boolean)
    {
      Caption = 'BE AC4 Alcohol Percentage';
    }
    field(23; "BE AC4 Degree of Plato"; Boolean)
    {
      Caption = 'BE AC4 Degree of Plato';
    }
    field(24; "BE AC4 Unit of Measure"; Code[10])
    {
      Caption = 'BE AC4 Unit of Measure';
    }
    field(25; "Tax Rule Required 102FDW"; Enum TaxRuleRequiredYes102FDW)
    {
      Caption = 'Tax Rule Required';
    }
  }
  keys
  {
    key(PK; Code)
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