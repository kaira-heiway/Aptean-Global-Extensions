table 71632108 PickingGroupOrder108FDW
{
  Caption = 'Picking Group Order';

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
    field(4; "Picking Bin Group Code"; Code[20])
    {
      Caption = 'Bin Group Code';
    }
    field(5; Sequence; Integer)
    {
      Caption = 'Sequence';
    }
    field(6; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(7; Bins; Integer)
    {
      Caption = 'Bins';
    }
  }
  keys
  {
    key(PK; "Whse. Template Group", "Whse. Template Code", "Picking Bin Group Code")
    {
    }
    key(key2; "Whse. Template Group", "Whse. Template Code", Sequence)
    {
    }
  }
}