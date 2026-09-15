table 71631734 TaxJournalLine102FDW
{
  Caption = 'Tax Journal Line';

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
    field(4; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(5; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(6; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(7; "Document Type"; Enum DocumentType102FDW)
    {
      Caption = 'Document Type';
    }
    field(8; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(9; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(10; "Location Code"; Code[20])
    {
      Caption = 'No.';
    }
    field(11; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(12; "Reason Code 102FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(13; "Recurring Method"; Enum RecurringMethod102FDW)
    {
      Caption = 'Recurring Method';
    }
    field(14; "Expiration Date"; Date)
    {
      Caption = 'Expiration Date';
    }
    field(15; "Posting No. Series"; Code[20])
    {
      Caption = 'Posting No. Series';
    }
    field(16; "Recurring Frequency"; DateFormula)
    {
      Caption = 'Recurring Frequency';
    }
    field(17; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(18; "Parent Item No."; Code[20])
    {
      Caption = 'Parent Item No.';
    }
    field(19; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(20; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(21; "Address Code"; Code[20])
    {
      Caption = 'Address Code';
    }
    field(22; "From Tax Class. Code"; Code[20])
    {
      Caption = 'From Tax Classification Code';
    }
    field(23; "To Tax Class. Code"; Code[20])
    {
      Caption = 'To Tax Classification Code';
    }
    field(24; "Item Tax Class. Code"; Code[20])
    {
      Caption = 'Item Tax Classification Code';
    }
    field(25; "Direction of Movement"; Enum DirectionofMovement102FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(26; "Tax Box ID"; Code[20])
    {
      Caption = 'Tax Box ID';
    }
    field(27; "Rate Code"; Code[20])
    {
      Caption = 'Rate Code';
    }
    field(28; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(29; "Unit Tax Amount"; Decimal)
    {
      Caption = 'Unit Tax Amount';
    }
    field(30; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(31; "Movement Type"; Enum MovementType102FDW)
    {
      Caption = 'Movement Type';
    }
    field(32; "Entry Type"; Enum EntryTypeJnl102FDW)
    {
      Caption = 'Entry Type';
    }
    field(33; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(34; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(35; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(36; "Warehouse Entry No."; Integer)
    {
      Caption = 'Warehouse Entry No.';
    }
    field(37; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(38; "Shortcut Dimension 1 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 1 Code';
    }
    field(39; "Shortcut Dimension 2 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 2 Code';
    }
    field(40; "Unit Volume 1"; Decimal)
    {
      Caption = 'Unit Volume 1';
    }
    field(41; "Unit Volume 2"; Decimal)
    {
      Caption = 'Unit Volume 2';
    }
    field(42; "Strength 1"; Decimal)
    {
      Caption = 'Strength 1';
    }
    field(43; "Strength 2"; Decimal)
    {
      Caption = 'Strength 2';
    }
    field(44; "Net Weight 1 102FDW"; Decimal)
    {
      Caption = 'Net Weight 1';
    }
    field(45; "Net Weight 2 102FDW"; Decimal)
    {
      Caption = 'Net Weight 2';
    }
    field(46; "Gross Weight 1 102FDW"; Decimal)
    {
      Caption = 'Gross Weight 1';
    }
    field(47; "Gross Weight 2 102FDW"; Decimal)
    {
      Caption = 'Gross Weight 2';
    }
    field(48; "Volume 1"; Decimal)
    {
      Caption = 'Volume 1';
    }
    field(49; "Volume 2"; Decimal)
    {
      Caption = 'Volume 2';
    }
    field(50; "Volume 1 - Strength 1"; Decimal)
    {
      Caption = 'Volume 1 - Strength 1';
    }
    field(51; "Volume 1 - Strength 2"; Decimal)
    {
      Caption = 'Volume 1 - Strength 2';
    }
    field(52; "Volume 2 - Strength 1"; Decimal)
    {
      Caption = 'Volume 2 - Strength 1';
    }
    field(53; "Volume 2 - Strength 2"; Decimal)
    {
      Caption = 'Volume 2 - Strength 2';
    }
    field(54; Correction; Boolean)
    {
      Caption = 'Correction';
    }
    field(55; Closed; Boolean)
    {
      Caption = 'Closed';
    }
    field(56; "Closed by Entry No."; Integer)
    {
      Caption = 'Closed by Entry No.';
    }
    field(57; "Source Type"; Enum SourceType102FDW)
    {
      Caption = 'Source Type';
    }
    field(58; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(59; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(60; "Location Ref. 1"; Text[20])
    {
      Caption = 'Location Tax Ref. 1';
    }
    field(61; "Location Ref. 2"; Text[20])
    {
      Caption = 'Location Tax Ref. 2';
    }
    field(62; "Document No. 1"; Code[20])
    {
      Caption = 'Document No. 1';
    }
    field(63; "Document No. 2"; Code[20])
    {
      Caption = 'Document No. 2';
    }
    field(64; "Tariff No."; Code[20])
    {
      Caption = 'Tariff No.';
    }
    field(65; "Item Category Code"; Code[20])
    {
      Caption = 'Item Category Code';
    }
    field(66; "Bin Code"; Code[20])
    {
      Caption = 'Bin Code';
    }
    field(67; "Item Ref. 1"; Text[20])
    {
      Caption = 'Item Tax Ref. 1';
    }
    field(68; "Item Ref. 2"; Text[20])
    {
      Caption = 'Item Tax Ref. 2';
    }
    field(69; "Strength 3 Code"; Code[10])
    {
      Caption = 'Strength 3 Code';
    }
    field(70; "Strength 3 Value"; Decimal)
    {
      Caption = 'Strength 3 Value';
    }
    field(71; "Volume 3 Code"; Code[10])
    {
      Caption = 'Volume 3 Code';
    }
    field(72; "Volume 3 Value"; Decimal)
    {
      Caption = 'Volume 3 Value';
    }
    field(73; "Volume 3 - Strength 3"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 3';
    }
    field(74; "Strength 3 Code Filter"; Code[10])
    {
      Caption = 'Strength 3 Code Filter';
    }
    field(75; "Volume 3 Code Filter"; Code[10])
    {
      Caption = 'Volume 3 Code Filter';
    }
    field(79; "Volume 1 - Strength 3"; Decimal)
    {
      Caption = 'Tot. Volume 1 - Strength 3';
    }
    field(80; "Volume 2 - Strength 3"; Decimal)
    {
      Caption = 'Tot. Volume 2 - Strength 3';
    }
    field(81; "Volume 3 - Strength 1"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 1';
    }
    field(82; "Volume 3 - Strength 2"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 2';
    }
    field(90; "Excise Product Code"; Code[20])
    {
      Caption = 'Excise Product Code';
    }
    field(105; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(110; Inventoriable; Boolean)
    {
      Caption = 'Inventoriable';
    }
    field(111; "Tax Inventory Amount"; Decimal)
    {
      Caption = 'Tax Inventory Amount';
    }
    field(117; "Closed by Date"; Date)
    {
      Caption = 'Closed by Date';
    }
    field(118; "Closed by Document No."; Code[20])
    {
      Caption = 'Closed by Document No.';
    }
  }
  keys
  {
    key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
    {
    }
  }
  var TaxJournalBatch: Record TaxJournalBatch102FDW;
  TaxJournalLine: Record TaxJournalLine102FDW;
  TaxJournalTemplate: Record TaxJournalTemplate102FDW;
  // GeneralHook101FDW: Codeunit GeneralHook101FDW;
  // NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  // // NoDeleteCorrectionLineErr: Label;
  // Item: Record Item;
  // Publishers102FDW: Codeunit Publishers102FDW;
}