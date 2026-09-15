table 71632423 "FiscalRep./Expeditor113FDW"
{
  Caption = 'Fiscal Rep./Expeditor';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(10; Name; Text[100])
    {
      Caption = 'Name';
    }
    field(11; Address; Text[100])
    {
      Caption = 'Address';
    }
    field(12; "Address 2"; Text[50])
    {
      Caption = 'Address 2';
    }
    field(13; City; Text[30])
    {
      Caption = 'City';
    }
    field(14; "Post Code"; Code[20])
    {
      Caption = 'Post Code';
    }
    field(15; "Country/Region Code"; Code[10])
    {
      Caption = 'Country/Region Code';
    }
    field(16; County; Text[30])
    {
      Caption = 'County';
    }
    field(20; "Phone No."; Text[30])
    {
      Caption = 'Phone No.';
    }
    field(21; "Fax No."; Text[30])
    {
      Caption = 'Fax No.';
    }
    field(22; Email; Text[80])
    {
      Caption = 'Email';
    }
    field(23; "Home Page"; Text[255])
    {
      Caption = 'Home Page';
    }
    field(30; "Name 2"; Text[100])
    {
      Caption = 'Name 2';
    }
    field(40; "VAT Registration No."; Text[20])
    {
      Caption = 'VAT Registration No.';
    }
    field(41; "Tax Registration No."; Code[20])
    {
      Caption = 'Tax Registration No.';
    }
    field(42; "EORI No."; Code[20])
    {
      Caption = 'EORI No.';
    }
    field(43; "Tax Warehouse Reference"; Code[20])
    {
      Caption = 'Tax Warehouse Reference';
    }
    field(44; "Tax Office Code"; Code[20])
    {
      Caption = 'Tax Office Code';
    }
    field(50; Contact; Text[100])
    {
      Caption = 'Contact';
    }
    field(60; "Transport Time"; Integer)
    {
      Caption = 'Transport Time';
    }
    // field(100; "Destination Type"; Enum EMCSDestinationType100FDW)
    // {
    //   Caption = 'Destination Type';
    // }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
  var PostCode: Record "Post Code";
  //IntlHook: Codeunit IntlHook113FDW;
}