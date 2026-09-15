table 70238277 DeferredCostEntry34FDW
{
  Caption = 'Deferred Cost Entry';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(3; "Applies-to Entry Type"; Enum DefCostApplToEntryType34FDW)
    {
      Caption = 'Applies-to Entry Type';
    }
    field(4; "Applies-to Entry No."; Integer)
    {
      Caption = 'Applies-to Entry No.';
    }
    field(5; "Applies-to Doc. Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Applies-to Doc. Type';
    }
    field(6; "Applies-to Doc. No."; Code[20])
    {
      Caption = 'Applies-to Doc. No.';
    }
    field(7; "Applies-to Doc. Line No."; Integer)
    {
      Caption = 'Applies-to Doc. Line No.';
    }
    field(8; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure';
    }
    field(9; "Quantity (UOM)"; Decimal)
    {
      Caption = 'Quantity (UOM)';
    }
    field(10; "Unit Cost"; Decimal)
    {
      Caption = 'Unit Cost (LCY)';
    }
    field(11; Amount; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(14; "Deferred Cost Code"; Code[20])
    {
      Caption = 'Deferred Cost Code';
    }
    field(15; "Deferred Cost Description"; Text[100])
    {
      Caption = 'Deferred Cost Description';
    }
    field(16; "Allocation Method"; Enum DeferredCostAllocMethod34FDW)
    {
      Caption = 'Allocation Method';
    }
    field(17; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(18; "Source SubType"; Integer)
    {
      Caption = 'Source SubType';
    }
    field(19; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(20; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(22; "Source System ID"; Guid)
    {
      Caption = 'Source System ID';
    }
    field(23; "Date From"; Date)
    {
      Caption = 'Date From';
    }
    field(24; "Date To"; Date)
    {
      Caption = 'Date To';
    }
    field(25; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(26; "Location Name"; Text[100])
    {
      Caption = 'Location Name';
    }
    field(27; "Purch. Allocated Amount"; Decimal)
    {
      Caption = 'Purch. Allocated Amount (LCY)';
    }
    field(28; "Sales Allocated Amount"; Decimal)
    {
      Caption = 'Sales Allocated Amount (LCY)';
    }
    field(29; "Period Method"; Enum PeriodMethod34FDW)
    {
      Caption = 'Period Method';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
    key(Key2; "Applies-to Entry Type", "Applies-to Entry No.")
    {
    }
  }
}