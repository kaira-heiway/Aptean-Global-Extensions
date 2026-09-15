table 71423187 QCCheckNCDoc92FDW
{
  Caption = 'Quality Control Check-Non Conformance';

  fields
  {
    field(1; "Quality Control Check No."; Code[20])
    {
      Caption = 'Quality Control Check No.';
    }
    field(2; "Non-Conformance Type"; Enum NonConformanceType92FDW)
    {
      Caption = 'Non-Conformance Type';
    }
    field(3; "Non-Conformance No."; Code[20])
    {
      Caption = 'Non-Conformance No.';
    }
    field(11; "Non-Conformance Line No."; Integer)
    {
      Caption = 'Non-Conformance Line No.';
    }
  }
  keys
  {
    key(PK; "Quality Control Check No.", "Non-Conformance Type", "Non-Conformance No.")
    {
    }
  }
}