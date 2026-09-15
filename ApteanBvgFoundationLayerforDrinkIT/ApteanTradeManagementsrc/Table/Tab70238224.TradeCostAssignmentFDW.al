table 70238224 "Trade Cost Assignment FDW"
{
  Caption = 'Trade Cost Assignment';

  fields
  {
    field(1; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(2; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(3; "Applies-to Item Led. Entry No."; Integer)
    {
      Caption = 'Applies-to Item Ledger Entry No.';
    }
    field(4; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(5; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(6; "Applies-to Doc. Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Applies-to Doc. Type';
    }
    field(7; "Applies-to Doc. No."; Code[20])
    {
      Caption = 'Applies-to Doc. No.';
    }
    field(8; "Applies-to Doc. Line No."; Integer)
    {
      Caption = 'Applies-to Doc. Line No.';
    }
    field(9; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(10; "Amount to Assign"; Decimal)
    {
      Caption = 'Amount to Assign';
    }
    field(11; "Cost Amount (Expected)"; Decimal)
    {
      Caption = 'Cost Amount (Expected)';
    }
    field(12; "Cost Amount (Actual)"; Decimal)
    {
      Caption = 'Cost Amount (Actual)';
    }
    field(13; "Gross Weight"; Decimal)
    {
      Caption = 'Gross Weight';
    }
    field(14; "Net Weight"; Decimal)
    {
      Caption = 'Net Weight';
    }
    field(15; "Floor Space Type"; Code[20])
    {
      Caption = 'Floor Space Type';
    }
    field(16; "Calculated Floor Space"; Decimal)
    {
      Caption = 'Calculated Floor Space';
    }
    field(17; "Calc. Floor Space Surface"; Decimal)
    {
      Caption = 'Calculated Floor Space Surface';
    }
  }
  keys
  {
    key(PK; "Document No.", "Document Line No.", "Applies-to Item Led. Entry No.")
    {
    }
    key(Key1; "Applies-to Doc. Type", "Applies-to Doc. No.", "Applies-to Doc. Line No.")
    {
    }
  }
 // var NoItemChargesCanBeAppliedToItemLedgerEntryNoErr: Label[100];
}