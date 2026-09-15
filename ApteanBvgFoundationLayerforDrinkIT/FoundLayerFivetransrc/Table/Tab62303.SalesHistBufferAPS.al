table 62303 "Sales Hist. Buffer APS"
{
    Caption = 'Sales Hist. Buffer';
    DataClassification = CustomerContent;
    TableType = Temporary;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            ToolTip = 'Specifies the sequential entry number that uniquely identifies each line in the sales item history buffer.';
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            ToolTip = 'Specifies the sell-to customer number for which this history entry was retrieved.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            ToolTip = 'Specifies the item number from the customer''s shipment history.';
        }
        field(4; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            ToolTip = 'Specifies the item variant from the customer''s shipment history.';
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the item description.';
        }
        field(6; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            ToolTip = 'Specifies the unit of measure used on the shipment.';
        }
        field(7; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            ToolTip = 'Specifies the location from which the item was shipped.';
        }
        field(8; "Last Shipment Date"; Date)
        {
            Caption = 'Last Shipment Date';
            ToolTip = 'Specifies the posting date of the most recent shipment for this item.';
        }
        field(9; "Qty. Last Ordered"; Decimal)
        {
            Caption = 'Qty. Last Ordered';
            DecimalPlaces = 0 : 5;
            ToolTip = 'Specifies the quantity shipped on the most recent shipment for this item.';
        }
        field(10; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 2 : 5;
            ToolTip = 'Specifies the unit price from the most recent shipment for this item.';
        }
        field(11; "Order Quantity"; Decimal)
        {
            Caption = 'Order Quantity';
            DecimalPlaces = 0 : 5;
            ToolTip = 'Specifies the quantity to order for this item. Lines with a quantity greater than zero are added to the sales order on confirmation.';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
