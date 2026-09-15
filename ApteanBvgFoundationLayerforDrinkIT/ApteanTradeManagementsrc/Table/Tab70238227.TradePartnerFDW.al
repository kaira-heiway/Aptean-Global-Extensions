table 70238227 "Trade Partner FDW"
{
    Caption = 'Trade Partner';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; "Source Type"; Enum "Trade Partner Source Type FDW")
        {
            Caption = 'Source Type';
        }
        field(4; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(5; "Gen. Prod. Posting Group (Exp)"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group Expected Cost';
        }
        field(6; "Invoice Method"; Enum TradePartnerInvoiceMethodFDW)
        {
            Caption = 'Invoice Method';
        }
        // field(7; "Create Trade Statement After"; Enum TradePartnerCreateTradeStnFDW)
        // {
        //   Caption = 'Create Trade Statement After';
        //   ObsoleteReason = 'Replaced by field "Create Trade Statement After 2"';
        //   ObsoleteState = Removed;
        //   ObsoleteTag = '1.3';
        // }
        field(8; "Include Returns Credit Memo's"; Boolean)
        {
            Caption = 'Include Returns / Credit Memo''s';
            ObsoleteReason = 'Field not being used currently';
            ObsoleteState = Removed;
            ObsoleteTag = '1.3';
        }
        field(9; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(10; "Create Trade Statement After 2"; Enum TradePartnerStatementAfterFDW)
        {
            Caption = 'Create Trade Statement After';
            ObsoleteReason = 'Field not being used currently';
            ObsoleteState = Removed;
            ObsoleteTag = '1.3';
        }
        field(11; "Trade Partner Group Code"; Code[20])
        {
            Caption = 'Trade Partner Group Code';
        }
        field(12; "Trade Statement Incl. (Sales)"; Enum TradeStatementInclSalesFDW)
        {
            Caption = 'Trade Statement Inclusion for Sales';
        }
    }
    keys
    {
        key(PK; "No.")
        {
        }
        key(SK; "Source Type", "Source No.")
        {
        }
    }
    fieldgroups
    {
        fieldgroup(Brick; "No.", "Source Type", "Source No.")
        {
        }
    }
    var
        TradeManagementSetup: Record "Trade Management Setup FDW";
        NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
    // TradePartnerLinkedToTradePlanErr: Label[100];
}