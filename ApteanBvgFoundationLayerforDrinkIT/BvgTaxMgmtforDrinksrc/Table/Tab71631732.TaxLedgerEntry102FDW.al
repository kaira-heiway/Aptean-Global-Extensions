table 71631732 TaxLedgerEntry102FDW
{
  Caption = 'Tax Ledger Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(3; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(4; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(5; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(6; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(7; "Source Code"; Code[10])
    {
      Caption = 'Source Code';
    }
    field(8; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(9; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(10; "Item Tax Class. Code"; Code[20])
    {
      Caption = 'Item Tax Class. Code';
    }
    field(11; "Direction of Movement"; Enum DirectionofMovement102FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(12; "Source Type"; Enum SourceType102FDW)
    {
      Caption = 'Source Type';
    }
    field(13; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(15; "From Tax Class. Code"; Code[20])
    {
      Caption = 'From Tax Classification Code';
    }
    field(16; "To Tax Class. Code"; Code[20])
    {
      Caption = 'To Tax Classification Code';
    }
    field(17; "Rate Code"; Code[20])
    {
      Caption = 'Rate Code';
    }
    field(18; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(19; "Unit Tax Amount"; Decimal)
    {
      Caption = 'Unit Tax Amount';
    }
    field(20; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(21; "Tax Box ID"; Code[20])
    {
      Caption = 'Tax Box ID';
    }
    field(22; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(23; "Document Type"; Enum DocumentType102FDW)
    {
      Caption = 'Document Type';
    }
    field(24; "Item Ledger Entry Type"; Enum EntryTypeJnl102FDW)
    {
      Caption = 'Item Ledger Entry Type';
    }
    field(25; "Unit Volume 1"; Decimal)
    {
      Caption = 'Unit Volume 1';
    }
    field(26; "Unit Volume 2"; Decimal)
    {
      Caption = 'Unit Volume 2';
    }
    field(27; "Strength 1"; Decimal)
    {
      Caption = 'Strength 1';
    }
    field(28; "Strength 2"; Decimal)
    {
      Caption = 'Strength 2';
    }
    field(29; "Net Weight 1 102FDW"; Decimal)
    {
      Caption = 'Net Weight 1';
    }
    field(30; "Net Weight 2 102FDW"; Decimal)
    {
      Caption = 'Net Weight 2';
    }
    field(31; "Gross Weight 1 102FDW"; Decimal)
    {
      Caption = 'Gross Weight 1';
    }
    field(32; "Gross Weight 2 102FDW"; Decimal)
    {
      Caption = 'Gross Weight 2';
    }
    field(33; "Volume 1"; Decimal)
    {
      Caption = 'Volume 1';
    }
    field(34; "Volume 2"; Decimal)
    {
      Caption = 'Volume 2';
    }
    field(35; "Volume 1 - Strength 1"; Decimal)
    {
      Caption = 'Volume 1 - Strength 1';
    }
    field(36; "Volume 1 - Strength 2"; Decimal)
    {
      Caption = 'Volume 1 - Strength 2';
    }
    field(37; "Volume 2 - Strength 1"; Decimal)
    {
      Caption = 'Volume 2 - Strength 1';
    }
    field(38; "Volume 2 - Strength 2"; Decimal)
    {
      Caption = 'Volume 2 - Strength 2';
    }
    field(39; Closed; Boolean)
    {
      Caption = 'Closed';
    }
    field(40; "Closed by Entry No."; Integer)
    {
      Caption = 'Closed by Entry No.';
    }
    field(41; "Warehouse Entry No."; Integer)
    {
      Caption = 'Warehouse Entry No.';
    }
    field(42; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(43; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(44; "Movement Type"; Enum MovementType102FDW)
    {
      Caption = 'Movement Type';
    }
    field(45; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(46; "Shortcut Dimension 1 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 1 Code';
    }
    field(47; "Shortcut Dimension 2 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 2 Code';
    }
    field(48; Positive; Boolean)
    {
      Caption = 'Positive';
    }
    field(49; "Parent Item No."; Code[20])
    {
      Caption = 'Parent Item No.';
    }
    field(50; "Reason Code 102FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(51; "Posted to G/L"; Boolean)
    {
      Caption = 'Posted to G/L';
    }
    field(52; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(53; "Location Ref. 1"; Text[20])
    {
      Caption = 'Location Tax Ref. 1';
    }
    field(54; "Location Ref. 2"; Text[20])
    {
      Caption = 'Location Tax Ref. 2';
    }
    field(55; "Document No. 1"; Code[20])
    {
      Caption = 'Document No. 1';
    }
    field(56; "Document No. 2"; Code[20])
    {
      Caption = 'Document No. 2';
    }
    field(57; "Tariff No."; Code[20])
    {
      Caption = 'Tariff No.';
    }
    field(58; "Item Category Code"; Code[20])
    {
      Caption = 'Item Category Code';
    }
    field(59; "G/L Integration"; Boolean)
    {
      Caption = 'G/L Integration';
    }
    field(60; "Taxable Base"; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base';
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
    field(76; "Taxable Base 2"; Enum ValueType102FDW)
    {
      Caption = 'Taxable Base 2';
    }
    field(77; "Strength Base"; Enum StrengthType102FDW)
    {
      Caption = 'Strength Base';
    }
    field(78; "Strength Base 2"; Enum StrengthType102FDW)
    {
      Caption = 'Strength Base 2';
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
    field(110; "BE AC4 Declaration Type"; Enum AC4DeclarationType102FDW)
    {
      Caption = 'BE AC4 Declaration Type';
    }
    field(111; "AC4 Packaging Code"; Code[20])
    {
      Caption = 'AC4 Packaging Code';
    }
    field(115; Inventoriable; Boolean)
    {
      Caption = 'Inventoriable';
    }
    field(116; "Tax Inventory Amount"; Decimal)
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
    key(Key1; "Entry No.")
    {
    }
    key(Key2; "Tax Code")
    {
    }
    key(Key3; "Tax Code", "Posting Date", Closed)
    {
    }
    key(Key4; "Item Ledger Entry Type", Closed, "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "Posting Date")
    {
    }
    key(Key5; "Tax Code", "Item No.", "Location Code", "Item Tax Class. Code", "Item Category Code", "Tariff No.", "Strength 1", "Strength 2", "Posting Date")
    {
    }
    key(Key6; "Item Ledger Entry No.")
    {
    }
    key(Key7; "Tax Box ID", "Entry No.")
    {
    }
    key(Key8; "Movement Type", "G/L Integration", "Posted to G/L")
    {
    }
    key(Key9; "Source Type", "Source No.")
    {
    }
    key(Key10; "Posting Date", "Document No.")
    {
    }
    key(Key11; "Location Code", "Item No.", Inventoriable)
    {
    }
    key(Key12; "Tax Code", "Posting Date", "Location Code", "Item Tax Class. Code", "From Tax Class. Code", "To Tax Class. Code", "Item Ledger Entry Type", Closed, "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", Positive)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Entry No.", "Tax Code", "Posting Date", "Document Date")
    {
    }
  }
  // var GeneralHook101FDW: Codeunit GeneralHook101FDW;
}