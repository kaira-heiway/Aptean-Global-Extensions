table 72947706 DeferredCostWorksheet34FDW
{
  Caption = 'Deferred Cost Worksheet';

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
    field(9; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(10; "Unit Cost"; Decimal)
    {
      Caption = 'Unit Cost (LCY)';
    }
    field(11; Amount; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(12; "Quantity Assigned"; Decimal)
    {
      Caption = 'Quantity Assigned';
    }
    field(13; "Amount Assigned"; Decimal)
    {
      Caption = 'Amount Assigned (LCY)';
    }
    field(14; "Deferred Cost Code"; Code[20])
    {
      Caption = 'Deferred Cost Code';
    }
    field(15; "Deferred Cost Alloc Method"; Enum DeferredCostAllocMethod34FDW)
    {
      Caption = 'Deferred Cost Allocation Method';
    }
    field(16; "Deferred Cost Description"; Text[100])
    {
      Caption = 'Deferred Cost Description';
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
    field(25; "Quantity to Assign"; Decimal)
    {
      Caption = 'Quantity to Assign';
    }
    field(26; "Amount to Assign"; Decimal)
    {
      Caption = 'Amount to Assign (LCY)';
    }
    field(27; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(28; "Deferred Cost Period Method"; Enum PeriodMethod34FDW)
    {
      Caption = 'Deferred Cost Period Method';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
  }
}