table 71631841 JournalBatch104FDW
{
  Caption = 'Item Journal Batch';

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
    field(4; "Reason code104FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(5; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(6; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(22; Recurring; Boolean)
    {
      Caption = 'Recurring';
    }
  }
  keys
  {
    key(Key1; "Journal Template Name", Name)
    {
    }
  }
  var EGMJournalLine: Record JournalLine104FDW;
  EGMJournalTemplate: Record JournalTemplate104FDW;
//   RecurringFieldErr: Label;
//   Text001Txt: Label;
}