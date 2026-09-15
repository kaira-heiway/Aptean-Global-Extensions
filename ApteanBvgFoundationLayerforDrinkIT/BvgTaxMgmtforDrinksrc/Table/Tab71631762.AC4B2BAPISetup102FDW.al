table 71631762 AC4B2BAPISetup102FDW
{
  Caption = 'AC4 B2B API Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(11; "System Name"; Text[50])
    {
      Caption = 'System Name';
    }
    field(12; Password; Text[100])
    {
      Caption = 'Password';
    }
    field(13; "BCE Number"; Text[20])
    {
      Caption = 'BCE Number';
    }
    field(17; "Auth URL"; Text[250])
    {
      Caption = 'Authentication URL';
    }
    field(18; "Notification URL"; Text[250])
    {
      Caption = 'Notification URL';
    }
    field(21; "Last Authentication"; DateTime)
    {
      Caption = 'Last Authentication';
    }
    field(22; "Access Token"; Text[250])
    {
      Caption = 'Access Token';
    }
    field(23; "Token Expiry"; DateTime)
    {
      Caption = 'Token Expiry';
    }
    field(24; "Base64 Credentials"; Text[250])
    {
      Caption = 'BASE64 Credentials';
    }
    field(25; "Declaration URL"; Text[250])
    {
      Caption = 'Declaration URL';
    }
    field(30; "Document URL"; Text[250])
    {
      Caption = 'Document URL';
    }
    field(31; "Document Type"; Text[30])
    {
      Caption = 'Document Type';
    }
    field(32; "Document Correlation Id"; Text[50])
    {
      Caption = 'Document Correlation Id';
    }
    field(33; "Document Attachment"; Blob)
    {
      Caption = 'Document Attachment';
    }
    field(34; "Last Document Upload"; DateTime)
    {
      Caption = 'Last Document Upload';
    }
    field(35; "Error Message"; Blob)
    {
      Caption = 'Error Message';
    }
    field(36; "Auto. Send Document in Decl."; Boolean)
    {
      Caption = 'Automatically Send Document in Declaration';
    }
    field(50; "Test Company"; Boolean)
    {
      Caption = 'Test Company';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}