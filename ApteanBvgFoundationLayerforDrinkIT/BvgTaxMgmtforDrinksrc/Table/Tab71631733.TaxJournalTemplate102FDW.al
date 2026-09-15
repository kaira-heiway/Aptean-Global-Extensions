table 71631733 TaxJournalTemplate102FDW
{
  Caption = 'Tax Journal Template';

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
    field(10; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(11; "Reason Code 102FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(15; "Test Report Caption"; Text[250])
    {
      Caption = 'Test Report Caption';
    }
    field(16; "Page Caption"; Text[250])
    {
      Caption = 'Page Caption';
    }
    field(17; "Posting Report Caption"; Text[250])
    {
      Caption = 'Posting Report Caption';
    }
    field(19; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(20; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(30; "Increment Batch Name"; Boolean)
    {
      Caption = 'Increment Batch Name';
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
  var TaxJournalBatch: Record TaxJournalBatch102FDW;
  TaxJournalLine: Record TaxJournalLine102FDW;
  TaxManagementSetup102FDW: Record TaxManagementSetup102FDW;
  // MandatoryWarningErr: Label;
}