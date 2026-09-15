table 71631840 JournalTemplate104FDW
{
  Caption = 'EGM Journal Template';

  fields
  {
    field(1; Name; Code[10])
    {
      Caption = 'Name';
    }
    field(2; Description; Text[80])
    {
      Caption = 'Description';
    }
    field(5; "Test Report ID"; Integer)
    {
      Caption = 'Test Report ID';
    }
    field(6; "Page ID"; Integer)
    {
      Caption = 'Page ID';
    }
    field(7; "Posting Report ID"; Integer)
    {
      Caption = 'Posting Report ID';
    }
    field(8; "Force Posting Report"; Boolean)
    {
      Caption = 'Force Posting Report';
    }
    field(9; Recurring; Boolean)
    {
      Caption = 'Recurring';
    }
    field(10; "Test Report Caption"; Text[250])
    {
      Caption = 'Test Report Caption';
    }
    field(11; "Page Caption"; Text[250])
    {
      Caption = 'Page Caption';
    }
    field(12; "Posting Report Caption"; Text[250])
    {
      Caption = 'Posting Report Caption';
    }
    field(13; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(14; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(15; "Increment Batch Name"; Boolean)
    {
      Caption = 'Increment Batch Name';
    }
    field(16; "Reason code104FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
  }
  keys
  {
    key(Key1; Name)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Name, Description)
    {
    }
  }
  var EGMJournalBatch: Record JournalBatch104FDW;
  EGMJournalLine: Record JournalLine104FDW;
  //MandatoryWarningErr: Label;
}