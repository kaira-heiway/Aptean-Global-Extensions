table 71631730 TaxMasterDataValue102FDW
{
  Caption = 'Tax Master Data Value';

  fields
  {
    field(1; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(2; Type; Enum Type102FDW)
    {
      Caption = 'Type';
    }
    field(3; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(4; "Tax Value Code"; Code[20])
    {
      Caption = 'Tax Value Code';
    }
    field(5; "Validation Type"; Enum ValidationType102FDW)
    {
      Caption = 'Validation Type';
    }
    field(6; "Field No."; Integer)
    {
      Caption = 'Field No.';
    }
    field(7; Value; Decimal)
    {
      Caption = 'Value';
    }
  }
  keys
  {
    key(PK; "Tax Code", Type, "No.", "Tax Value Code")
    {
    }
    key(Key1; Type, "No.", "Validation Type", "Field No.")
    {
    }
  }
}