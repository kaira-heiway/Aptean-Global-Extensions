table 70218876 InspectionStatusLineFDW
{
  Caption = 'Inspection Status Line';

  fields
  {
    field(1; InspectionStatusCode; Code[10])
    {
      Caption = 'Code';
    }
    field(2; Type; Enum InspectionStatusFDW)
    {
      Caption = 'Type';
    }
    field(3; Blocked; Boolean)
    {
      Caption = 'Blocked';
    }
  }
  keys
  {
    key(PK; InspectionStatusCode, Type)
    {
    }
  }
}