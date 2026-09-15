tableextension 88046 "R2R HandldICInboxPurchHdr NIQ" extends "Handled IC Inbox Purch. Header"
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