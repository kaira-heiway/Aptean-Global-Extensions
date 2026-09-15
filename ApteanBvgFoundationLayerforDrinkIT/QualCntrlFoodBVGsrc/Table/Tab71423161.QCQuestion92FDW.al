table 71423161 QCQuestion92FDW
{
  Caption = 'Quality Control Question';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(12; "Question Type"; Enum QuestionType92FDW)
    {
      Caption = 'Question Type';
    }
    field(13; "QC Option Code"; Code[20])
    {
      Caption = 'Quality Control Option';
    }
    field(14; "Lot Attribute"; Enum LotAttributeType92FDW)
    {
      Caption = 'Lot Attribute';
    }
    field(15; "Lot Attribute Name"; Text[250])
    {
      Caption = 'Lot Attribute Name';
    }
    field(16; "Lot Attribute ID"; Integer)
    {
      Caption = 'Lot Attribute ID';
    }
    field(17; "QC Equipment Code"; Code[20])
    {
      Caption = 'Quality Control Equipment';
    }
    // field(18; "Action Code"; __MissingTypeSymbol__)
    // {
    //   Caption = 'Action Code';
    // }
    field(19; "Formula Symbol"; Text[20])
    {
      Caption = 'Formula Symbol';
    }
    field(20; "Formula Rounding Precision"; Decimal)
    {
      Caption = 'Formula Rounding Precision';
    }
  }
  keys
  {
    key(Key1; Code)
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