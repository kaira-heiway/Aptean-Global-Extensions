enum 62500 "PO Creation Method APS"
{
    Extensible = true;
    Caption = 'Purchase Order Creation Method';

    value(0; "Create Purchase Order")
    {
        Caption = 'Create Purchase Order';
    }
    value(1; "Create Released Purchase Order")
    {
        Caption = 'Create Released Purchase Order';
    }
    value(2; "Create Released and Received PO")
    {
        Caption = 'Create Released and Received Purchase Order';
    }
}
