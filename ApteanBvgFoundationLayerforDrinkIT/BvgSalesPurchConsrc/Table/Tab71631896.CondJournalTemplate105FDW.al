table 71631896 CondJournalTemplate105FDW
{
  Caption = 'Condition Journal Template';

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
    field(9; Type; Enum IntlJnlTemplateType105FDW)
    {
      Caption = 'Type';
    }
    field(10; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(11; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(13; "Test Report Caption"; Text[250])
    {
      Caption = 'Test Report Caption';
    }
    field(14; "Page Caption"; Text[250])
    {
      Caption = 'Page Caption';
    }
    field(15; "Posting Report Caption"; Text[250])
    {
      Caption = 'Posting Report Caption';
    }
    field(16; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(17; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(30; "Increment Batch Name"; Boolean)
    {
      Caption = 'Increment Batch Name';
    }
    field(31; "Copy to Posted Jnl. Lines"; Boolean)
    {
      Caption = 'Copy to Posted Jnl. Lines';
    }
  }
  keys
  {
    key(PK; Name)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Name, Description, Type)
    {
    }
  }
  var ConditionJournalLine105FDW: Record ConditionJournalLine105FDW;
  ConditionSetup105FDW: Record ConditionSetup105FDW;
  CondJournalBatch105FDW: Record CondJournalBatch105FDW;
  //MustNotBeErr: Label;
}