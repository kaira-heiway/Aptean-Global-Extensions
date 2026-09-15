table 71631585 SingleUserSession101FDW
{
  Caption = 'Single User Session';

  fields
  {
    field(1; "Service Instance Id"; Integer)
    {
      Caption = 'Service Instance Id';
    }
    field(2; "Session Id"; Integer)
    {
      Caption = 'Session Id';
    }
    field(3; "User Security Id"; Guid)
    {
      Caption = 'User Security Id';
    }
    field(10; "Key Message Type"; Enum MessageType101FDW)
    {
      Caption = 'Message Type';
    }
    field(21; "Key Data Id"; Guid)
    {
      Caption = 'Key Data Id';
    }
    field(22; "Key Data1"; Text[1024])
    {
      Caption = 'Key Data1';
    }
    field(23; "Key Data2"; Text[1024])
    {
      Caption = 'Key Data2';
    }
    field(30; Description; Text[1024])
    {
      Caption = 'Description';
    }
    field(90; "User Name"; Code[50])
    {
      Caption = 'User Name';
    }
    field(91; "Full Name"; Text[80])
    {
      Caption = 'Full Name';
    }
  }
  keys
  {
    key(PK; "Service Instance Id", "Session Id", "User Security Id", "Key Message Type", "Key Data Id", "Key Data1", "Key Data2")
    {
    }
  }
  //var IntlGeneralHook101FDW: Codeunit IntlGeneralHook101FDW;
}