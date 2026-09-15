table 71631843 LedgerEntry104FDW
{
  Caption = 'Empty Goods Ledger Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Empty Goods Code"; Code[20])
    {
      Caption = 'Empty Goods Code';
    }
    field(3; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(4; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(5; "Document Type"; Enum IntlDocumentType104FDW)
    {
      Caption = 'Document Type';
    }
    field(6; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(7; "Source Type"; Enum IntlSourceType104FDW)
    {
      Caption = 'Source Type';
    }
    field(8; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(9; "Bill-to/Pay-to Source No."; Code[20])
    {
      Caption = 'Bill-to/Pay-to Source No.';
    }
    field(10; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(11; "Empty Goods Bus. Group"; Code[20])
    {
      Caption = 'Empty Goods Bus. Group';
    }
    field(12; "Empty Goods Item No."; Code[20])
    {
      Caption = 'Empty Goods Item No.';
    }
    field(13; "Empty Goods Item Description"; Text[100])
    {
      Caption = 'Empty Goods Item Description';
    }
    field(14; "Parent Item No."; Code[20])
    {
      Caption = 'Parent Item No';
    }
    field(15; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(16; "Parent Unit Of Measure"; Code[10])
    {
      Caption = 'Parent Unit Of Measure';
    }
    field(17; "Parent Item Qty"; Decimal)
    {
      Caption = 'Parent Item Qty';
    }
    field(18; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(19; "Invoiced Quantity"; Decimal)
    {
      Caption = 'Invoiced Quantity';
    }
    field(20; "Deposit Price"; Decimal)
    {
      Caption = 'Deposit Price';
    }
    field(21; "Deposit Amount"; Decimal)
    {
      Caption = 'Deposit Amount';
    }
    field(22; "Movement Type"; Enum IntlMovementType104FDW)
    {
      Caption = 'Movement Type';
    }
    field(23; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
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
      Caption = 'Inventory Cost';
    }
    field(31; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(32; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(35; "Inventory Value Posted to G/L"; Boolean)
    {
      Caption = 'Inventory Value Posted to G/L';
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
    key(Key1; "Entry No.")
    {
    }
    key(Key2; "Empty Goods Code")
    {
    }
    key(Key3; "Empty Goods Item No.")
    {
    }
    key(key4; "Document Type", "Document No.")
    {
    }
    key(key5; "Source Type", "Source No.")
    {
    }
    key(key6; "Item Ledger Entry No.")
    {
    }
    key(key7; "Document No.", "Item Ledger Entry No.", Closed)
    {
    }
    key(key8; "Posting Date", "Document No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Entry No.", "Empty Goods Code", "Posting Date", "Document Date")
    {
    }
  }
}