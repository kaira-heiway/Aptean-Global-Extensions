table 71631746 PostedDocumentTaxLine102FDW
{
  Caption = 'Posted Document Tax Line';

  fields
  {
    field(1; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(3; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(4; "Source Batch Name"; Code[10])
    {
      Caption = 'Source Batch Name';
    }
    field(5; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(6; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(7; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(8; "Item Class. Code"; Code[20])
    {
      Caption = 'Item Tax Class. Code';
    }
    field(9; "From Class. Code"; Code[20])
    {
      Caption = 'From Tax Class. Code';
    }
    field(10; "To Class. Code"; Code[20])
    {
      Caption = 'To Tax Class. Code';
    }
    field(11; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(12; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(13; "Unit Tax Amount"; Decimal)
    {
      Caption = 'Unit Tax Amount';
    }
    field(14; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(15; "Entry Type"; Enum EntryTypeDocTax102FDW)
    {
      Caption = 'Entry Type';
    }
    field(16; "Tax Box ID"; Code[20])
    {
      Caption = 'Tax Box ID';
    }
    field(18; "Direction of Movement"; Enum DirectionofMovement102FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(19; "Sub Direction"; Enum SubDirection102FDW)
    {
      Caption = 'Sub Direction';
    }
    field(20; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(21; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(22; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(23; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(24; "VAT %"; Decimal)
    {
      Caption = 'VAT %';
    }
    field(25; "VAT Calculation Type"; Enum VATCalculationType102FDW)
    {
      Caption = 'VAT Calculation Type';
    }
    field(26; "VAT Clause Code"; Code[20])
    {
      Caption = 'VAT Clause Code';
    }
    field(27; "VAT Base Amount"; Decimal)
    {
      Caption = 'VAT Base Amount';
    }
    field(28; "VAT Difference"; Decimal)
    {
      Caption = 'VAT Difference';
    }
    field(29; "VAT Identifier"; Code[20])
    {
      Caption = 'VAT Identifier';
    }
    field(30; "Amount Including VAT"; Decimal)
    {
      Caption = 'Amount Including VAT';
    }
    field(31; "Duty Point"; Enum DutyPoint102FDW)
    {
      Caption = 'Duty Point';
    }
    field(32; "Charge Document No."; Code[20])
    {
      Caption = 'Charge Document No.';
    }
    field(33; "Charge Document Line No."; Integer)
    {
      Caption = 'Charge Document Line No.';
    }
    field(34; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(35; "Unit Tax Amount LCY"; Decimal)
    {
      Caption = 'Unit Tax Amount LCY';
    }
    field(36; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(37; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(38; "Rate Code"; Code[20])
    {
      Caption = 'Rate Code';
    }
    field(39; "Source Item No."; Code[20])
    {
      Caption = 'Source Item No.';
    }
    field(40; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(41; "Total Tax Quantity"; Decimal)
    {
      Caption = 'Total Tax Quantity';
    }
    field(42; "Reason Code 102FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(43; "Remaining Quantity"; Decimal)
    {
      Caption = 'Remaining Quantity';
    }
    field(44; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(45; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(46; "Calculation Factor"; Decimal)
    {
      Caption = 'Calculation Factor';
    }
    field(47; "Excise Product Code"; Code[20])
    {
      Caption = 'Excise Product Code';
    }
    field(48; "Bill\Pay-to Source No."; Code[20])
    {
      Caption = 'Bill\Pay-to Source No.';
    }
    field(51; "Rsn Code (att line) 102FDW"; Code[10])
    {
      Caption = 'Reason Code (attached line)';
    }
    field(52; "Invoiced Quantity"; Decimal)
    {
      Caption = 'Invoiced Quantity';
    }
    field(53; "Invoiced Amount"; Decimal)
    {
      Caption = 'Invoiced Amount';
    }
    field(57; "VAT Special Regulations"; Boolean)
    {
      Caption = 'VAT Special Regulations';
    }
    field(60; "Movement Type"; Enum MovementType102FDW)
    {
      Caption = 'Movement Type';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source ID", "Source Batch Name", "Source Ref. No.", "Line No.")
    {
    }
    key(Key1; "Source Type", "Source ID", "Source Ref. No.")
    {
    }
  }
}