tableextension 88073 "R2R TransferShipmentHeader NIQ" extends "Transfer Shipment Header"
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