table 70238222 "Trade Cost Header FDW"
{
  Caption = 'Trade Cost Header';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(2; "Posting Date"; Date)
    {
      Caption = 'Posting Date';
    }
    field(3; "Source Document Type"; Enum Microsoft.Inventory.Ledger."Item Ledger Document Type")
    {
      Caption = 'Source Document Type';
    }
    field(4; "Source Document No."; Code[20])
    {
      Caption = 'Source Document No.';
    }
    field(5; "Source Document Line No."; Integer)
    {
      Caption = 'Source Document Line No.';
    }
    field(6; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(7; "Orig. Doc. Table ID"; Integer)
    {
      Caption = 'Orig. Doc. Table ID';
    }
    field(8; "Orig. Doc. Type"; Enum "Orig Doc Type 34 FDW")
    {
      Caption = 'Orig. Doc. Type';
    }
    field(9; "Orig. Doc. No."; Code[20])
    {
      Caption = 'Orig. Doc. No.';
    }
    field(10; "Orig. Doc. Line No."; Integer)
    {
      Caption = 'Orig. Doc. Line No.';
    }
  }
  keys
  {
    key(PK; "No.")
    {
    }
  }
  var TradeCostHeader: Record "Trade Cost Header FDW";
  TradeCostLine: Record "Trade Cost Line FDW";
  TradeManagementSetup: Record "Trade Management Setup FDW";
  NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
 // YouCannotRenameErr: Label;
}