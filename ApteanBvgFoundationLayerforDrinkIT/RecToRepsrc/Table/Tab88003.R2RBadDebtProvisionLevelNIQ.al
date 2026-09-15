table 88003 "R2R BadDebtProvisionLevel NIQ"
{
    Caption = 'Bad Debt Provision Level';
    DataCaptionFields = "Bad Debt Provision Code", "No.";
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R BadDebtProvisionLevels NIQ";
    // LookupPageId = "R2R BadDebtProvisionLevels NIQ";

    fields
    {
        field(1; "Bad Debt Provision Code"; Code[10])
        {
            Caption = 'Bad Debt Provision Code';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
        field(2; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            MinValue = 1;
            NotBlank = true;
        }
        field(3; "Aging Band"; DateFormula)
        {
            Caption = 'Aging Band';
            DataClassification = CustomerContent;
        }
        field(4; "Provision %"; Decimal)
        {
            Caption = 'Provision %';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Bad Debt Provision Code", "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Aging Band", "Provision %") { }
    }

    procedure NewRecord()
    var
        BDPLevel: Record "R2R BadDebtProvisionLevel NIQ";
    begin
        BDPLevel.SetRange("Bad Debt Provision Code", "Bad Debt Provision Code");
        if BDPLevel.FindLast() then
            "No." := BDPLevel."No.";
        "No." += 1;
    end;

    trigger OnInsert()
    var
        BDPLevel: Record "R2R BadDebtProvisionLevel NIQ";
        DF: DateFormula;
        NoMoreLevelsErr: Label 'There may be not other levels for a Bad Debt Provision Code %1, when a level exists with Aging Band = blank.', Comment = '%1 code';
    begin
        BDPLevel.SetRange("Bad Debt Provision Code", "Bad Debt Provision Code");
        BDPLevel.SetFilter(BDPLevel."Aging Band", '%1', DF);
        if not BDPLevel.IsEmpty() then
            Error(NoMoreLevelsErr, "Bad Debt Provision Code");
    end;
}