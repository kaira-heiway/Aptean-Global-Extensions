table 70238273 PeriodicCostLine34FDW
{
  Caption = 'Periodic Cost Line';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(10; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(11; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(20; "Receipt ILE"; Integer)
    {
      Caption = 'Receipt Item Leger Entry No.';
    }
    field(21; "Receipt Lot No."; Code[50])
    {
      Caption = 'Receipt Lot No.';
    }
    field(22; "Receipt Entry Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Entry Type")
    {
      Caption = 'Receipt Entry Type';
    }
    field(23; "Receipt Document Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Receipt Document Type';
    }
    field(24; "Receipt Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(25; "Receipt Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(30; Location; Code[10])
    {
      Caption = 'Location';
    }
    field(31; "Receipt Date Location"; Date)
    {
      Caption = 'Receipt Date Location';
    }
    field(32; "Location Receipt ILE"; Integer)
    {
      Caption = 'Location Receipt Item Leger Entry No.';
    }
    field(33; "Location Receipt Lot No."; Code[50])
    {
      Caption = 'Location Receipt Lot No.';
    }
    field(34; "Location Receipt Entry Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Entry Type")
    {
      Caption = 'Location Receipt Entry Type';
    }
    field(35; "Location Receipt Document Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Receipt Document Type';
    }
    field(36; "Location Receipt Document No."; Code[20])
    {
      Caption = 'Location Receipt Document No.';
    }
    field(37; "Location Receipt Doc. Line No."; Integer)
    {
      Caption = 'Location Receipt Document Line No.';
    }
    field(40; "Trade Plan"; Code[20])
    {
      Caption = 'Trade Plan';
    }
    field(41; "Remaining Quantity"; Decimal)
    {
      Caption = 'Remaining Quantity';
    }
    field(42; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(43; "Posted Amount"; Decimal)
    {
      Caption = 'Posted Amount';
    }
    field(44; "Related Amount"; Decimal)
    {
      Caption = 'Related Amount';
    }
    field(50; Open; Boolean)
    {
      Caption = 'Open';
    }
    field(51; "Last Calculation Date"; Date)
    {
      Caption = 'Last Calculation Date';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key2; "Trade Plan", "Receipt ILE", "Location Receipt ILE")
    {
    }
  }
}