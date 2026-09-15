table 71631908 ClassDimension105FDW
{
  Caption = 'Classification Dimension';

  fields
  {
    field(1; Type; Enum IntlRelationType105FDW)
    {
      Caption = 'Type';
    }
    field(2; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(10; "Dimension Code"; Code[20])
    {
      Caption = 'Dimension Code';
    }
    field(11; "Dimension Value Code"; Code[1024])
    {
      Caption = 'Dimension Value Code';
    }
  }
  keys
  {
    key(PK; Type, Code, "Dimension Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Code, "Dimension Code")
    {
    }
    fieldgroup(Brick; Code, "Dimension Code")
    {
    }
  }
  // var IntlDimensionHook105FDW: Codeunit IntlDimensionHook105FDW;
  // CannotRenameErr: Label;
}