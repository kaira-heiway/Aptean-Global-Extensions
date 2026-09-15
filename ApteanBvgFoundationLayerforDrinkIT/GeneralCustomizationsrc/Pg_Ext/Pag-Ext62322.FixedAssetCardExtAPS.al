pageextension 62322 "Fixed Asset Card Ext. APS" extends "Fixed Asset Card"
{
    layout
    {
        addlast(General)
        {
            field("FA Template APS"; Rec."FA Template APS")
            {
                ApplicationArea = FixedAssets;
                ToolTip = 'Specifies the FA template associated with this fixed asset.';
            }

            field("FA in Inventory APS"; FAInInventoryAPS)
            {
                ApplicationArea = FixedAssets;
                Caption = 'FA in Inventory';
                ToolTip = 'Specifies the inventory for the item number and serial number corresponding with the fixed asset.';
                Editable = false;
            }
        }
        // addafter("Customer No. 114FDW")
        // {
        //     field("Customer Name APS"; Rec."Customer Name APS")
        //     {
        //         ApplicationArea = FixedAssets;
        //         ToolTip = 'Specifies the name of the customer related to the fixed asset.';
        //     }
        // }
        addlast(content)
        {
            group(CTSServiceItem)
            {
                Caption = 'Service Item';

                field("Service Item No."; Rec."Service Item No. APS")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the service item linked to this fixed asset.';

                    // trigger OnDrillDown()
                    // begin
                    //     OpenLinkedServiceItem();
                    // end;
                }
            }
        }
    }



    actions
    {
        addlast(navigation)
        {
            action(CTSServiceItemCard)
            {
                ApplicationArea = Service;
                Caption = 'Service Item';
                Image = ServiceItem;
                ToolTip = 'Open the service item card linked to this fixed asset.';

                // trigger OnAction()
                // begin
                //     OpenLinkedServiceItem();
                // end;
            }
            action(CTSServiceItemCustomers)
            {
                ApplicationArea = Service;
                Caption = 'Customer Relations';
                Image = Customer;
                ToolTip = 'View customer deployment history for the service item linked to this fixed asset.';

                // trigger OnAction()
                // begin
                //     OpenServiceItemCustomerRelations();
                // end;
            }
        }
        addlast(Promoted)
        {
            actionref(CTSServiceItemCard_Promoted; CTSServiceItemCard) { }
            actionref(CTSServiceItemCustomers_Promoted; CTSServiceItemCustomers) { }
        }
    }
    // trigger OnAfterGetCurrRecord()
    // begin
    //     FAInInventoryAPS := CalcFAInInventory();
    // end;

    var
        FAInInventoryAPS: Boolean;
        NoSvcItemLinkedErr: Label 'No service item is linked to fixed asset %1.', Comment = '%1 = Fixed Asset No.';

    // local procedure OpenLinkedServiceItem()
    // var
    //     ServiceItem: Record "Service Item";
    // begin
    //     if Rec."Service Item No. APS" = '' then
    //         Error(NoSvcItemLinkedErr, Rec."No.");
    //     ServiceItem.SetLoadFields("No.");
    //     if not ServiceItem.Get(Rec."Service Item No. APS") then
    //         Error(NoSvcItemLinkedErr, Rec."No.");
    //     Page.Run(Page::"Service Item Card", ServiceItem);
    // end;

    // local procedure OpenServiceItemCustomerRelations()
    // var
    //     CustRelation: Record "Svc. Item Cust. Relation APS";
    // begin
    //     if Rec."Service Item No. APS" = '' then
    //         Error(NoSvcItemLinkedErr, Rec."No.");
    //     CustRelation.SetRange("Service Item No.", Rec."Service Item No. APS");
    //     Page.RunModal(Page::"Svc. Item Cust. Relations APS", CustRelation);
    // end;

    // local procedure CalcFAInInventory(): Boolean
    // var
    //     SvcItem: Record "Service Item";
    //     ItemLedgerEntry: Record "Item Ledger Entry";
    //     ItemNo: Code[20];
    //     SerialNo: Code[50];
    // begin
    //     if Rec."Service Item No. APS" = '' then
    //         exit(false);
    //     if not SvcItem.Get(Rec."Service Item No. APS") then
    //         exit(false);
    //     ItemNo := SvcItem."Item No.";
    //     SerialNo := SvcItem."Serial No.";
    //     if ItemNo = '' then
    //         exit(false);
    //     ItemLedgerEntry.SetRange("Item No.", ItemNo);
    //     ItemLedgerEntry.SetRange("Serial No.", SerialNo);
    //     ItemLedgerEntry.SetRange(Open, true);
    //     exit(not ItemLedgerEntry.IsEmpty());
    // end;
}