table 71631742 DocumentTaxClass102FDW
{
  Caption = 'Document Tax Classification';

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
    field(6; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(7; "Tax Class. Code"; Code[20])
    {
      Caption = 'Tax Class. Code';
    }
    field(8; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(9; "Sub Direction"; Enum SubDirection102FDW)
    {
      Caption = 'Sub Direction';
    }
    field(10; "Source Item No."; Code[20])
    {
      Caption = 'Source Item No.';
    }
    field(11; "Quantity Per"; Decimal)
    {
      Caption = 'Quantity Per';
    }
    field(12; "Calculation Factor"; Decimal)
    {
      Caption = 'Calculation Factor';
    }
    field(13; "Excise Product Code"; Code[20])
    {
      Caption = 'Excise Product Code';
    }
  }
  keys
  {
    key(PK; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Ref. No.", "Tax Code", "Tax Class. Code", "Sub Direction", "Source Item No.")
    {
    }
    key(SK1; "Source ID", "Source Batch Name", "Source Ref. No.")
    {
    }
    key(SK2; "Source Type", "Source ID", "Source Batch Name", "Source Ref. No.", "Tax Code", Type)
    {
    }
  }
}