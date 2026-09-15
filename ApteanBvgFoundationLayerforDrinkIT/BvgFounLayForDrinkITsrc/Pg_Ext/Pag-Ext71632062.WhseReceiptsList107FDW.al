pageextension 71632062 "Whse Receipts List 107FDW" extends "Warehouse Receipts"
{
    layout
    {
        //addafter("Location Code")
        addlast(content)
        {
            field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
            {
                Visible = true;
            }
        }
    }
}