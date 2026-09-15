table 71423172 QCActionPlanHeader92FDW
{
  Caption = 'Quality Control Action Plan Header';

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
    field(12; "Quality Control Team"; Code[10])
    {
      Caption = 'Quality Control Team';
    }
    field(13; "No. Series"; Code[20])
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
  var QCSetup: Record QCSetup92FDW;
  // NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  // DependentRecExistErr: Label;
}