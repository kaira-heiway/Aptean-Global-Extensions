table 88004 "R2R BadDebtProvJnlBatch NIQ"
{
    Caption = 'Bad Debt Provisions Journal Batch';
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R BadDebtProvJnlBatches NIQ";
    // LookupPageId = "R2R BadDebtProvJnlBatches NIQ";

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = CustomerContent;
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(5; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
        }
        field(6; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            TableRelation = "Reason Code";
        }
        field(7; "Customer Posting Group filter"; Text[100])
        {
            Caption = 'Customer Posting Group filter';
            DataClassification = CustomerContent;
        }
        field(8; "Bad Debt Provision Code Filter"; Text[100])
        {
            Caption = 'Bad Debt Provision Code Filter';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
        }
        field(9; "Bad Debt Provision Code"; Code[10])
        {
            Caption = 'Bad Debt Provision Code Filter';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
    }

    keys
    {
        key(PK; "Journal Template Name", Name)
        {
            Clustered = true;
        }
    }

    procedure SetupNewBatch()
    var
        BDPJnlTemplate: Record "R2R BadDebtProvJnlTemplate NIQ";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeSetupNewBatch(Rec, IsHandled);
        if IsHandled then
            exit;

        BDPJnlTemplate.Get("Journal Template Name");
        "No. Series" := BDPJnlTemplate."No. Series";
        "Reason Code" := BDPJnlTemplate."Reason Code";
        "Source Code" := BDPJnlTemplate."Source Code";

        OnAfterSetupNewBatch(Rec);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeSetupNewBatch(BDPJnlBatch: Record "R2R BadDebtProvJnlBatch NIQ"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterSetupNewBatch(var BDPJnlBatch: Record "R2R BadDebtProvJnlBatch NIQ")
    begin
    end;
}