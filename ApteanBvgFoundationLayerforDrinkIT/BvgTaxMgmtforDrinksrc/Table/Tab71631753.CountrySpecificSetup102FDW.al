table 71631753 CountrySpecificSetup102FDW
{
  Caption = 'Country Specific Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Enable BE AC4"; Boolean)
    {
      Caption = 'Enable BE AC4';
    }
    field(3; "E-AC4 Function Code"; Code[10])
    {
      Caption = 'E-AC4 Function Code';
    }
    field(4; "Declaration Part 1"; Code[10])
    {
      Caption = 'Declaration Part One';
    }
    field(5; "Declaration Part 2"; Code[10])
    {
      Caption = 'Declaration Part Two';
    }
    field(6; "Excise Register. Proc. Part 1"; Code[10])
    {
      Caption = 'Excise Registration Procedure Part One';
    }
    field(7; "Operator Identifier"; Code[10])
    {
      Caption = 'Operator Identifier';
    }
    field(8; "Eco Tax Registration Code"; Code[20])
    {
      Caption = 'Eco Tax Registration Code';
    }
    field(9; "E-AC4 VAT% Code"; Code[10])
    {
      Caption = 'E-AC4 VAT% Code';
    }
    field(10; "Declarant Identification Type"; Code[10])
    {
      Caption = 'Declarant Identification Type';
    }
    field(11; "Declarant Status"; Code[10])
    {
      Caption = 'Declarant Status';
    }
    field(12; "Language Code"; Code[10])
    {
      Caption = 'Language Code';
    }
    field(13; "Operator ID"; Code[20])
    {
      Caption = 'Operator ID';
    }
    field(14; "AC4 LRN Number"; Code[20])
    {
      Caption = 'AC4 LRN Number';
    }
    field(15; "Eco Tax Number"; Code[20])
    {
      Caption = 'Eco Tax Number';
    }
    field(16; "AC4 Payment Method"; Code[10])
    {
      Caption = 'AC4 Payment Method';
    }
    field(17; "AC4 Payment Account"; Code[20])
    {
      Caption = 'AC4 Payment Account';
    }
    field(18; "VAT Payment"; Boolean)
    {
      Caption = 'VAT Payment';
    }
    field(19; "VAT Payment Method"; Code[10])
    {
      Caption = 'VAT Payment Method';
    }
    field(20; "AC4 Tax Validation Office"; Code[20])
    {
      Caption = 'AC4 Tax Validation Office';
    }
    field(21; "Consignee Identification No.1"; Code[50])
    {
      Caption = 'Consignee Identification No.1';
    }
    field(22; "Consignee Identification No.2"; Code[50])
    {
      Caption = 'Consignee Identification No.2';
    }
    field(23; "Consignee Identification No.3"; Code[50])
    {
      Caption = 'Consignee Identification No.3';
    }
    field(24; "Consignee Identification No.4"; Code[50])
    {
      Caption = 'Consignee Identification No.4';
    }
    field(25; "Consignee Identification No.5"; Code[50])
    {
      Caption = 'Consignee Identification No.5';
    }
    field(26; "Consignee Number No.1"; Code[20])
    {
      Caption = 'Consignee Number No.1';
    }
    field(27; "Consignee Number No.2"; Code[20])
    {
      Caption = 'Consignee Number No.2';
    }
    field(28; "Consignee Number No.3"; Code[20])
    {
      Caption = 'Consignee Number No.3';
    }
    field(29; "Consignee Number No.4"; Code[20])
    {
      Caption = 'Consignee Number No.4';
    }
    field(30; "Consignee Number No.5"; Code[20])
    {
      Caption = 'Consignee Number No.5';
    }
    field(31; "Excise Registration Part2 No.1"; Code[10])
    {
      Caption = 'Excise Registration Part Two No.1';
    }
    field(32; "Excise Registration Part2 No.2"; Code[10])
    {
      Caption = 'Excise Registration Part Two No.2';
    }
    field(33; "Excise Registration Part2 No.3"; Code[10])
    {
      Caption = 'Excise Registration Part Two No.3';
    }
    field(34; "Excise Registration Part2 No.4"; Code[10])
    {
      Caption = 'Excise Registration Part Two No.4';
    }
    field(35; "Excise Registration Part2 No.5"; Code[10])
    {
      Caption = 'Excise Registration Part Two No.5';
    }
    field(36; "Net Weight UOM"; Enum AC4NetWeight102FDW)
    {
      Caption = 'Net Weight UOM';
    }
    field(37; "Eco Tax Code"; Code[20])
    {
      Caption = 'Eco Tax Code';
    }
    field(38; "Eco Tax Reusable Code"; Code[20])
    {
      Caption = 'Eco Tax Reusable Code';
    }
    field(39; "Alcohol Percentage"; Enum StrengthType102FDW)
    {
      Caption = 'Alcohol Percentage';
    }
    field(40; "Degree of Plato"; Enum StrengthType102FDW)
    {
      Caption = 'Degree of Plato';
    }
    field(41; "Reusable Packaging Label"; Text[30])
    {
      Caption = 'Reusable Packaging Label';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}