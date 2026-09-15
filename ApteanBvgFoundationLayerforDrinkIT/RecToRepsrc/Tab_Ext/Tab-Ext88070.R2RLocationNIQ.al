tableextension 88070 "R2R Location NIQ" extends Location
{
    fields
    {
        field(88000; "R2R CustPriceGroupTax NIQ"; Code[10])
        {
            Caption = 'Customer Price Group (Tax)';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Price Group".Code;
        }
    }
}