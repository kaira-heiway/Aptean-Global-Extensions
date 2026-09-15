table 71423169 QCOptionHeader92FDW
{
  Caption = 'Quality Control Option Header';

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
    field(12; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
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
  var QCSetup: Record QCSetup92FDW;
  //NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
}