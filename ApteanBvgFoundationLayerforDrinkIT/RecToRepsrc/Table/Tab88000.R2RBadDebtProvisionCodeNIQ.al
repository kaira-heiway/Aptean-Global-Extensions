table 88000 "R2R BadDebtProvisionCode NIQ"
{
    Caption = 'Bad Debt Provision Code';
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R BadDebtProvisionCodes NIQ";
    // LookupPageId = "R2R BadDebtProvisionCodes NIQ";

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; "Bad Debt Prov. Level per"; Enum "R2R BadDebtProv Level per NIQ")
        {
            Caption = 'Bad Debt Prov. Level per';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "Bad Debt Prov. Level per" <> "Bad Debt Prov. Level per"::Entry then
                    exit;

                "Min. BadDebtProv Level Share" := 0;
                "Summarize per Customer" := false;
            end;
        }
        field(4; "Min. BadDebtProv Level Share"; Decimal)
        {
            Caption = 'Min. Bad Debt Prov. Level Share';
            DataClassification = CustomerContent;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5; "Summarize per Customer"; Boolean)
        {
            Caption = 'Summarize per Customer';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    var
        BDPLevel: Record "R2R BadDebtProvisionLevel NIQ";

    trigger OnDelete()
    begin
        BDPLevel.SetRange("Bad Debt Provision Code", Code);
        if not BDPLevel.IsEmpty() then
            BDPLevel.DeleteAll(true);
    end;

    trigger OnRename()
    begin
        BDPLevel.SetRange("Bad Debt Provision Code", xRec.Code);
        while BDPLevel.FindFirst() do
            BDPLevel.Rename(Code, BDPLevel."No.");
    end;
}