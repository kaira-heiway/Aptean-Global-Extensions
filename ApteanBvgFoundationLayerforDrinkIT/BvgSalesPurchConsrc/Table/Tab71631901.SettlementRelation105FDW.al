table 71631901 SettlementRelation105FDW
{
  Caption = 'Settlement Condition Relation';

  fields
  {
    field(1; "Condition Entry No."; Integer)
    {
      Caption = 'Condition Entry No.';
    }
    field(10; "G/L Register No."; Integer)
    {
      Caption = 'G/L Register No.';
    }
    field(11; "G/L Entry No."; Integer)
    {
      Caption = 'G/L Entry No.';
    }
    field(20; "Item Register No."; Integer)
    {
      Caption = 'Item Register No.';
    }
    field(21; "Item Entry No."; Integer)
    {
      Caption = 'Item Entry No.';
    }
    field(22; "Value Entry No."; Integer)
    {
      Caption = 'Value Entry No.';
    }
    field(30; "Closed Condition Entry No."; Integer)
    {
      Caption = 'Closed Condition Entry No.';
    }
    field(50; "Sales Amount (Actual)"; Decimal)
    {
      Caption = 'Condition Sales Amount (Actual)';
    }
    field(51; "Purchase Amount (Actual)"; Decimal)
    {
      Caption = 'Condition Purchase Amount (Actual)';
    }
    field(52; "Discount Amount (Actual)"; Decimal)
    {
      Caption = 'Condition Discount (Actual)';
    }
    field(53; "Cost Amount (Actual)"; Decimal)
    {
      Caption = 'Condition Cost Amount (Actual)';
    }
    field(100; "Closed G/L Entry"; Boolean)
    {
      Caption = 'Closed G/L Entry';
    }
  }
  keys
  {
    key(PK; "Condition Entry No.", "Item Entry No.", "G/L Entry No.", "Value Entry No.", "Closed Condition Entry No.")
    {
    }
    key(SK_ClosedConditionEntry; "Closed Condition Entry No.")
    {
    }
  }
  //var IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
}