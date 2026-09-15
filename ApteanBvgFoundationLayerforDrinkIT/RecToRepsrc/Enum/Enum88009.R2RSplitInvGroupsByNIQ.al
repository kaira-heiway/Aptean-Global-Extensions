enum 88009 "R2R Split Inv. Groups By NIQ"
{
    Caption = 'Split Invoice Groups By';
    Extensible = true;

    value(0; "")
    {
        Caption = ' ';
    }
    value(1; "By Invoice")
    {
        Caption = 'By Invoice';
    }
    value(2; "By CustVend LE")
    {
        Caption = 'By Customer/Vendor Ledger Entries';
    }
}