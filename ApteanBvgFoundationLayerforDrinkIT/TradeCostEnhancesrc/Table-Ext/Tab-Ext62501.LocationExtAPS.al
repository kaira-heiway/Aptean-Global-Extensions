tableextension 62501 "Location Ext APS" extends Location
{
    fields
    {
        field(62500; "Route Mand. Sales Order APS"; Boolean)
        {
            Caption = 'Route Mandatory on Sales Order';
            DataClassification = CustomerContent;
        }
        field(62501; "Route Mand. Purch. Order APS"; Boolean)
        {
            Caption = 'Route Mandatory on Purchase Order';
            DataClassification = CustomerContent;
        }
        field(62502; "Route Mand. Transfer Ord. APS"; Boolean)
        {
            Caption = 'Route Mandatory on Transfer Order';
            DataClassification = CustomerContent;
        }
        field(62503; "Route Mand. Return Order APS"; Boolean)
        {
            Caption = 'Route Mandatory on Return Order';
            DataClassification = CustomerContent;
        }
        field(62504; "Primary Cost Center APS"; Code[20])
        {
            Caption = 'Primary Cost Center';
            DataClassification = CustomerContent;
            //TableRelation = "Dimension Value".Code where("Dimension Code" = field("Cost Center Dim. Filter APS"));
        }
        field(62505; "Secondary Cost Center APS"; Code[20])
        {
            Caption = 'Secondary Cost Center';
            DataClassification = CustomerContent;
           // TableRelation = "Dimension Value".Code where("Dimension Code" = field("Cost Center Dim. Filter APS"));
        }
        field(62506; "Export Cost Center APS"; Code[20])
        {
            Caption = 'Export Cost Center';
            DataClassification = CustomerContent;
           // TableRelation = "Dimension Value".Code where("Dimension Code" = field("Cost Center Dim. Filter APS"));
        }
        field(62507; "Transfer Cost Center APS"; Code[20])
        {
            Caption = 'Transfer Cost Center';
            DataClassification = CustomerContent;
           // TableRelation = "Dimension Value".Code where("Dimension Code" = field("Cost Center Dim. Filter APS"));
        }
        field(62508; "Cost Center Dim. Filter APS"; Code[20])
        {
            Caption = 'Cost Center Dimension Filter';
            FieldClass = FlowFilter;
        }
    }
}
