table 70238280 DeferredCostAllocation34FDW
{
  Caption = 'Deferred Cost Allocation';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Deferred Cost Entry No."; Integer)
    {
      Caption = 'Deferred Cost Entry No.';
    }
    field(3; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(4; "Deferred Cost Code"; Code[20])
    {
      Caption = 'Deferred Cost Code';
    }
    field(5; "Deferred Cost Description"; Text[100])
    {
      Caption = 'Deferred Cost Description';
    }
    field(6; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(7; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(9; "Allocation Method"; Enum DeferredCostAllocMethod34FDW)
    {
      Caption = 'Allocation Method';
    }
    field(13; Amount; Decimal)
    {
      Caption = 'Amount (LCY)';
    }
    field(14; "Date From"; Date)
    {
      Caption = 'Date From';
    }
    field(15; "Date To"; Date)
    {
      Caption = 'Date To';
    }
    field(16; "Purch. Allocated Amount"; Decimal)
    {
      Caption = 'Purch. Allocated Amount (LCY)';
    }
    field(17; "Sales Allocated Amount"; Decimal)
    {
      Caption = 'Sales Allocated Amount (LCY)';
    }
    field(18; "Amount to Allocate"; Decimal)
    {
      Caption = 'Amount to Allocate (LCY)';
    }
    field(19; "Period Method"; Enum PeriodMethod34FDW)
    {
      Caption = 'Period Method';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(UniqueKey; "Deferred Cost Entry No.")
    {
    }
  }
}