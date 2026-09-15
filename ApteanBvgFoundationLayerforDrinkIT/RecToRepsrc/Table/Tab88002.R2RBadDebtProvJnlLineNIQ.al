table 88002 "R2R BadDebtProv Jnl Line NIQ"
{
    Caption = 'Bad Debt Provision Journal';
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R Bad Debt Provision Jnl NIQ";
    // LookupPageId = "R2R Bad Debt Provision Jnl NIQ";

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvJnlTemplate NIQ";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvJnlBatch NIQ".Name where("Journal Template Name" = field("Journal Template Name"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(4; "Entry Type"; Enum "R2R BadDebtProv Entry Type NIQ")
        {
            Caption = 'Entry Type';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                R2RBadProvDimNIQ: Record "R2R Bad Prov. Entry Code NIQ";
                R2RExtensionSetup: Record "R2R Extension Setup NIQ";
            begin
                if not R2RExtensionSetup.Get() then
                    exit;
                case Rec."Entry Type" of
                    Rec."Entry Type"::Increase:
                        begin
                            if R2RExtensionSetup."Bad Debt Prov. Dim. Increase" = '' then
                                exit;
                            R2RBadProvDimNIQ.Get(R2RExtensionSetup."Bad Debt Prov. Dim. Increase");
                        end;
                    Rec."Entry Type"::Decrease:
                        begin
                            if R2RExtensionSetup."Bad Debt Prov. Dim. Decrease" = '' then
                                exit;
                            R2RBadProvDimNIQ.Get(R2RExtensionSetup."Bad Debt Prov. Dim. Decrease");
                        end;
                    Rec."Entry Type"::Usage:
                        begin
                            if R2RExtensionSetup."Bad Debt prov. Dim. Usage" = '' then
                                exit;
                            R2RBadProvDimNIQ.Get(R2RExtensionSetup."Bad Debt prov. Dim. Usage");
                        end;
                end;
                Validate("Bad Provision Entry Code", R2RBadProvDimNIQ.Code);
            end;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                TestField("Posting Date");
                Validate("Document Date", "Posting Date");
            end;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(7; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Applies-to Doc. Type';
            DataClassification = CustomerContent;
        }
        field(8; "Document Date"; Date)
        {
            Caption = 'Applies-to Doc. Date';
            DataClassification = CustomerContent;
        }
        field(9; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = CustomerContent;
        }
        field(10; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
            trigger OnValidate()
            begin
                CreateDimFromDefaultDim(FieldNo("Customer No."));
            end;
        }
        field(11; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(12; "Customer Posting Group"; Code[20])
        {
            Caption = 'Customer Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Customer Posting Group";
        }
        field(13; "Salesperson Code"; Code[20])
        {
            Caption = 'Saleserson Code';
            DataClassification = CustomerContent;
            TableRelation = "Salesperson/Purchaser";
            trigger OnValidate()
            begin
                CreateDimFromDefaultDim(FieldNo("Salesperson Code"));
            end;
        }
        field(14; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
        }
        field(15; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            TableRelation = "Reason Code";
        }
        field(16; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            DataClassification = CustomerContent;
            Editable = false;
            trigger OnLookup()
            begin
                ShowDimensions();
            end;

            trigger OnValidate()
            begin
                DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code");
            end;
        }
        field(17; "Bad Debt Provision Code"; Code[10])
        {
            Caption = 'Bad Debt Provision Code';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
        field(18; "Bad Debt Provision Level"; Integer)
        {
            Caption = 'Bad Debt Provision Level';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionLevel NIQ"."No." where("Bad Debt Provision Code" = field("Bad Debt Provision Code"));

            trigger OnValidate()
            var
                BDPLevel: Record "R2R BadDebtProvisionLevel NIQ";
            begin
                if BDPLevel.Get("Bad Debt Provision Code", "Bad Debt Provision Level") then begin
                    "Aging Band" := BDPLevel."Aging Band";
                    "Provision %" := BDPLevel."Provision %";
                end else begin
                    Clear("Aging Band");
                    Clear("Provision %");
                end;
                UpdateAmounts();
            end;
        }
        field(19; "Aging Band"; DateFormula)
        {
            Caption = 'Aging Band';
            DataClassification = CustomerContent;
        }
        field(20; "Provision %"; Decimal)
        {
            Caption = 'Provision %';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }
        field(21; "Remaining Amount (LCY)"; Decimal)
        {
            Caption = 'Remaining Amount (LCY)';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(22; "Customer Ledger Entry No."; Integer)
        {
            Caption = 'Customer Ledger Entry No.';
            DataClassification = CustomerContent;
            Editable = false;

            trigger OnValidate()
            var
                DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
            begin
                DetailedCustLedgEntry.SetRange("Customer No.", "Customer No.");
                DetailedCustLedgEntry.SetRange("Cust. Ledger Entry No.", "Customer Ledger Entry No.");
                DetailedCustLedgEntry.SetRange("Posting Date", 0D, "Posting Date");
                DetailedCustLedgEntry.CalcSums("Amount (LCY)");
                "Remaining Amount (LCY)" := DetailedCustLedgEntry."Amount (LCY)";

                UpdateAmounts();
            end;
        }
        field(23; "New Bad Debt Prov. Amount LCY"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'New Bad Debt Provision Amount (LCY)';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Net Change Bad Debt Prov. LCY" := "New Bad Debt Prov. Amount LCY" - "Curr Bad Debt Prov. Amount LCY";
            end;
        }
        field(24; "Curr Bad Debt Prov. Amount LCY"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Current Bad Debt Provision Amount (LCY)';
            DataClassification = CustomerContent;
            Editable = false;

            trigger OnValidate()
            begin
                "Net Change Bad Debt Prov. LCY" := "New Bad Debt Prov. Amount LCY" - "Curr Bad Debt Prov. Amount LCY";
            end;
        }
        field(25; "Net Change Bad Debt Prov. LCY"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Net Change Bad Debt Provision (LCY)';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(26; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            DataClassification = CustomerContent;
        }
        field(27; "Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Usage (LCY)';
            DataClassification = CustomerContent;
        }
        field(28; "Bad Provision Entry Code"; Code[20])
        {
            Caption = 'Bad Provision Entry Code';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                CreateDimFromDefaultDim(Rec.FieldNo("Bad Provision Entry Code"));
            end;
        }
        field(29; "Loan No."; Code[20])
        {
            Caption = 'Loan No.';
            DataClassification = CustomerContent;
            Editable = false;
            //TableRelation = LoanHeader114FDW."Loan No.";
           // ValidateTableRelation = false;
        }
        field(481; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            CaptionClass = '1,2,1';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1),
                                                          Blocked = const(false));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(1, "Shortcut Dimension 1 Code");
            end;
        }
        field(482; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            CaptionClass = '1,2,2';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2),
                                                          Blocked = const(false));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(2, "Shortcut Dimension 2 Code");
            end;
        }
    }

    keys
    {
        key(PK; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
    }
    var
        DimMgt: Codeunit DimensionManagement;
        SalespersonPrivacyBlockErr: Label 'Privacy Blocked must not be true for Salesperson %1.', Comment = '%1 = salesperson code.';

    trigger OnInsert()
    begin
        ValidateShortcutDimCode(1, "Shortcut Dimension 1 Code");
        ValidateShortcutDimCode(2, "Shortcut Dimension 2 Code");
    end;

    procedure ValidateSalesPersonPurchaserCode(BDPJnlLine: Record "R2R BadDebtProv Jnl Line NIQ")
    var
        Salesperson: Record "Salesperson/Purchaser";
    begin
        if BDPJnlLine."Salesperson Code" <> '' then
            if Salesperson.Get(BDPJnlLine."Salesperson Code") then
                if Salesperson.VerifySalesPersonPurchaserPrivacyBlocked(Salesperson) then
                    Error(SalespersonPrivacyBlockErr, BDPJnlLine."Salesperson Code");
    end;

    procedure IsOpenedFromBatch(): Boolean
    var
        BDPJnlBatch: Record "R2R BadDebtProvJnlBatch NIQ";
        BatchFilter: Text;
        TemplateFilter: Text;
    begin
        BatchFilter := GetFilter("Journal Batch Name");
        if (BatchFilter = '') and ("Journal Batch Name" <> '') then
            BatchFilter := "Journal Batch Name";

        if BatchFilter <> '' then begin
            TemplateFilter := GetFilter("Journal Template Name");
            if (TemplateFilter = '') and ("Journal Template Name" <> '') then begin
                TemplateFilter := "Journal Template Name";
                SetFilter("Journal Template Name", TemplateFilter);
            end;
            if TemplateFilter <> '' then
                BDPJnlBatch.SetFilter("Journal Template Name", TemplateFilter);
            BDPJnlBatch.SetFilter(Name, BatchFilter);
#pragma warning disable AA0175
            BDPJnlBatch.FindFirst();
#pragma warning restore AA0175
        end;

        exit((("Journal Batch Name" <> '') and ("Journal Template Name" = '')) or (BatchFilter <> ''));
    end;

    procedure SetUpNewLine(LastBDPJnlLine: Record "R2R BadDebtProv Jnl Line NIQ"; BottomLine: Boolean)
    var
        BDPJnlBatch: Record "R2R BadDebtProvJnlBatch NIQ";
        BDPJnlLine: Record "R2R BadDebtProv Jnl Line NIQ";
        BDPJnlTemplate: Record "R2R BadDebtProvJnlTemplate NIQ";
        NoSeries: Codeunit "No. Series";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeSetUpNewLine(BDPJnlTemplate, BDPJnlBatch, BDPJnlLine, LastBDPJnlLine, BottomLine, IsHandled);
        if IsHandled then
            exit;

        BDPJnlTemplate.Get("Journal Template Name");
        BDPJnlBatch.Get("Journal Template Name", "Journal Batch Name");
        BDPJnlLine.SetRange("Journal Template Name", "Journal Template Name");
        BDPJnlLine.SetRange("Journal Batch Name", "Journal Batch Name");
        if BDPJnlLine.FindFirst() then begin
            "Posting Date" := LastBDPJnlLine."Posting Date";
            "Document Date" := LastBDPJnlLine."Document Date";
            "Document No." := LastBDPJnlLine."Document No.";
            "Applies-to Doc. No." := LastBDPJnlLine."Applies-to Doc. No.";
        end else begin
            "Posting Date" := WorkDate();
            "Document Date" := WorkDate();
            IsHandled := false;
            OnSetUpNewLineOnBeforeSetDocumentNo(BDPJnlLine, LastBDPJnlLine, BottomLine, IsHandled);
            if not IsHandled then
                if BDPJnlBatch."No. Series" <> '' then begin
                    Clear(NoSeries);
                    "Document No." := NoSeries.GetNextNo(BDPJnlBatch."No. Series", "Posting Date");
                end;
        end;
        "Line No." := LastBDPJnlLine.GetLastLineNo() + 10000;
        "Document Type" := LastBDPJnlLine."Document Type";
        "Source Code" := BDPJnlTemplate."Source Code";
        "Reason Code" := BDPJnlBatch."Reason Code";

        OnAfterSetupNewLine(Rec, BDPJnlTemplate, BDPJnlBatch, LastBDPJnlLine, BottomLine);
    end;

    procedure GetLastLineNo(): Integer
    begin
        exit(GetLastLineNo(Rec."Journal Template Name", Rec."Journal Batch Name"));
    end;

    procedure GetLastLineNo(TemplateName: Code[10]; BatchName: Code[10]): Integer
    var
        BDPJnlLine: Record "R2R BadDebtProv Jnl Line NIQ";
    begin
        BDPJnlLine.SetRange("Journal Template Name", TemplateName);
        BDPJnlLine.SetRange("Journal Batch Name", BatchName);
        if BDPJnlLine.FindLast() then
            exit(BDPJnlLine."Line No.");
    end;

    procedure UpdateAmounts()
    begin
        Validate("New Bad Debt Prov. Amount LCY", "Remaining Amount (LCY)" * ("Provision %" / 100));
    end;

    procedure CreateDimFromDefaultDim(FromFieldNo: Integer)
    var
        DefaultDimSource: List of [Dictionary of [Integer, Code[20]]];
    begin
        InitDefaultDimensionSources(DefaultDimSource, FromFieldNo);
        CreateDim(DefaultDimSource);
    end;

    procedure ShowDimensions()
    var
        PageCaptionLbl: Label '%1 %2 %3', Comment = '%1 template name, %2 batch name, %3 line no.';
    begin
        "Dimension Set ID" :=
          DimMgt.EditDimensionSet(
            "Dimension Set ID", StrSubstNo(PageCaptionLbl, "Journal Template Name", "Journal Batch Name", "Line No.")
            );
    end;

    procedure ValidateShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    var
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeValidateShortcutDimCode(Rec, xRec, FieldNumber, ShortcutDimCode, IsHandled);
        if IsHandled then
            exit;

        DimMgt.ValidateShortcutDimValues(FieldNumber, ShortcutDimCode, "Dimension Set ID");

        OnAfterValidateShortcutDimCode(Rec, xRec, FieldNumber, ShortcutDimCode, CurrFieldNo);
    end;

    local procedure InitDefaultDimensionSources(var DefaultDimSource: List of [Dictionary of [Integer, Code[20]]]; FromFieldNo: Integer)
    begin
        DimMgt.AddDimSource(DefaultDimSource, Database::"Salesperson/Purchaser", Rec."Salesperson Code", FromFieldNo = Rec.FieldNo("Salesperson Code"));
        DimMgt.AddDimSource(DefaultDimSource, Database::Customer, Rec."Customer No.", FromFieldNo = Rec.FieldNo("Customer No."));
        DimMgt.AddDimSource(DefaultDimSource, Database::"R2R Bad Prov. Entry Code NIQ", Rec."Bad Provision Entry Code", FromFieldNo = Rec.FieldNo("Bad Provision Entry Code"));
        OnAfterInitDefaultDimensionSources(Rec, DefaultDimSource, FromFieldNo);
    end;

    procedure CreateDim(DefaultDimSource: List of [Dictionary of [Integer, Code[20]]])
    var
        SourceCodeSetup: Record "Source Code Setup";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeCreateDim(Rec, IsHandled);
        if IsHandled then
            exit;
        SourceCodeSetup.Get();
        "Shortcut Dimension 1 Code" := '';
        "Shortcut Dimension 2 Code" := '';
        "Dimension Set ID" := DimMgt.GetRecDefaultDimID(Rec, CurrFieldNo, DefaultDimSource, SourceCodeSetup.Sales, "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", 0, 0);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeSetUpNewLine(var BDPJournalTemplate: Record "R2R BadDebtProvJnlTemplate NIQ"; var BDPJournalBatch: Record "R2R BadDebtProvJnlBatch NIQ"; var BDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; LastBDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; BottomLine: Boolean; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnSetUpNewLineOnBeforeSetDocumentNo(var BDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; LastBDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; var BottomLine: Boolean; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterSetupNewLine(var BDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; BDPJournalTemplate: Record "R2R BadDebtProvJnlTemplate NIQ"; BDPJournalBatch: Record "R2R BadDebtProvJnlBatch NIQ"; LastBDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; BottomLine: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCreateDim(var BDPJnlLine: Record "R2R BadDebtProv Jnl Line NIQ"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterInitDefaultDimensionSources(var BDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; var DefaultDimSource: List of [Dictionary of [Integer, Code[20]]]; FromFieldNo: Integer)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidateShortcutDimCode(var BDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; var xBDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; FieldNumber: Integer; var ShortcutDimCode: Code[20]; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidateShortcutDimCode(var BDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; var xBDPJournalLine: Record "R2R BadDebtProv Jnl Line NIQ"; FieldNumber: Integer; var ShortcutDimCode: Code[20]; CallingFieldNo: Integer)
    begin
    end;
}