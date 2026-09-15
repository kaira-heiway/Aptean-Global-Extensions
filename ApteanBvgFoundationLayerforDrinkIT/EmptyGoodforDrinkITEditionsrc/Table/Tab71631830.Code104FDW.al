table 71631830 Code104FDW
{
  Caption = 'Empty Goods Code';

  fields
  {
    field(1; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(5; "Inventory Unit Value"; Decimal)
    {
      Caption = 'Inventory Unit Value';
    }
    field(6; "Sales Account"; Code[20])
    {
      Caption = 'Sales Account';
    }
    field(7; "Purchase Account"; Code[20])
    {
      Caption = 'Purchase Account';
    }
    field(62050; "CM Empty Good Bundle Item APS"; Code[20])
    {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Bundle Item';
            //TableRelation = Item."No." where("Is Empty Good 104FDW" = const(true));
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}