table 88005 "R2R BadDebtProvJnlTemplate NIQ"
{
    Caption = 'Bad Debt Provision Journal Template';
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R BadDebtProvJnlTemplate NIQ";
    // LookupPageId = "R2R BadDebtProvJnlTemplate NIQ";

    fields
    {
        field(1; Name; Code[10])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(4; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
        }
        field(5; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            TableRelation = "Reason Code";
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }
}