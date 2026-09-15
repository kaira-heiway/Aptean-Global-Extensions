table 71631839 Buffer104FDW
{
  Caption = 'Empty Goods Buffer';

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
    field(6; "Empty Goods Code"; Code[20])
    {
      Caption = 'Empty Goods Code';
    }
    field(7; "Empty Goods Business Group"; Code[20])
    {
      Caption = 'Empty Goods Business Group';
    }
    field(8; "Empty Goods Location Group"; Code[20])
    {
      Caption = 'Empty Goods Location Group';
    }
    field(9; "Item Class. Code"; Code[20])
    {
      Caption = 'Item Class. Code';
    }
    field(10; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(11; "Rounding Up"; Boolean)
    {
      Caption = 'Rounding Up';
      ObsoleteReason = 'Replaced by "Rounding"';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(12; Rounding; Enum Rounding104FDW)
    {
      Caption = 'Rounding';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Ref. No.", "Empty Goods Code", "Empty Goods Business Group", "Empty Goods Location Group", "Item Class. Code")
    {
    }
  }
}