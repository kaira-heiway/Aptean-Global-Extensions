table 71631837 DocumentLine104FDW
{
  Caption = 'Document Empty Goods Line';

  fields
  {
    field(1; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(2; "Source Subtype"; Enum IntlSourceSubtype104FDW)
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
    field(6; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(7; "Empty Goods Code"; Code[20])
    {
      Caption = 'Empty Goods Code';
    }
    field(8; "Empty Goods Business Group"; Code[20])
    {
      Caption = 'Empty Goods Business Group';
    }
    field(9; "Empty Goods Location Group"; Code[20])
    {
      Caption = 'Empty Goods Location Group';
    }
    field(10; "Empty Goods Item No."; Code[20])
    {
      Caption = 'Empty Goods Item No.';
    }
    field(11; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(12; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(13; "Unit Amount"; Decimal)
    {
      Caption = 'Unit Amount';
    }
    field(14; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(15; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(16; "Total Quantity"; Decimal)
    {
      Caption = 'Total Quantity';
    }
    field(17; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(18; "Entry Type"; Enum IntlEntryType104FDW)
    {
      Caption = 'Entry Type';
    }
    field(19; "Movement Type"; Enum IntlMovementType104FDW)
    {
      Caption = 'Movement Type';
    }
    field(20; "GLAccount Document No."; Code[20])
    {
      Caption = 'GLAccount Document No.';
    }
    field(21; "GLAccount Document Line No."; Integer)
    {
      Caption = 'GLAccount Document Line No.';
    }
    field(24; Discount; Decimal)
    {
      Caption = 'Discount';
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
    field(33; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(34; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(35; "Bill\Pay-to Source No."; Code[20])
    {
      Caption = 'Bill\Pay-to Source No.';
    }
    field(36; "Amount (LCY)"; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(37; "Unit Amount (LCY)"; Decimal)
    {
      Caption = 'Unit Amount (LCY)';
    }
    field(40; "VAT %"; Decimal)
    {
      Caption = 'VAT %';
    }
    field(41; "Amount Including VAT"; Decimal)
    {
      Caption = 'Amount Including VAT';
    }
    field(50; "Rule ID"; Guid)
    {
      Caption = 'Rule ID';
    }
    field(51; "Reason code104FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(52; "Rsn code (att line) 104FDW"; Code[10])
    {
      Caption = 'Reason Code (attached line)';
    }
    field(53; "Invoiced Quantity"; Decimal)
    {
      Caption = 'Invoice Quantity';
    }
    field(54; "Invoiced Amount"; Decimal)
    {
      Caption = 'Invoice Amount';
    }
    field(55; "Rounding Up"; Boolean)
    {
      Caption = 'Rounding Up (Obsolete)';
      ObsoleteReason = 'Replaced by "Rounding"';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(56; "Price Includes VAT"; Boolean)
    {
      Caption = 'Price Includes VAT';
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
    field(900; "Split Qty. to Invoice"; Decimal)
    {
      Caption = 'Split Qty. to Invoice';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Ref. No.", "Line No.")
    {
    }
    key(Key2; "GLAccount Document No.", "GLAccount Document Line No.")
    {
    }
    key(Key3; "Source Type", "Source Subtype", "GLAccount Document No.", "Bill\Pay-to Source No.")
    {
    }
  }
  var 
  // Currency: Record Currency;
  // PurchaseHeader: Record "Purchase Header";
  // SalesHeader: Record "Sales Header";
  // IntlGeneralHook: Codeunit IntlGeneralHook104FDW;
  SuppressCheckAndDeleteLinkedGLAccount: Boolean;
}