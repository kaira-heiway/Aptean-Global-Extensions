enum 70238224 TradePartnerCreateTradeStnFDW
{
    Extensible = true;
    ObsoleteReason = 'Replaced by enum TradePartnerStatementAfterFDW';
    ObsoleteState = Pending;
    ObsoleteTag = '1.3';

    value(0; "Receipt/Shipment")
    {
        Caption = 'Receipt/Shipment';
    }
    value(1; Invoice)
    {
        Caption = 'Invoice';
    }
    value(2; Payment)
    {
        Caption = 'Payment';
    }
}