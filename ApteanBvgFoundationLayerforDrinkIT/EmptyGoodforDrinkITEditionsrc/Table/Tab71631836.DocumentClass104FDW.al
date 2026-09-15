table 71631836 DocumentClass104FDW
{
  Caption = 'Doc Empty Goods Classification';

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
    field(7; Type; Enum IntlType104FDW)
    {
      Caption = 'Type';
    }
    field(8; value; Code[20])
    {
      Caption = 'value';
    }
    field(9; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(10; "Rounding Up"; Boolean)
    {
      Caption = 'Rounding Up';
      ObsoleteReason = 'Replaced by "Rounding"';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(11; Rounding; Enum Rounding104FDW)
    {
      Caption = 'Rounding';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Ref. No.", "Empty Goods Code", value)
    {
    }
  }
}