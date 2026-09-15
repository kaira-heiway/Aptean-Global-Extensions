table 71631751 TaxOffice102FDW
{
  Caption = 'Tax Office';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(10; Name; Text[100])
    {
      Caption = 'Name';
    }
    field(11; Address; Text[100])
    {
      Caption = 'Address';
    }
    field(12; City; Text[30])
    {
      Caption = 'City';
    }
    field(13; "Post Code"; Code[20])
    {
      Caption = 'Post Code';
    }
    field(14; "Country/Region Code"; Code[10])
    {
      Caption = 'Country/Region Code';
    }
    field(20; "Tax Office Code"; Code[20])
    {
      Caption = 'Tax Office Code';
    }
  }
  keys
  {
    key(PK; "No.")
    {
    }
  }
}