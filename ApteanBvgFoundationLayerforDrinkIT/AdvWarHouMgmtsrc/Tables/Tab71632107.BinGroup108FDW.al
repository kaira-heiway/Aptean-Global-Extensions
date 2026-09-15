table 71632107 BinGroup108FDW
{
  Caption = 'Bin Group';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(3; Bins; Integer)
    {
      Caption = 'Bins';
    }
    field(4; "Calc. Put-Away Temp. Data"; Boolean)
    {
      Caption = 'Calculate Put-Away Template data';
    }
    field(5; "OverstorePut-Away Bin Capcity"; Boolean)
    {
      Caption = 'Overstore Put-Away Bin Capacity';
    }
    field(6; "Picking Process"; Boolean)
    {
      Caption = 'Picking Process';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}