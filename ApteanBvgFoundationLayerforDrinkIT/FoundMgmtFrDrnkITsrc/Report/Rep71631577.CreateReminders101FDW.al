report 71631577 CreateReminders101FDW
{
  Caption = 'Create Reminders';

  dataset
  {
    dataitem(Customer; Customer)
    {
    }
    dataitem(CustLedgEntry2; "Cust. Ledger Entry")
    {
    }
    dataitem(CustLedgEntryLineFeeOn; "Cust. Ledger Entry")
    {
    }
  }
  requestpage
  {
    layout
    {
      area(Content)
      {
        group(Options)
        {
          Caption = 'Options';

          field(PostingDate; ReminderHeaderReq."Posting Date")
          {
            Caption = 'Posting Date';
          }
          field(DocumentDate; ReminderHeaderReq."Document Date")
          {
            Caption = 'Document Date';
          }
          field(OverdueAmntEntriesOnly; OverdueEntriesOnly)
          {
            Caption = 'Only Entries with Overdue Amounts';
          }
          field(IncludedEntriesOnHold; IncludeEntriesOnHold)
          {
            Caption = 'Include Entries On Hold';
          }
          field(UseHeaderLevels; UseHeaderLevel)
          {
            Caption = 'Use Header Level';
          }
        }
      }
    }
  }
  var CustLedgerEntry: Record "Cust. Ledger Entry";
  CustLedgerEntryLineFeeOnFilters: Record "Cust. Ledger Entry";
  ReminderHeaderReq: Record "Reminder Header";
  ReminderMake: Codeunit Microsoft.Sales.Reminder."Reminder-Make";
  IncludeEntriesOnHold: Boolean;
  OverdueEntriesOnly: Boolean;
  UseHeaderLevel: Boolean;
  NewDateTime: DateTime;
  OldDateTime: DateTime;
  WindowDialog: Dialog;
  NewProgress: Integer;
  NoOfRecords: Integer;
  OldProgress: Integer;
  RecordNo: Integer;
//   Text000Lbl: Label;
//   Text001Lbl: Label;
//   Text002Lbl: Label;
//   Text003Lbl: Label;
}