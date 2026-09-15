table 71423190 MigrationQCLToQCA92FDW
{
  Caption = 'Migration Log Quality Control';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "CDS Guid PK"; Guid)
    {
      Caption = 'CDS Guid PK';
    }
    field(3; Code; Code[50])
    {
      Caption = 'Code';
    }
    // field(11; "Table Data Name"; __MissingTypeSymbol__)
    // {
    //   Caption = 'Table Data Name';
    // }
    field(12; "Field 1"; Text[2048])
    {
      Caption = 'Field 1';
    }
    field(13; "Field 2"; Text[2048])
    {
      Caption = 'Field 2';
    }
    field(14; "Field 3"; Text[2048])
    {
      Caption = 'Field 3';
    }
    field(15; "Field 4"; Text[2048])
    {
      Caption = 'Field 4';
    }
    field(16; "Field 5"; Text[2048])
    {
      Caption = 'Field 5';
    }
    field(17; "Field 6"; Text[2048])
    {
      Caption = 'Field 6';
    }
    field(18; "Field 7"; Text[2048])
    {
      Caption = 'Field 7';
    }
    field(19; "Field 8"; Text[2048])
    {
      Caption = 'Field 8';
    }
    field(20; "Field 9"; Text[2048])
    {
      Caption = 'Field 9';
    }
    field(21; "Field 10"; Text[2048])
    {
      Caption = 'Field 10';
    }
    field(22; "Field 11"; Text[2048])
    {
      Caption = 'Field 11';
    }
    field(23; "Field 12"; Text[2048])
    {
      Caption = 'Field 12';
    }
    field(24; "Field 13"; Text[2048])
    {
      Caption = 'Field 13';
    }
    field(25; "Field 14"; Text[2048])
    {
      Caption = 'Field 14';
    }
    field(26; "Field 15"; Text[2048])
    {
      Caption = 'Field 15';
    }
    field(27; "Field 16"; Text[2048])
    {
      Caption = 'Field 16';
    }
    field(28; "Field 17"; Text[2048])
    {
      Caption = 'Field 17';
    }
    field(29; "Field 18"; Text[2048])
    {
      Caption = 'Field 18';
    }
    field(30; "Field 19"; Text[2048])
    {
      Caption = 'Field 19';
    }
    field(31; "Field 20"; Text[2048])
    {
      Caption = 'Field 20';
    }
    field(32; Success; Boolean)
    {
      Caption = 'Success';
    }
    field(33; Error; Text[2048])
    {
      Caption = 'Error';
    }
    field(34; Processed; Boolean)
    {
      Caption = 'Processed';
    }
    field(35; "Processed Date Time"; DateTime)
    {
      Caption = 'Processed Date Time';
    }
    field(41; "CDS Guid 1"; Guid)
    {
      Caption = 'CDS Guid 1';
    }
    field(42; "CDS Guid 2"; Guid)
    {
      Caption = 'CDS Guid 2';
    }
    field(43; "CDS Guid 3"; Guid)
    {
      Caption = 'CDS Guid 3';
    }
    field(44; "CDS Guid 4"; Guid)
    {
      Caption = 'CDS Guid 4';
    }
    field(45; "CDS Guid 5"; Guid)
    {
      Caption = 'CDS Guid 5';
    }
    field(46; "CDS Guid 6"; Guid)
    {
      Caption = 'CDS Guid 6';
    }
    field(47; "CDS Guid 7"; Guid)
    {
      Caption = 'CDS Guid 7';
    }
    field(48; "CDS Guid 8"; Guid)
    {
      Caption = 'CDS Guid 8';
    }
    field(49; "CDS Guid 9"; Guid)
    {
      Caption = 'CDS Guid 9';
    }
    field(50; "CDS Guid 10"; Guid)
    {
      Caption = 'CDS Guid 10';
    }
    field(51; "CDS Guid 11"; Guid)
    {
      Caption = 'CDS Guid 11';
    }
    field(52; "CDS Guid 12"; Guid)
    {
      Caption = 'CDS Guid 12';
    }
    field(53; "CDS Guid 13"; Guid)
    {
      Caption = 'CDS Guid 13';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key1; "CDS Guid PK")
    {
    }
  }
}