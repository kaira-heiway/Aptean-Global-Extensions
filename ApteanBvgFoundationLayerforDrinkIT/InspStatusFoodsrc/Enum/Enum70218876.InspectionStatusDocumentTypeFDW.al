enum 70218876 InspectionStatusDocTypeFDW
{
    Extensible = true;
    ObsoleteReason = 'Replaced by Enum InspectionStatusTriggerTypeFDW';
    ObsoleteState = Pending;
    ObsoleteTag = '1.5';

    value(0; PurchaseReceipt)
    {
        Caption = 'Purchase Receipt';
    }
    value(1; SalesReturnReceipt)
    {
        Caption = 'Sales Return Receipt';
    }
    value(2; OutputProduction)
    {
        Caption = 'Output Production';
    }
    value(3; OutputAssembly)
    {
        Caption = 'Output Assembly';
    }
    value(4; PositiveAdjustment)
    {
        Caption = 'Positive Adjustment';
    }
    value(5; QualityCheckPassed)
    {
        Caption = 'Quality Check Passed';
    }
    value(6; QualityCheckFailed)
    {
        Caption = 'Quality Check Failed';
    }
    value(7; ExpiredSalesExpirationDate)
    {
        Caption = 'Expired Sales Expiration Date';
    }
    value(8; ExpiredExpirationDate)
    {
        Caption = 'Expired Expiration Date';
    }
    value(9; FollowUpNeeded)
    {
        Caption = 'Follow-up Needed';
    }
}