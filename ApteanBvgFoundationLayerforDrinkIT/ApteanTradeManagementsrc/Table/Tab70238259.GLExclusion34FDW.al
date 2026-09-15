table 70238259 GLExclusion34FDW
{
  Caption = 'Global Lot Attribute Exclusion';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(20; GlobalLotAttrValueID01; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 1';
    }
    field(21; GlobalLotAttrValueID02; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 2';
    }
    field(22; GlobalLotAttrValueID03; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 3';
    }
    field(23; GlobalLotAttrValueID04; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 4';
    }
    field(24; GlobalLotAttrValueID05; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 5';
    }
    field(25; GlobalLotAttrValueID06; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 6';
    }
    field(26; GlobalLotAttrValueID07; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 7';
    }
    field(27; GlobalLotAttrValueID08; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 8';
    }
    field(28; GlobalLotAttrValueID01Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 1';
    }
    field(29; GlobalLotAttrValueID02Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 2';
    }
    field(30; GlobalLotAttrValueID03Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 3';
    }
    field(31; GlobalLotAttrValueID04Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 4';
    }
    field(32; GlobalLotAttrValueID05Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 5';
    }
    field(33; GlobalLotAttrValueID06Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 6';
    }
    field(34; GlobalLotAttrValueID07Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 7';
    }
    field(35; GlobalLotAttrValueID08Filter; Blob)
    {
      Caption = 'Global Lot Attribute Value ID Filter 8';
    }
    field(36; ExclusionCount; Integer)
    {
      Caption = 'Exclusion Count';
    }
    field(37; DeleteExclusionCount; Integer)
    {
      Caption = 'Delete Exclusion Count';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Line No.")
    {
    }
  }
}