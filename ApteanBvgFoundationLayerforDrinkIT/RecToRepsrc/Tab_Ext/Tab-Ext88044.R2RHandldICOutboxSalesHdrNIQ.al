tableextension 88044 "R2R HandldICOutboxSalesHdr NIQ" extends "Handled IC Outbox Sales Header"
{
    fields
    {
        field(88000; "R2R IC Company VendPostGrp NIQ"; Code[20])
        {
            Caption = 'Target IC Company Vendor Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Vendor Posting Group";
        }
    }
}