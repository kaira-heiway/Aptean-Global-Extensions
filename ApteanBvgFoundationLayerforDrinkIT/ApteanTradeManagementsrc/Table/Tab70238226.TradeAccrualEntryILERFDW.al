table 70238226 "Trade Accrual Entry - ILER FDW"
{
  Caption = 'Trade Accrual Entry - Item Ledger Entry Relation';

  fields
  {
    field(1; "Trade Accrual Entry No."; Integer)
    {
      Caption = 'Trade Accrual Entry No.';
    }
    field(2; "Item Ledger Entry No."; Integer)
    {
      Caption = 'Item Ledger Entry No.';
    }
    field(3; "Value Entry No."; Integer)
    {
      Caption = 'Value Entry No.';
    }
  }
  keys
  {
    key(PK; "Trade Accrual Entry No.", "Item Ledger Entry No.")
    {
    }
  }
}