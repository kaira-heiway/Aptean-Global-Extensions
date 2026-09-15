table 88001 "R2R BadDebtProvision Entry NIQ"
{
    Caption = 'Bad Debt Provision Entries';
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R BadDebtProv. Entries NIQ";
    // LookupPageId = "R2R BadDebtProv. Entries NIQ";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(2; "Entry Type"; Enum "R2R BadDebtProv Entry Type NIQ")
        {
            Caption = 'Entry Type';
            DataClassification = CustomerContent;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(5; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Applies-to Doc. Type';
            DataClassification = CustomerContent;
        }
        field(6; "Document Date"; Date)
        {
            Caption = 'Applies-to Doc. Date';
            DataClassification = CustomerContent;
        }
        field(7; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = CustomerContent;
        }
        field(8; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(9; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(10; "Customer Posting Group"; Code[20])
        {
            Caption = 'Customer Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Customer Posting Group";
        }
        field(11; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
            DataClassification = CustomerContent;
            TableRelation = "Salesperson/Purchaser";
        }
        field(12; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
        }
        field(13; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            TableRelation = "Reason Code";
        }
        field(14; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(15; "Bad Debt Provision Code"; Code[10])
        {
            Caption = 'Bad Debt Provision Code';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
        field(16; "Bad Debt Provision Level"; Integer)
        {
            Caption = 'Bad Debt Provision Level';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionLevel NIQ"."No." where("Bad Debt Provision Code" = field("Bad Debt Provision Code"));
        }
        field(17; "Aging Band"; DateFormula)
        {
            Caption = 'Aging Band';
            DataClassification = CustomerContent;
        }
        field(18; "Provision %"; Decimal)
        {
            Caption = 'Provision %';
            DataClassification = CustomerContent;
        }
        field(19; "Remaining Amount (LCY)"; Decimal)
        {
            Caption = 'Remaining Amount (LCY)';
            DataClassification = CustomerContent;
        }
        field(20; "Bad Debt Provision Amount LCY"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bad Debt Provision Amount (LCY)';
            DataClassification = CustomerContent;
        }
        field(21; "Customer Ledger Entry No."; Integer)
        {
            Caption = 'Customer Ledger Entry No.';
            DataClassification = CustomerContent;
        }
        field(22; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            DataClassification = CustomerContent;
        }
        field(23; "Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Written Off (LCY)';
            DataClassification = CustomerContent;
        }
        field(24; "Posted to G/L"; Boolean)
        {
            Caption = 'Posted to G/L';
            DataClassification = CustomerContent;
        }
        field(29; "Loan No."; Code[20])
        {
            Caption = 'Loan No.';
            DataClassification = CustomerContent;
            Editable = false;
           // TableRelation = LoanHeader114FDW."Loan No.";
           // ValidateTableRelation = false;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
            SumIndexFields = "Bad Debt Provision Amount LCY";
        }
        key(key2; "Document No.", "Posting Date") { }
    }

    procedure OpenGLEntry()
    var
        GLEntry: Record "G/L Entry";
    begin
        SetGLEntryFilter(GLEntry);
        Page.Run(0, GLEntry);
    end;

    procedure GetAmountPostedtoGL(): Decimal
    var
        GLEntry: Record "G/L Entry";
    begin
        SetGLEntryFilter(GLEntry);
        SetGLEntryAccountFilter(GLEntry);
        GLEntry.CalcSums(Amount);
        exit(GLEntry.Amount);
    end;

    procedure SetGLEntryFilter(var GLEntry: Record "G/L Entry")
    begin
        GLEntry.SetRange("External Document No.", Format(Rec."Entry No."));
        GLEntry.SetRange("Source Type", GLEntry."Source Type"::Customer);
        GLEntry.SetRange("Source No.", Rec."Customer No.");
    end;

    procedure SetGLEntryAccountFilter(var GLEntry: Record "G/L Entry")
    var
        CustomerPostingGroup: Record "Customer Posting Group";
    begin
        CustomerPostingGroup.Get(Rec."Customer Posting Group");
        case Rec."Entry Type" of
            "R2R BadDebtProv Entry Type NIQ"::Decrease:
                GLEntry.SetRange("G/L Account No.", CustomerPostingGroup."R2R BD Decrease Account NIQ");
            "R2R BadDebtProv Entry Type NIQ"::Increase:
                GLEntry.SetRange("G/L Account No.", CustomerPostingGroup."R2R BD Increase Account NIQ");
            "R2R BadDebtProv Entry Type NIQ"::Usage:
                GLEntry.SetFilter("G/L Account No.", '%1|%2', CustomerPostingGroup."R2R BD Increase Account NIQ", CustomerPostingGroup."R2R BD Decrease Account NIQ");
        end;
    end;

    procedure ShowDimensions()
    var
        DimMgt: Codeunit DimensionManagement;
        PageCaptionLbl: Label '%1 %2', Comment = '%1 Table caption, %2 Entry No.';
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID", StrSubstNo(PageCaptionLbl, TableCaption(), "Entry No."));
    end;
}