table 70218891 InspectionTagCueFDW
{
  Caption = 'Inspection Tag Cue';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Item No. Filter"; Code[20])
    {
      Caption = 'Item No. Filter';
    }
    field(3; "Variant Code Filter"; Code[10])
    {
      Caption = 'Variant Code Filter';
    }
    field(4; "Lot No. Filter"; Code[50])
    {
      Caption = 'Lot No. Filter';
    }
    field(5; "Source Type Filter"; Enum InspectionTagSourceTypeFDW)
    {
      Caption = 'Source Type Filter';
    }
    field(6; "New Tags"; Integer)
    {
      Caption = 'New Tags';
    }
    field(7; "Active Tags"; Integer)
    {
      Caption = 'Active Tags';
    }
    field(8; "Released Tags"; Integer)
    {
      Caption = 'Released Tags';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}