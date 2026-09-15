table 71423175 QCTriggerAction92FDW
{
  Caption = 'Quality Control Trigger Action';

  fields
  {
    field(1; "Document Type"; Enum DocumentType92FDW)
    {
      Caption = 'Trigger Type';
    }
    field(2; "Document Action"; Enum DocumentActionType92FDW)
    {
      Caption = 'Trigger Action';
    }
  }
  keys
  {
    key(Key1; "Document Type", "Document Action")
    {
    }
  }
}