table 71631897 CondJournalBatch105FDW
{
  Caption = 'Condition Journal Batch';

  fields
  {
    field(1; "Journal Template Name"; Code[10])
    {
      Caption = 'Journal Template Name';
    }
    field(2; Name; Code[10])
    {
      Caption = 'Name';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(4; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(5; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(6; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(21; "Template Type"; Enum IntlJnlTemplateType105FDW)
    {
      Caption = 'Template Type';
    }
    field(31; "Copy to Posted Jnl. Lines"; Boolean)
    {
      Caption = 'Copy to Posted Jnl. Lines';
    }
    field(900; "Template Type Filter"; Enum IntlJnlTemplateType105FDW)
    {
      Caption = 'Template Type Filter';
    }
  }
  keys
  {
    key(PK; "Journal Template Name", Name)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Name, Description)
    {
    }
    fieldgroup(Brick; Name, "Journal Template Name", Description)
    {
    }
  }
  var SPCConditionJournalLine: Record ConditionJournalLine105FDW;
  SPCCondJournalTemplate: Record CondJournalTemplate105FDW;
  // ApprovalsMgmt: Codeunit System.Automation."Approvals Mgmt.";
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // SPCIntlApprovalHook: Codeunit IntlApprovalHook105FDW;
  // MustNotBeErr: Label;
}