table 71631583 SingleSession101FDW
{
  Caption = 'Single Session';

  fields
  {
    field(1; "Message Type"; Enum MessageType101FDW)
    {
      Caption = 'Message Type';
    }
  }
  keys
  {
    key(PK; "Message Type")
    {
    }
  }
}