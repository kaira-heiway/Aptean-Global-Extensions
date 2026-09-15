table 71632100 WhseStatusRule108FDW
{
  Caption = 'Logistics Status Rule';

  fields
  {
    field(1; Type; Enum LogisticsStatusType108FDW)
    {
      Caption = 'Type';
    }
    field(2; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(3; "Status Code"; Code[10])
    {
      Caption = 'Status Code';
    }
    field(4; "Action Type"; Option )
    {
      Caption = 'Action Type';
      OptionMembers = "Allow Next", "Allow Previous";
      OptionCaption = '"Allow Next", "Allow Previous"';
    }
  }
  keys
  {
    key(PK; Type, Code, "Status Code", "Action Type")
    {
    }
  }
}