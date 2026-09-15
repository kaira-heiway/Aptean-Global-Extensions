table 71632095 ItemShelfLifeCust108FDW
{
  Caption = 'Item Shelf Life Per Customer';

  fields
  {
    field(1; "Customer No."; Code[20])
    {
      Caption = 'Customer No.';
    }
    field(2; Type; Enum LotExpexpirationValType108FDW)
    {
      Caption = 'Type';
    }
    field(3; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(4; "Period Lot No. Expiration"; DateFormula)
    {
      Caption = 'Period Lot No. Expiration';
    }
    field(5; "Lot Exp. Validation"; Enum LotExpexpirationVal108FDW)
    {
      Caption = 'Lot Exp. Validation';
    }
    field(6; "Period Calculation Method"; Enum PeriodCalculationMethod108FDW)
    {
      Caption = 'Period Calculation Method';
    }
    field(7; "Expiration %"; Decimal)
    {
      Caption = 'Expiration %';
    }
  }
  keys
  {
    key(PK; "Customer No.", Type, "No.")
    {
    }
  }
}