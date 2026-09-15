tableextension 62502 "Purch. Header Ext APS" extends "Purchase Header"
{
    fields
    {
        field(62500; "Trade Cost Purch. Order APS"; Boolean)
        {
            Caption = 'Trade Cost Purchase Order';
            DataClassification = CustomerContent;
        }
        field(62501; "Trade Cost Count APS"; Integer)
        {
            Caption = 'Trade Cost';
            Editable = false;
           // FieldClass = FlowField;
            // CalcFormula = count(DocumentTradeCost34FDW where("Document Table ID" = const(38), "Document Type" = const(1), "Document No." = field("No.")));
        }
    }
}
