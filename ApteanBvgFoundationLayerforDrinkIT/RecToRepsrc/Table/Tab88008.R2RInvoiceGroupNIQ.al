table 88008 "R2R Invoice Group NIQ"
{
    // DrillDownPageId = "R2R Invoice Groups NIQ";
    // LookupPageId = "R2R Invoice Groups NIQ";

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; "Payment Terms from Customer"; Enum "R2R Invoice Group Methods NIQ")
        {
            Caption = 'Payment Terms from Customer';
        }
        field(3; "Payment Terms from Vendor"; Enum "R2R Invoice Group Methods NIQ")
        {
            Caption = 'Payment Terms from Vendor';
        }
        field(4; "Payment Method from Customer"; Enum "R2R Invoice Group Methods NIQ")
        {
            Caption = 'Payment Method from Customer';
        }
        field(5; "Payment Method from Vendor"; Enum "R2R Invoice Group Methods NIQ")
        {
            Caption = 'Payment Method from Vendor';
        }
        field(6; "Customer Posting Group"; Code[20])
        {
            Caption = 'Customer Posting Group';
            TableRelation = "Customer Posting Group".Code;
        }
        field(7; "Vendor Posting Group"; Code[20])
        {
            Caption = 'Vendor Posting Group';
            TableRelation = "Vendor Posting Group".Code;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(15; "Posting No. Series (Sales)"; Code[20])
        {
            Caption = 'Posting No. Series (Sales)';
            TableRelation = "No. Series";
        }
        field(16; "Posting No. Series (Purchase)"; Code[20])
        {
            Caption = 'Posting No. Series (Purchase)';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }
}