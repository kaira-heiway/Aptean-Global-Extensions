table 71631842 JournalLine104FDW
{
  Caption = 'EGM Journal Line';

  fields
  {
    field(1; "Journal Template Name"; Code[10])
    {
      Caption = 'Journal Template Name';
    }
    field(2; "Journal Batch Name"; Code[10])
    {
      Caption = 'Journal Batch Name';
    }
    field(3; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(4; "Empty Goods Code"; Code[20])
    {
      Caption = 'Empty Goods Code';
    }
    field(5; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(6; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(7; "Document Type"; Enum IntlDocumentType104FDW)
    {
      Caption = 'Document Type';
    }
    field(8; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(9; "Source Type"; Enum IntlSourceType104FDW)
    {
      Caption = 'Source Type';
    }
    field(10; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(11; "Bill-to/Pay-to Source No."; Code[20])
    {
      Caption = 'Bill-to/Pay-to Source No.';
    }
    field(12; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(13; "Empty Goods Bus. Group"; Code[20])
    {
      Caption = 'Empty Goods Bus. Group';
    }
    field(14; "Empty Goods Item No."; Code[20])
    {
      Caption = 'Empty Goods Item No.';
    }
    field(15; "Empty Goods Item Description"; Text[100])
    {
      Caption = 'Empty Goods Item Description';
    }
    field(16; "Parent Item No."; Code[20])
    {
      Caption = 'Parent Item No';
    }
    field(17; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(18; "Parent Unit Of Measure"; Code[10])
    {
      Caption = 'Parent Unit Of Measure';
    }
    field(19; "Parent Item Qty"; Decimal)
    {
      Caption = 'Parent Item Qty';
    }
    field(20; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(21; "Invoiced Quantity"; Decimal)
    {
      Caption = 'Invoiced Quantity';
    }
    field(22; "Deposit Price"; Decimal)
    {
      Caption = 'Deposit Price';
    }
    field(23; "Deposit Amount"; Decimal)
    {
      Caption = 'Deposit Amount';
    }
    field(24; "Movement Type"; Enum IntlMovementType104FDW)
    {
      Caption = 'Movement Type';
    }
    field(25; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(26; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(28; "Inventory Unit Cost"; Decimal)
    {
      Caption = 'Inventory Unit Cost';
    }
    field(29; "Inventory Cost"; Decimal)
    {
      Caption = 'Inventory Cost';
    }
    field(30; "Inventory Posting Group"; Code[20])
    {
      Caption = 'Inventory Posting Group';
    }
    field(31; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(32; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(50; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(51; Closed; Boolean)
    {
      Caption = 'Closed';
    }
    field(52; "Closed by Entry No."; Integer)
    {
      Caption = 'Closed by Entry No.';
    }
    field(53; "Order No."; Code[20])
    {
      Caption = 'Order No.';
    }
    field(54; "Reason code104FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(55; "Rounding Up"; Boolean)
    {
      Caption = 'Rounding Up';
      ObsoleteReason = 'Replaced by "Rounding"';
      ObsoleteState = Pending;
      ObsoleteTag = '26.0';
    }
    field(57; Rounding; Enum Rounding104FDW)
    {
      Caption = 'Rounding';
    }
    field(97; "Blanket Order No."; Code[20])
    {
      Caption = 'Blanket Order No.';
    }
    field(98; "Blanket Order Line No."; Integer)
    {
      Caption = 'Blanket Order Line No.';
    }
  }
  keys
  {
    key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
    {
    }
  }
  var GlobalEGMJournalBatch: Record JournalBatch104FDW;
  EGMJournalLine: Record JournalLine104FDW;
  EGMJournalTemplate: Record JournalTemplate104FDW;
 // NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
}