enum 62501 "Trade Cost Order Status APS"
{
    Extensible = true;
    Caption = 'Trade Cost Order Status';

    value(0; New)
    {
        Caption = 'New';
    }
    value(1; "Purchase Order Created")
    {
        Caption = 'Purchase Order Created';
    }
    value(2; Received)
    {
        Caption = 'Received';
    }
    value(3; Invoiced)
    {
        Caption = 'Invoiced';
    }
    value(4; Reversed)
    {
        Caption = 'Reversed';
    }
}
