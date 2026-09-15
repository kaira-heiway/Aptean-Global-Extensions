table 71631739 TaxGeneralClassification102FDW
{
  Caption = 'Tax General Classification';

  fields
  {
    field(1; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(2; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(3; Description; Text[250])
    {
      Caption = 'Description';
    }
    field(4; "Autocreate Tax Relation"; Boolean)
    {
      Caption = 'Autocreate Tax Relation';
    }
    // field(13; "Excise Type"; Enum ExciseType100FDW)
    // {
    //   Caption = 'Excise Type';
    // }
    field(25; AC4; Boolean)
    {
      Caption = 'AC4';
    }
    field(26; "AC4 Annexes Reusable Package"; Boolean)
    {
      Caption = 'AC4 Annexes Reusable Package';
    }
  }
  keys
  {
    key(PK; Type, Code)
    {
    }
  }
  // var NotAllowedErr: Label;
}