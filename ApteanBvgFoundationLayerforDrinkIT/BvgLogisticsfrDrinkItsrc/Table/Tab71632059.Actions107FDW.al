table 71632059 Actions107FDW
{
  Caption = 'Action';

  fields
  {
    // field(1; "Status Type"; __MissingTypeSymbol__)
    // {
    //   Caption = 'Type';
    // }
    field(2; "Action Code"; Code[50])
    {
      Caption = 'Action Code';
    }
    field(3; "Action Description"; Text[250])
    {
      Caption = 'Action Description';
    }
    field(4; Status; Enum Status107FDW)
    {
      Caption = 'Status';
    }
  }
  keys
  {
    // key(PK; "Status Type", "Action Code")
    // {
    // }
    key(PK; "Action Code")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Action Code", "Action Description")
    {
    }
  }
}