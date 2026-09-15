table 71631728 TaxValueSpecification102FDW
{
  Caption = 'Tax Specification Value';

  fields
  {
    field(1; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(2; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(3; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(4; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(5; "Validation Type"; Enum ValidationType102FDW)
    {
      Caption = 'Validation Type';
    }
    field(6; "Field No."; Integer)
    {
      Caption = 'Field No.';
    }
  }
  keys
  {
    key(PK; "Tax Code", Type, Code)
    {
    }
  }
  // var IntlGeneralHook102FDW: Codeunit IntlGeneralHook102FDW;
}