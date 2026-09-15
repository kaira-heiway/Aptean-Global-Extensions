table 71631834 Rule104FDW
{
  Caption = 'Empty Goods Rule';

  fields
  {
    field(1; "Empty Goods Code"; Code[20])
    {
      Caption = 'Empty Goods Code';
    }
    field(2; "Entry Type"; Enum IntlEntryType104FDW)
    {
      Caption = 'Entry Type';
    }
    field(3; "Empty Goods Business Group"; Code[20])
    {
      Caption = 'Empty Goods Business Group';
    }
    field(4; "Empty Goods Location Group"; Code[20])
    {
      Caption = 'Empty Goods Location Group';
    }
    field(5; "Movement Type"; Enum IntlMovementType104FDW)
    {
      Caption = 'Movement Type';
    }
    field(6; "Reason code104FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(7; "Rsn code (att line)104FDW"; Code[10])
    {
      Caption = 'Reason Code (attached line)';
    }
  }
  keys
  {
    key(PK; "Empty Goods Code", "Entry Type", "Empty Goods Business Group", "Empty Goods Location Group", "Reason code104FDW")
    {
    }
  }
}