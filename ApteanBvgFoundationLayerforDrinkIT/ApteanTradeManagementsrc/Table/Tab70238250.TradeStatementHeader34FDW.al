table 70238250 TradeStatementHeader34FDW
{
  Caption = 'Trade Statement Header';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(11; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(12; "Trade Partner Source Type"; Enum "Trade Partner Source Type FDW")
    {
      Caption = 'Type';
    }
    field(13; Name; Text[100])
    {
      Caption = 'Name';
    }
    field(14; Address; Text[100])
    {
      Caption = 'Address';
    }
    field(15; "Address 2"; Text[50])
    {
      Caption = 'Address 2';
    }
    field(16; "Post Code"; Code[20])
    {
      Caption = 'Post Code';
    }
    field(17; City; Text[30])
    {
      Caption = 'City';
    }
    field(18; County; Text[30])
    {
      Caption = 'County';
    }
    field(19; "Country/Region Code"; Code[10])
    {
      Caption = 'Country/Region Code';
    }
    field(31; "Document Date"; Date)
    {
      Caption = 'Document Date';
    }
    field(32; "Issued Date"; Date)
    {
      Caption = 'Issued Date';
    }
    field(33; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(34; "Currency Factor"; Decimal)
    {
      Caption = 'Currency Factor';
    }
    field(35; "Statement From Date"; Date)
    {
      Caption = 'Statement From';
    }
    field(36; "Statement To Date"; Date)
    {
      Caption = 'Statement To';
    }
    field(37; "Total Amount Calculated"; Decimal)
    {
      Caption = 'Total Amount Calculated';
    }
    field(38; "Total Amount Granted"; Decimal)
    {
      Caption = 'Total Amount Granted';
    }
    field(39; Issued; Boolean)
    {
      Caption = 'Issued';
    }
    field(50; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
  }
  keys
  {
    key(PK; "No.")
    {
    }
  }
  var TradeManagementSetup: Record "Trade Management Setup FDW";
  NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  //CurrencyChangeLbl: Label[100];
}