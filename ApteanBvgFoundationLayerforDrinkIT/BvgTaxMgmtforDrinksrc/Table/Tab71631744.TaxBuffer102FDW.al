table 71631744 TaxBuffer102FDW
{
  Caption = 'Tax Buffer';

  fields
  {
    field(1; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(2; "Source Subtype"; Enum SourceSubType102FDW)
    {
      Caption = 'Source SubType';
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
    field(6; "Item No."; Code[20])
    {
      Caption = 'Source Ref. No.';
    }
    field(7; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(8; "Item Class. Code"; Code[20])
    {
      Caption = 'Item Tax Class. Code';
    }
    field(9; "From Tax Class. Code"; Code[20])
    {
      Caption = 'From Tax Class. Code';
    }
    field(10; "To Tax Class. Code"; Code[20])
    {
      Caption = 'To Tax Class. Code';
    }
    field(11; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(12; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(13; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(14; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(15; "Entry Type"; Enum EntryTypeJnl102FDW)
    {
      Caption = 'Entry Type';
    }
    field(16; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(17; "VAT %"; Decimal)
    {
      Caption = 'VAT %';
    }
    field(18; "VAT Calculation Type"; Enum VATCalculationType102FDW)
    {
      Caption = 'VAT Calculation Type';
    }
    field(19; "Amount Including VAT"; Decimal)
    {
      Caption = 'Amount Including VAT';
    }
    field(20; "Duty Point"; Enum DutyPoint102FDW)
    {
      Caption = 'Duty Point';
    }
    field(21; "Source Item No."; Code[20])
    {
      Caption = 'Source Item No.';
    }
    field(22; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(23; "Calculation Factor"; Decimal)
    {
      Caption = 'Calculation Factor';
    }
    field(24; "Excise Product Code"; Code[20])
    {
      Caption = 'Excise Product Code';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Ref. No.", "Item No.", "Tax Code", "Item Class. Code", "From Tax Class. Code", "To Tax Class. Code", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "VAT Prod. Posting Group", "Entry Type", "VAT %", "VAT Calculation Type", "Source Item No.")
    {
    }
  }
}