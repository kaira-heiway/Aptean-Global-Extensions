tableextension 88072 "R2R TransferReceiptHeader NIQ" extends "Transfer Receipt Header"
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