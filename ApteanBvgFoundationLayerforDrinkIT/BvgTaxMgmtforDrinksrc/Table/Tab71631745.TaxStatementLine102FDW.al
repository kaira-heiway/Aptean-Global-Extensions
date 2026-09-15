table 71631745 TaxStatementLine102FDW
{
  Caption = 'Tax Statements';

  fields
  {
    field(1; "Statement Template Name"; Code[10])
    {
      Caption = 'Statement Template Name';
    }
    field(2; "Statement Name"; Code[10])
    {
      Caption = 'Statement Name';
    }
    field(3; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(4; "Row No."; Code[10])
    {
      Caption = 'Row No.';
    }
    field(5; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(6; Type; Enum TaxStatementCaculType102FDW)
    {
      Caption = 'Type';
    }
    field(7; "Account Totaling"; Text[30])
    {
      Caption = 'Account Totaling';
    }
    field(8; "Gen. Posting Type"; Enum GenPostingType102FDW)
    {
      Caption = 'Gen. Posting Type';
    }
    field(9; "Gen. Bus. Posting Group"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(10; "Gen. Prod. Posting Group"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(11; "Row Totaling"; Text[50])
    {
      Caption = 'Row Totaling';
    }
    field(12; "Amount Type"; Enum StatementAmountType102FDW)
    {
      Caption = 'Amount Type';
    }
    field(13; "Calculate with"; Enum StatementSignType102FDW)
    {
      Caption = 'Calculate with';
    }
    field(14; Print; Boolean)
    {
      Caption = 'Print';
    }
    field(15; "Print with"; Enum StatementSignType102FDW)
    {
      Caption = 'Print with';
    }
    field(16; "Date Filter"; Date)
    {
      Caption = 'Date Filter';
    }
    field(17; "New Page"; Boolean)
    {
      Caption = 'New Page';
    }
    field(20; "Box No."; Text[30])
    {
      Caption = 'Box No.';
    }
    field(21; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(22; "Item Ledger Entry Type"; Enum EntryTypeJnl102FDW)
    {
      Caption = '[Obsolete] Item Ledger Entry Type';
      ObsoleteReason = 'Replaced by Item Ledger Entry Type Filter.';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(23; "From Tax Class. Code"; Text[250])
    {
      Caption = 'From Tax Class. Code';
    }
    field(24; "To Tax Class. Code"; Text[250])
    {
      Caption = 'To Tax Class. Code';
    }
    field(25; "Item Tax Class. Code"; Text[250])
    {
      Caption = 'Item Tax Class. Code';
    }
    field(26; Positive; Enum StatementPositive102FDW)
    {
      Caption = 'Positive';
    }
    field(27; "Location Code"; Code[50])
    {
      Caption = 'Location Code';
    }
    field(28; "Tax Box ID"; Text[250])
    {
      Caption = 'Tax Box ID';
    }
    field(29; "Strength 1 Value Filter"; Text[20])
    {
      Caption = 'Strength 1 Value Filter';
    }
    field(30; "Strength 2 Value Filter"; Text[20])
    {
      Caption = 'Strength 2 Value Filter';
    }
    field(31; "Tariff No."; Code[250])
    {
      Caption = 'Tariff No.';
    }
    field(32; "Unit of Measure Code Filter"; Text[250])
    {
      Caption = 'Unit of Measure Code Filter';
    }
    field(33; "Item Ledger Entry Type Filter"; Text[250])
    {
      Caption = 'Item Ledger Entry Type Filter';
    }
    field(34; "Rate Code Filter"; Text[250])
    {
      Caption = 'Rate Code Filter';
    }
    field(35; "Reason Code Filter"; Text[250])
    {
      Caption = 'Reason Code Filter';
    }
  }
  keys
  {
    key(PK; "Statement Template Name", "Statement Name", "Line No.")
    {
    }
    key(Key1; "Statement Template Name", "Statement Name", "Tax Code", "Line No.")
    {
    }
  }
  //var GLAccount: Record "G/L Account";
  // IntlGeneralHook102FDW: Codeunit IntlGeneralHook102FDW;
  // CalculateWithErr: Label ;
}