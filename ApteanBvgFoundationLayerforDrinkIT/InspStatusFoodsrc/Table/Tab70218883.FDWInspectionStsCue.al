table 70218883 FDWInspectionStsCue
{
  Caption = 'Inspection Status Cue';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
    }
    field(11; "Lots Inspection Status 1 FDW"; Integer)
    {
    }
    field(12; "Lots Inspection Status 2 FDW"; Integer)
    {
    }
    field(13; "Blocked Lot No. FDW"; Integer)
    {
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
  var InspectionStatusSetupFDW: Record InspectionStatusSetupFDW;
}