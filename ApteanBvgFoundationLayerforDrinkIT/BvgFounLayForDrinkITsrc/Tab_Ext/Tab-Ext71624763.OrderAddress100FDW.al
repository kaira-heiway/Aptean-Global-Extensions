tableextension 71624763 OrderAddress100FDW extends "Order Address"
{
  fields
  {
    field(71624729; "Default Route 107FDW"; Code[10])
    {
      Caption = 'Default Route';
    }
    field(71624730; "Load Zone Left 107FDW"; Boolean)
    {
      Caption = 'Load Zone Left';
    }
    field(71624731; "Load Zone Right 107FDW"; Boolean)
    {
      Caption = 'Load Zone Right';
    }
    field(71624732; "Delivery Type 107FDW"; Code[10])
    {
      Caption = 'Delivery Type';
    }
    field(71624733; "Load Zone Back 107FDW"; Boolean)
    {
      Caption = 'Load Zone Back';
    }
    field(71624734; "Route Limit 107FDW"; Boolean)
    {
      Caption = 'Route Limit';
    }
    field(71624735; "Default Class. 102FDW"; Code[20])
    {
      Caption = 'Default Tax Classification';
    }
    field(71624736; "Tax Office Code 102FDW"; Code[20])
    {
      Caption = 'Tax Office Code';
    }
    field(71624737; "Tax Warehouse Ref. 113FDW"; Code[20])
    {
      Caption = 'Tax Warehouse Reference';
    }
    field(71624738; "Transport Method Code 113FDW"; Code[10])
    {
      Caption = 'Transport Method';
    }
    field(71624739; "Destination Type 113FDW"; Enum EMCSDestinationType100FDW)
    {
      Caption = 'Destination Type';
    }
    field(71624740; "Fiscal Rep. No. 113FDW"; Code[20])
    {
      Caption = 'Fiscal Representative No.';
    }
    field(71624741; "Transport Arrangement 113FDW"; Enum TransportArrangement100FDW)
    {
      Caption = 'Transport Arrangement';
    }
    field(71624742; "Tax Registration No. 113FDW"; Text[20])
    {
      Caption = 'Tax Registration No.';
    }
  }
}