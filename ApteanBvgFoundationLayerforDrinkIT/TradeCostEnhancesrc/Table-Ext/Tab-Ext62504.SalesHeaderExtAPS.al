tableextension 62504 "Sales Header Ext APS" extends "Sales Header"
{
    fields
    {
        field(62500; "Trade Cost Count APS"; Integer)
        {
            Caption = 'Trade Cost';
            Editable = false;
            //FieldClass = FlowField;
            // CalcFormula = count(DocumentTradeCost34FDW where("Document Table ID" = const(36), "Document Type" = const(1), "Document No." = field("No.")));
        }
    }
}
