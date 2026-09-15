table 71632094 WhseStatus108FDW
{
  Caption = 'Logistics Status';

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
    field(3; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(4; "Allowed Next Steps"; Integer)
    {
      Caption = 'Allowed Next Steps';
    }
    field(5; "Allowed Back Steps"; Integer)
    {
      Caption = 'Allowed Back Steps';
    }
    field(6; "Display Order"; Integer)
    {
      Caption = 'Display Order';
    }
    field(7; "Exclude From Pick"; Boolean)
    {
      Caption = 'Exclude from Pick';
    }
    field(8; "Allowed on Post Shipment"; Boolean)
    {
      Caption = 'Allowed on Post Shipment';
    }
    field(9; "Inbound Blocks"; Integer)
    {
      Caption = 'Inbound Blocks';
    }
    field(10; "Outbound Blocks"; Integer)
    {
      Caption = 'Outbound Blocks';
    }
    field(11; "Handle LP Trans. Validation"; Boolean)
    {
      Caption = 'Handle License Plate Transport Validation';
    }
    field(12; "Next Trans. Validation"; Enum NextTransValidation108FDW)
    {
      Caption = 'Next Transport Validation';
    }
    field(13; "Block Whse. Shpmnt. Deletion"; Boolean)
    {
      Caption = 'Block Warehouse Shipment Deletion';
    }
  }
  keys
  {
    key(PK; Type, Code)
    {
    }
    key(Key1; "Display Order")
    {
    }
  }
}