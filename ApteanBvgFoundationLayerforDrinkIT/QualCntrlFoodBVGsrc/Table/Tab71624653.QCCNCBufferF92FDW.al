table 71624653 QCCNCBufferF92FDW
{
  Caption = 'Quality Control Check-Non Conformance';

  fields
  {
    field(1; "Entry No."; Integer)
    {
    }
    field(11; "No."; Text[25])
    {
      Caption = 'No.';
    }
    field(12; Status; Option)
    {
      Caption = 'Status';
      OptionMembers =  Open, "In Progress", Closed, " ";
      OptionCaption = ' Open, "In Progress", Closed, " "';
    }
    field(13; "Reason Code"; Code[10])
    {
      Caption = 'Reason';
    }
    field(14; "QC Check No."; Code[20])
    {
      Caption = 'QC Check No.';
    }
    field(15; "NC Type"; Enum NonConformanceType92FDW)
    {
      Caption = 'Type';
    }
    field(16; Indentation; Integer)
    {
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
  }
}