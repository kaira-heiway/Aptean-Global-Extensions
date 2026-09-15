table 71631903 ReversalEntry105FDW
{
  Caption = 'Reversal Entry';

  fields
  {
    field(1; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(2; "Entry Type"; Enum ReversalEntryType105FDW)
    {
      Caption = 'Entry Type';
    }
    field(3; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(4; "Condition Register No."; Integer)
    {
      Caption = 'Condition Register No.';
    }
    field(5; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(6; "Journal Batch Name"; Code[10])
    {
      Caption = 'Journal Batch Name';
    }
    field(7; "Transaction No."; Integer)
    {
      Caption = 'Transaction No.';
    }
    // field(8; "Source Type"; Enum Microsoft.Foundation.Enums."Analysis Source Type")
    // {
    //   Caption = 'Source Type';
    // }
    field(9; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(10; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(12; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(13; "Discount Amount"; Decimal)
    {
      Caption = 'Discount Amount';
    }
    field(15; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(16; "Discount Amount (LCY)"; Decimal)
    {
      Caption = 'Discount Amount (LCY)';
    }
    field(19; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(20; "Document Type"; Enum IntlLdgDocumentType105FDW)
    {
      Caption = 'Document Type';
    }
    field(21; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(22; "Rule No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(23; "Rule Name"; Text[100])
    {
      Caption = 'Rule Name';
    }
    field(30; "Reversal Type"; Enum ReversalType105FDW)
    {
      Caption = 'Reversal Type';
    }
    field(31; Open; Boolean)
    {
      Caption = 'Open';
    }
  }
  keys
  {
    key(Key1; "Line No.")
    {
    }
    key(Key2; "Entry Type")
    {
    }
    key(Key3; "Document No.", "Posting Date", "Entry Type", "Entry No.")
    {
    }
    key(Key4; "Entry Type", "Entry No.")
    {
    }
    key(Key5; "Transaction No.")
    {
    }
  }
  var SPCConditionLedgerEntry: Record ConditionLedgerEntry105FDW;
  SPCConditionRegister: Record ConditionRegister105FDW;
  SPCRuleSetupLine: Record RuleSetup105FDW;
  TempSPCReversalEntry: Record ReversalEntry105FDW temporary;
  //SPCIntlGeneralHook: Codeunit IntlGeneralHook105FDW;
  HideDialog: Boolean;
  HideWarningDialogs: Boolean;
  MaxPostingDate: Date;
  // CannotReverseAppliedEntryErr: Label;
  // CannotReverseDeletedErr: Label;
  // CannotReverseEntryAlreadyErr: Label;
  // CannotReverseRegisterAlreadyErr: Label;
}