table 70218880 FDWInspectionStatusCue
{
  Caption = 'Inspection Status Cue';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
    }
    field(2; "Lots Inspection Status 1"; Integer)
    {
    }
    field(3; "Lots Inspection Status 2"; Integer)
    {
    }
    field(4; "Inspection Status 1 Filter"; Code[10])
    {
      Caption = 'Inspection Status 1 Filter';
    }
    field(5; "Inspection Status 2 Filter"; Code[10])
    {
      Caption = 'Inspection Status 2 Filter';
    }
    field(6; "Blocked Lot No."; Integer)
    {
      Caption = 'Blocked Lot No.';
    }
    field(7; "Lots Inspection Tag Status 1"; Integer)
    {
    }
    field(8; "Lots Inspection Tag Status 2"; Integer)
    {
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}