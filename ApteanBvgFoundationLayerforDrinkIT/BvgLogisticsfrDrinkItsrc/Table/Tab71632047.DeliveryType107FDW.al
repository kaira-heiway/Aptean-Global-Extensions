table 71632047 DeliveryType107FDW
{
  Caption = 'Delivery Type';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(2; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; Code)
    {
    }
  }
}