table 70238276 GLEntryExtension34FDW
{
  Caption = 'G/L Entry Extension';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(10; "G/L Entry No."; Integer)
    {
      Caption = 'G/L Entry No.';
    }
    field(11; "Transaction No."; Integer)
    {
      Caption = 'Transaction No.';
    }
    field(12; Reversed; Boolean)
    {
      Caption = 'Reversed';
    }
    field(20; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(21; "Document Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Document Type';
    }
    field(22; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(23; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(30; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(40; "Post. DTL Table ID"; Integer)
    {
      Caption = 'Posted Doc. Trade Line Table ID';
    }
    field(41; "Post. DTL Source Type"; Enum PostedDTLSourceType34FDW)
    {
      Caption = 'Posted Doc. Trade Line Source Type';
    }
    field(42; "Post. DTL Doc. No."; Code[20])
    {
      Caption = 'Posted Doc. Trade Line Doc. No.';
    }
    field(43; "Post. DTL Doc. Line No."; Integer)
    {
      Caption = 'Posted Doc. Trade Line Doc. Line No.';
    }
    field(44; "Post. DTL Line No."; Integer)
    {
      Caption = 'Posted Doc. Trade Line Line No.';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key2; "G/L Entry No.", "Transaction No.")
    {
    }
    key(Key3; "Transaction No.", "G/L Entry No.")
    {
      ObsoleteReason = 'This key is replaced by Key2 which combines the G/L Entry No. and Transaction No..';
      ObsoleteState = Pending;
      ObsoleteTag = '26.0';
    }
  }
}