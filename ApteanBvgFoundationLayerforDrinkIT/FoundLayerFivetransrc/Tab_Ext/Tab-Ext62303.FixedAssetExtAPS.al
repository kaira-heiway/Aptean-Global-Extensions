tableextension 62303 "Fixed Asset Ext. APS" extends "Fixed Asset"
{
    fields
    {
        field(62300; "Service Item No. APS"; Code[20])
        {
            Caption = 'Service Item No.';
            DataClassification = CustomerContent;
            //TableRelation = "Service Item";
        }
        field(62301; "FA Template APS"; Code[20])
        {
            Caption = 'Fixed Asset Template';
            DataClassification = CustomerContent;
            TableRelation = "FA Template APS";
        }
        field(62302; "Customer Name APS"; Text[100])
        {
            Caption = 'Customer Name';
            ToolTip = 'Specifies the name of the customer related to the fixed asset.';
            Editable = false;
            //FieldClass = FlowField;
            //CalcFormula = lookup(Customer.Name where("No." = field("Customer No. 114FDW")));
        }
        field(62304; "FA in Inventory APS"; Boolean)
        {
            Caption = 'FA in Inventory';
            DataClassification = CustomerContent;
        }
    }
}
