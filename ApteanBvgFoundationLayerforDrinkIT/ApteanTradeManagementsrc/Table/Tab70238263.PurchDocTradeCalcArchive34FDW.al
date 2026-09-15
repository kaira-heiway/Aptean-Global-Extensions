table 70238263 PurchDocTradeCalcArchive34FDW
{
  Caption = 'Purchase Document Trade Calculation Archive';

  fields
  {
    field(1; "Document Table ID"; Integer)
    {
      Caption = 'Document Table ID';
    }
    field(2; "Document Type"; Integer)
    {
      Caption = 'Document Type';
    }
    field(3; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(4; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(5; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(6; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(7; "Price Unit of Measure Code"; Code[10])
    {
      Caption = 'Price Unit of Measure Code';
    }
    field(8; "Base Price"; Decimal)
    {
      Caption = 'Base Price';
    }
    field(9; "Total Price Unit Amount"; Decimal)
    {
      Caption = 'Total Price Unit Amount';
    }
    field(10; "Total Discount Amount"; Decimal)
    {
      Caption = 'Total Discount Amount';
    }
    field(11; "Total Accrual Amount"; Decimal)
    {
      Caption = 'Total Accrual Amount';
    }
    field(12; "New Unit Price in Price UOM"; Decimal)
    {
      Caption = 'New Unit Price in Price UOM';
    }
    field(13; "New Discount %"; Decimal)
    {
      Caption = 'New Discount %';
    }
    field(14; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(15; "Quantity in Price UOM"; Decimal)
    {
      Caption = 'Quantity in Price UOM';
    }
    field(16; "Total Line Amount"; Decimal)
    {
      Caption = 'Total Line Amount';
    }
    field(50; "Version No."; Integer)
    {
      Caption = 'Version No.';
    }
    field(51; "Doc. No. Occurrence"; Integer)
    {
      Caption = 'Doc. No. Occurrence';
    }
  }
  keys
  {
    key(PK; "Document Table ID", "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Document Line No.")
    {
    }
  }
}