tableextension 88010 "R2R Cust. Posting Group NIQ" extends "Customer Posting Group"
{
    fields
    {
        field(88000; "R2R BD Increase Account NIQ"; Code[20])
        {
            Caption = 'Bad Debt Increase Account';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.LookupGLAccountWithoutCategory("R2R BD Increase Account NIQ")
                else
                    R2RLookupGLAccount("R2R BD Increase Account NIQ", R2RGLAccountCategory."Account Category"::Expense, '');

                Validate("R2R BD Increase Account NIQ");
            end;

            trigger OnValidate()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.CheckGLAccountWithoutCategory("R2R BD Increase Account NIQ", false, false)
                else
                    R2RCheckGLAccount(FieldNo("R2R BD Increase Account NIQ"), "R2R BD Increase Account NIQ", false, false, R2RGLAccountCategory."Account Category"::Expense, '');
            end;
        }
        field(88001; "R2R BD Increase Bal. Acc. NIQ"; Code[20])
        {
            Caption = 'Bad Debt Increase Balancing Account';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.LookupGLAccountWithoutCategory("R2R BD Increase Bal. Acc. NIQ")
                else
                    R2RLookupGLAccount("R2R BD Increase Bal. Acc. NIQ", R2RGLAccountCategory."Account Category"::Assets, '');

                Validate("R2R BD Increase Bal. Acc. NIQ");
            end;

            trigger OnValidate()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.CheckGLAccountWithoutCategory("R2R BD Increase Bal. Acc. NIQ", false, false)
                else
                    R2RCheckGLAccount(FieldNo("R2R BD Increase Bal. Acc. NIQ"), "R2R BD Increase Bal. Acc. NIQ", false, false, R2RGLAccountCategory."Account Category"::Assets, '');
            end;
        }
        field(88002; "R2R BD Decrease Account NIQ"; Code[20])
        {
            Caption = 'Bad Debt Decrease Account';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.LookupGLAccountWithoutCategory("R2R BD Decrease Account NIQ")
                else
                    R2RLookupGLAccount("R2R BD Decrease Account NIQ", R2RGLAccountCategory."Account Category"::Income, '');

                Validate("R2R BD Decrease Account NIQ");
            end;

            trigger OnValidate()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.CheckGLAccountWithoutCategory("R2R BD Decrease Account NIQ", false, false)
                else
                    R2RCheckGLAccount(FieldNo("R2R BD Decrease Account NIQ"), "R2R BD Decrease Account NIQ", false, false, R2RGLAccountCategory."Account Category"::Income, '');
            end;
        }
        field(88003; "R2R BD Decrease Bal. Acc. NIQ"; Code[20])
        {
            Caption = 'Bad Debt Decrease Balancing Account';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.LookupGLAccountWithoutCategory("R2R BD Decrease Bal. Acc. NIQ")
                else
                    R2RLookupGLAccount("R2R BD Decrease Bal. Acc. NIQ", R2RGLAccountCategory."Account Category"::Assets, '');

                Validate("R2R BD Decrease Bal. Acc. NIQ");
            end;

            trigger OnValidate()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.CheckGLAccountWithoutCategory("R2R BD Decrease Bal. Acc. NIQ", false, false)
                else
                    R2RCheckGLAccount(FieldNo("R2R BD Decrease Bal. Acc. NIQ"), "R2R BD Decrease Bal. Acc. NIQ", false, false, R2RGLAccountCategory."Account Category"::Assets, '');
            end;
        }
        field(88005; "R2R BD Usage Account NIQ"; Code[20])
        {
            Caption = 'Bad Debt Usage Account';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.LookupGLAccountWithoutCategory("R2R BD Usage Account NIQ")
                else
                    R2RLookupGLAccount("R2R BD Usage Account NIQ", R2RGLAccountCategory."Account Category"::Expense, '');

                Validate("R2R BD Usage Account NIQ");
            end;

            trigger OnValidate()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.CheckGLAccountWithoutCategory("R2R BD Usage Account NIQ", false, false)
                else
                    R2RCheckGLAccount(FieldNo("R2R BD Usage Account NIQ"), "R2R BD Usage Account NIQ", false, false, R2RGLAccountCategory."Account Category"::Expense, '');
            end;
        }
        field(88006; "R2R BD Usage Bal. Acc. NIQ"; Code[20])
        {
            Caption = 'Bad Debt Usage Balancing Account';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";

            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.LookupGLAccountWithoutCategory("R2R BD Usage Bal. Acc. NIQ")
                else
                    R2RLookupGLAccount("R2R BD Usage Bal. Acc. NIQ", R2RGLAccountCategory."Account Category"::Assets, '');

                Validate("R2R BD Usage Bal. Acc. NIQ");
            end;

            trigger OnValidate()
            begin
                if "View All Accounts on Lookup" then
                    R2RGLAccountCategoryMgt.CheckGLAccountWithoutCategory("R2R BD Usage Bal. Acc. NIQ", false, false)
                else
                    R2RCheckGLAccount(FieldNo("R2R BD Usage Bal. Acc. NIQ"), "R2R BD Usage Bal. Acc. NIQ", false, false, R2RGLAccountCategory."Account Category"::Assets, '');
            end;
        }
        field(88007; "R2R BadDebtProvisionCode NIQ"; Code[20])
        {
            Caption = 'Bad Debt Provision Code';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
        field(88008; "R2R Reverse Balance Acc. NIQ"; Code[20])
        {
            Caption = 'Reverse Balance Acc.';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";
        }
        field(88009; "R2R Reverse Balancing Acc. NIQ"; Code[20])
        {
            Caption = 'Reverse Bal. Balancing Acc.';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account";
        }
        field(88010; "R2R Report in Bal Sheet NIQ"; Option)
        {
            Caption = 'Report in Balance Sheet';
            OptionCaption = ' ,Credit,Debit';
            OptionMembers = " ",Credit,Debit;
        }
        field(88011; "R2R ICCompany VendPostGrp NIQ"; Code[20])
        {
            Caption = 'Target IC Company Vendor Posting group';
            DataClassification = CustomerContent;
            TableRelation = "Vendor Posting Group";
        }
        field(88012; "R2R Enable Auto App NIQ"; Boolean)
        {
            Caption = 'Enable Automatic Application by order';
            DataClassification = CustomerContent;
        }
    }

    var
        R2RGLAccountCategory: Record "G/L Account Category";
        R2RGLAccountCategoryMgt: Codeunit "G/L Account Category Mgt.";
        R2RPostingSetupMgt: Codeunit PostingSetupManagement;

    procedure R2RGetBDIncreaseAccount(): Code[20]
    begin
        if Rec."R2R BD Increase Account NIQ" = '' then
            R2RPostingSetupMgt.LogCustPostingGroupFieldError(Rec, FieldNo("R2R BD Increase Account NIQ"));

        exit(Rec."R2R BD Increase Account NIQ");
    end;

    procedure R2RGetBDIncreaseBalAccount(): Code[20]
    begin
        if Rec."R2R BD Increase Bal. Acc. NIQ" = '' then
            R2RPostingSetupMgt.LogCustPostingGroupFieldError(Rec, FieldNo("R2R BD Increase Bal. Acc. NIQ"));

        exit(Rec."R2R BD Increase Bal. Acc. NIQ");
    end;

    procedure R2RGetBDDecreaseAccount(): Code[20]
    begin
        if Rec."R2R BD Decrease Account NIQ" = '' then
            R2RPostingSetupMgt.LogCustPostingGroupFieldError(Rec, FieldNo("R2R BD Decrease Account NIQ"));

        exit(Rec."R2R BD Decrease Account NIQ");
    end;

    procedure R2RGetBDDecreaseBalAccount(): Code[20]
    begin
        if Rec."R2R BD Decrease Bal. Acc. NIQ" = '' then
            R2RPostingSetupMgt.LogCustPostingGroupFieldError(Rec, FieldNo("R2R BD Decrease Bal. Acc. NIQ"));

        exit(Rec."R2R BD Decrease Bal. Acc. NIQ");
    end;

    procedure R2RGetBDUsageAccount(): Code[20]
    begin
        if Rec."R2R BD Usage Account NIQ" = '' then
            R2RPostingSetupMgt.LogCustPostingGroupFieldError(Rec, FieldNo("R2R BD Usage Account NIQ"));

        exit(Rec."R2R BD Usage Account NIQ");
    end;

    procedure R2RGetBDUsageBalAccount(): Code[20]
    begin
        if Rec."R2R BD Usage Bal. Acc. NIQ" = '' then
            R2RPostingSetupMgt.LogCustPostingGroupFieldError(Rec, FieldNo("R2R BD Usage Bal. Acc. NIQ"));

        exit(Rec."R2R BD Usage Bal. Acc. NIQ");
    end;

    local procedure R2RLookupGLAccount(var AccountNo: Code[20]; AccountCategory: Option; AccountSubcategoryFilter: Text)
    begin
        R2RGLAccountCategoryMgt.LookupGLAccount(Database::"Customer Posting Group", CurrFieldNo, AccountNo, AccountCategory, AccountSubcategoryFilter);
    end;

    local procedure R2RCheckGLAccount(ChangedFieldNo: Integer; AccNo: Code[20]; CheckProdPostingGroup: Boolean; CheckDirectPosting: Boolean; AccountCategory: Option; AccountSubcategory: Text)
    begin
        R2RGLAccountCategoryMgt.CheckGLAccount(Database::"Customer Posting Group", ChangedFieldNo, AccNo, CheckProdPostingGroup, CheckDirectPosting, AccountCategory, AccountSubcategory);
    end;
}