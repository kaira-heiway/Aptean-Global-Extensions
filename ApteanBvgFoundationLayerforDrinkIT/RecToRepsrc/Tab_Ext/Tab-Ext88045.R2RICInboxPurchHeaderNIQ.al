tableextension 88045 "R2R IC Inbox Purch Header NIQ" extends "IC Inbox Purchase Header"
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