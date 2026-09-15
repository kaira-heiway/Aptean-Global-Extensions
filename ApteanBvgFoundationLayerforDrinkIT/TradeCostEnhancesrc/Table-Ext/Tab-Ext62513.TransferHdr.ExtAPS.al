tableextension 62513 "Transfer Hdr. Ext APS" extends "Transfer Header"
{
    fields
    {
        field(62500; "Trade Cost Count APS"; Integer)
        {
            Caption = 'Trade Cost';
            Editable = false;
           // FieldClass = FlowField;
            // CalcFormula = count(DocumentTradeCost34FDW where("Document Table ID" = const(5740), "Document Type" = const(0), "Document No." = field("No.")));
        }
    }
}
