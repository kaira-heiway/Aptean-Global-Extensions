table 71631582 SelectionBuffer101FDW
{
  Caption = 'Selection Buffer';

  fields
  {
    field(1; Name; Text[1000])
    {
      Caption = 'Name';
    }
    field(2; "Display Order"; Integer)
    {
      Caption = 'Display Order';
    }
    field(10; Selected; Boolean)
    {
      Caption = 'Selected';
    }
  }
  keys
  {
    key(PK; Name)
    {
    }
    key(DisplayOrder; "Display Order")
    {
    }
  }
  var PageCaption: Text;
}