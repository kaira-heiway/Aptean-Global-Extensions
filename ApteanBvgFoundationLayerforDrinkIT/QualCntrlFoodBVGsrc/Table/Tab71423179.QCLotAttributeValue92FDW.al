table 71423179 QCLotAttributeValue92FDW
{
  Caption = 'Quality Control Lot Attributes';

  fields
  {
    field(1; "Table ID"; Integer)
    {
      Caption = 'Table ID';
    }
    field(2; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(3; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(4; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(5; "Lot Attribute Name"; Text[250])
    {
      Caption = 'Lot Attribute Name';
    }
    field(6; "Lot Attribute Value"; Text[250])
    {
      Caption = 'Lot Attribute Value';
    }
    field(11; "Lot No. Information Id"; Guid)
    {
      Caption = 'Lot No. Information Id';
    }
  }
  keys
  {
    key(Key1; "Table ID", "Item No.", "Variant Code", "Lot No.", "Lot Attribute Name")
    {
    }
  }
}