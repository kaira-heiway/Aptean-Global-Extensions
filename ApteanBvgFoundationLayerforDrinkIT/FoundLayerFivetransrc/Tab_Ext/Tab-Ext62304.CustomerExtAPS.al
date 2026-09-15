tableextension 62304 "Customer Ext. APS" extends Customer
{
    fields
    {
        field(62300; "No. of Fixed Assets APS"; Integer)
        {
            Caption = 'No. of Fixed Assets';
            //FieldClass = FlowField;
            //CalcFormula = count("Fixed Asset" where("Customer No. 114FDW" = field("No.")));
            Editable = false;
        }
    }
}