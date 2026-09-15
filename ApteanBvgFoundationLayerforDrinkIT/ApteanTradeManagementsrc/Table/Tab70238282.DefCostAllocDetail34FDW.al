table 70238282 DefCostAllocDetail34FDW
{
  Caption = 'Deferred Cost Allocation Detail';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Deferred Cost Alloc. Entry No."; Integer)
    {
      Caption = 'Deferred Cost Alloc. Entry No.';
    }
    field(3; "Deferred Cost Entry No."; Integer)
    {
      Caption = 'Deferred Cost Entry No.';
    }
    field(4; "Deferred Cost Code"; Code[20])
    {
      Caption = 'Deferred Cost Code';
    }
    field(5; "Allocation Method"; Enum DeferredCostAllocMethod34FDW)
    {
      Caption = 'Allocation Method';
    }
    field(6; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(7; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(8; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(9; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(10; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(11; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(12; "Expected Receipt Date"; Date)
    {
      Caption = 'Expected Receipt Date';
    }
    field(13; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(14; "Line Size"; Decimal)
    {
      Caption = 'Line Size';
    }
    field(15; "Total Net Weight"; Decimal)
    {
      Caption = 'Line Net Weight';
    }
    field(16; "Allocated Amount"; Decimal)
    {
      Caption = 'Allocated Amount';
    }
    field(17; "Target Type"; Integer)
    {
      Caption = 'Target Type';
    }
    field(18; "Target No."; Code[20])
    {
      Caption = 'Target No.';
    }
    field(19; "Target Line No."; Integer)
    {
      Caption = 'Target Line No.';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(UniqueKey; "Target Type", "Target No.", "Target Line No.")
    {
    }
  }
}