table 71631577 PriceInfo101FDW
{
  Caption = 'Price Info';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(10; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(12; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(14; "Source Type"; Enum PriceInfoSourceType101FDW)
    {
      Caption = 'Source Type';
    }
    field(15; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(30; "Prices Including VAT"; Boolean)
    {
      Caption = 'Prices Including VAT';
    }
    field(40; "Unit Price Excl. VAT"; Decimal)
    {
      Caption = 'Unit Price Excl. VAT';
    }
    field(41; "Unit Price Incl. VAT"; Decimal)
    {
      Caption = 'Unit Price Incl. VAT';
    }
    field(50; "VAT %"; Decimal)
    {
      Caption = 'VAT %';
    }
    field(51; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(102; "Minimum Quantity"; Decimal)
    {
      Caption = 'Minimum Quantity';
    }
    field(103; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(104; "Is Sales Unit of Measure"; Boolean)
    {
      Caption = 'Is Sales Unit of Measure';
    }
    field(200; "Tax Amount Excl. VAT"; Decimal)
    {
      Caption = 'Tax Amount Excl. VAT';
    }
    field(201; "Tax Amount Incl. VAT"; Decimal)
    {
      Caption = 'Tax Amount Incl. VAT';
    }
    field(202; "Deposit Amount Excl. VAT"; Decimal)
    {
      Caption = 'Deposit Amount Excl. VAT';
    }
    field(203; "Deposit Amount Incl. VAT"; Decimal)
    {
      Caption = 'Deposit Amount Incl. VAT';
    }
    field(204; "Condition Amount Excl. VAT"; Decimal)
    {
      Caption = 'Condition Amount Excl. VAT';
    }
    field(205; "Condition Amount Incl. VAT"; Decimal)
    {
      Caption = 'Condition Amount Incl. VAT';
    }
    field(300; "Published Price"; Decimal)
    {
      Caption = 'Published Price';
    }
    field(301; "Prices Inc. Tax Charges"; Boolean)
    {
      Caption = 'Prices Inc. Tax Charges';
    }
    field(302; "Prices Inc. Deposit Charges"; Boolean)
    {
      Caption = 'Prices Inc. Deposit Charges';
    }
    field(303; "Prices Inc. Condition Charges"; Boolean)
    {
      Caption = 'Prices Inc. Condition Charges';
    }
    field(310; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(1000; Error; Boolean)
    {
      Caption = 'Error';
    }
    field(1001; "Error Message"; Text[250])
    {
      Caption = 'Error Message';
    }
    field(1010; "As per Date"; Date)
    {
      Caption = 'As per Date';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
    key(Combination; "Item No.", "Source Type", "Source No.", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
    {
    }
    key(ItemNo; "Item No.")
    {
    }
    key(SourceTypeNo; "Source Type", "Source No.", "Item No.")
    {
    }
  }
  var 
  //IntlGeneralHook: Codeunit IntlGeneralHook101FDW;
  HeaderSet: Boolean;
  LineSet: Boolean;
  NeedsToBeCleared: Boolean;
  HeaderVariant: Variant;
  LineVariant: Variant;
}