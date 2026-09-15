table 71632123 PutawayGuidance108FDW
{
  Caption = 'Put-Away Guidance';

  fields
  {
    field(1; "Whse. Template Group"; Code[20])
    {
      Caption = 'Warehouse Template Group';
    }
    field(3; "Whse. Template Code"; Code[20])
    {
      Caption = 'Warehouse Template Code';
    }
    field(4; "Bin Group Code"; Code[20])
    {
      Caption = 'Bin Group Code';
    }
    field(5; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(6; "Put-Away Mode"; Enum PutAwayMode108FDW)
    {
      Caption = 'Put-Away Mode';
    }
    field(7; "Guide to / Check on"; Enum PutAwayGuideToCheckOn108FDW)
    {
      Caption = 'Guide to / Check on';
    }
    field(8; "No confirmation Check"; Boolean)
    {
      Caption = 'No confirmation Check';
    }
  }
  keys
  {
    key(PK; "Whse. Template Group", "Whse. Template Code", "Bin Group Code", "Put-Away Mode", "Guide to / Check on")
    {
    }
    key(PK2; Sequence)
    {
    }
  }
  //var GuideCheckOnErr: Label;
}