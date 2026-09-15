/// <summary>
/// TableExtension R2R Customer NIQ (ID 88001) extends Record Customer.
/// </summary>
tableextension 88001 "R2R Customer NIQ" extends Customer
{
    fields
    {
        modify("IC Partner Code")
        {
            trigger OnAfterValidate()
            var
                R2RSetup: Record "R2R Extension Setup NIQ";
            begin
                if not R2RSetup.Get() then
                    R2RSetup.Init();
                if R2RSetup."Enable Send IC Doc. per Doc." then begin
                    "R2R Send IC Doc. SInv. NIQ" := not ("IC Partner Code" = '');
                    "R2R Send IC Doc. SOrd. NIQ" := not ("IC Partner Code" = '');
                end;
                if R2RSetup."Enable Rev Balance Adjustments" then
                    "R2R IC Partner Code NIQ" := Rec."IC Partner Code";
            end;
        }
        field(88000; "R2R BadDebtProvisionCode NIQ"; Code[20])
        {
            Caption = 'Bad Debt Provision Code';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
        field(88001; "R2R BalanceBadDebdtProvLCY NIQ"; Decimal)
        {
            CalcFormula = sum("R2R BadDebtProvision Entry NIQ"."Bad Debt Provision Amount LCY" where("Customer No." = field("No."),
                                                                                                    "Posting Date" = field("Date Filter"),
                                                                                                    "Customer Posting Group" = field("R2R Cust. Post. Gr. Filter NIQ")
                                                                                                    //,
                                                                                                    //"Bad Debt Provision Code" = field("R2R BadDebtProvisionCode NIQ")
                                                                                                    ));
            Caption = 'Balance Bad Debt Provision (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88002; "R2R Default Reason Code NIQ"; Code[10])
        {
            Caption = 'Default Reason Code';
            DataClassification = CustomerContent;
            //TableRelation = "Reason Code" where("Sales 101FDW" = const(true));
        }
        field(88003; "R2R Usage (LCY) NIQ"; Decimal)
        {
            CalcFormula = sum("R2R BadDebtProvision Entry NIQ"."Usage (LCY)" where("Customer No." = field("No."),
                                                                                    "Posting Date" = field("Date Filter"),
                                                                                    //"Bad Debt Provision Code" = field("R2R BadDebtProvisionCode NIQ"),
                                                                                    "Entry Type" = const(Usage)));
            Caption = 'Usage (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88004; "R2R Balance at Date (LCY) NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("No."),
            //                                                                      "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
            //                                                                      "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
            //                                                                      "Currency Code" = field("Currency Filter"),
            //                                                                      "Posting Date" = field("Date Filter"),
            //                                                                      "Customer Posting Group 101FDW" = field("R2R Cust. Post. Gr. Filter NIQ")));
            Caption = 'Balance at Date (LCY)';
            Editable = false;
           // FieldClass = FlowField;
        }
        field(88005; "R2R Cust. Post. Gr. Filter NIQ"; Code[20])
        {
            Caption = 'Customer Posting Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Customer Posting Group";
        }
        field(88010; "R2R Send IC Doc. SInv. NIQ"; Boolean)
        {
            Caption = 'Send IC Document (Sales Invoice)';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "R2R Send IC Doc. SInv. NIQ" then
                    TestField("IC Partner Code");
            end;
        }
        field(88011; "R2R Default Loan No. NIQ"; Code[20])
        {
            Caption = 'Default Loan No.';
            DataClassification = CustomerContent;
            // TableRelation =
            // if ("Bill-to Customer No." = filter('')) LoanHeader114FDW where("Source Type" = filter(Customer), "Bill-to/Pay-to" = field("No."))
            // else
            // LoanHeader114FDW where("Source Type" = filter(Customer), "Bill-to/Pay-to" = field("Bill-to Customer No."));

            trigger OnValidate()
            begin
                if Rec."R2R Default Loan No. NIQ" = '' then
                    Rec."R2R Def. Loan Entry Type NIQ" := Rec."R2R Def. Loan Entry Type NIQ"::" "
                else
                    Rec.TestField("R2R Def. Rental Agr. No. NIQ", '');
            end;
        }
        field(88012; "R2R Def. Loan Entry Type NIQ"; Enum "R2R Intl Loan Entry Type NIQ")
        {
            Caption = 'Default Loan Entry Type';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if Rec."R2R Def. Loan Entry Type NIQ" <> Rec."R2R Def. Loan Entry Type NIQ"::" " then
                    Rec.TestField("R2R Default Loan No. NIQ");
            end;
        }
        field(88013; "R2R Def. Rental Agr. No. NIQ"; Code[20])
        {
            Caption = 'Default Rental Agreement No.';
            DataClassification = CustomerContent;
            // TableRelation =
            // if ("Bill-to Customer No." = filter('')) RentalAgrmtHeader114FDW where("Source Type" = filter(Customer), "Bill-to/Pay-to" = field("No."))
            // else
            // RentalAgrmtHeader114FDW where("Source Type" = filter(Customer), "Bill-to/Pay-to" = field("Bill-to Customer No."));
            trigger OnValidate()
            begin
                if "R2R Def. Rental Agr. No. NIQ" <> '' then
                    Rec.TestField("R2R Default Loan No. NIQ", '');
            end;
        }
        field(88014; "R2R Send IC Doc. SOrd. NIQ"; Boolean)
        {
            Caption = 'Send IC Document (Sales Order)';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "R2R Send IC Doc. SOrd. NIQ" then
                    TestField("IC Partner Code");
            end;
        }
        field(88015; "R2R Last Reverse Bal. Date NIQ"; Date)
        {
            Caption = 'Last Reverse Bal. Posting Date';
            DataClassification = CustomerContent;
        }
        field(88016; "R2R IC Partner Code NIQ"; Code[20])
        {
            Caption = 'R2R IC Partner Code';
            DataClassification = CustomerContent;
            TableRelation = "IC Partner";
        }
        field(88017; "R2R Invoice per Order NIQ"; Boolean)
        {
            Caption = 'Invoice per Order';
            DataClassification = CustomerContent;
        }
        field(88022; "R2R Suppress Invoice Print NIQ"; Boolean)
        {
            Caption = 'Suppress Invoice Print ';
            DataClassification = CustomerContent;
        }
        // ── Attribute 1 ──────────────────────────────────────────────────────
        field(88023; "R2R G. Cst. At. 1 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 1 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 1 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 1 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 1 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 1 Val. NIQ"));
            // end;
        }
        // ── Attribute 2 ──────────────────────────────────────────────────────
        field(88024; "R2R G. Cst. At. 2 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 2 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 2 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 2 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 2 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 2 Val. NIQ"));
            // end;
        }
        // ── Attribute 3 ──────────────────────────────────────────────────────
        field(88025; "R2R G. Cst. At. 3 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 3 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 3 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 3 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 3 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 3 Val. NIQ"));
            // end;
        }
        // ── Attribute 4 ──────────────────────────────────────────────────────
        field(88026; "R2R G. Cst. At. 4 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 4 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 4 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 4 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 4 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 4 Val. NIQ"));
            // end;
        }
        // ── Attribute 5 ──────────────────────────────────────────────────────
        field(88027; "R2R G. Cst. At. 5 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 5 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 5 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 5 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 5 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 5 Val. NIQ"));
            // end;
        }
        // ── Attribute 6 ──────────────────────────────────────────────────────
        field(88028; "R2R G. Cst. At. 6 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 6 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 6 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 6 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 6 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 6 Val. NIQ"));
            // end;
        }
        // ── Attribute 7 ──────────────────────────────────────────────────────
        field(88029; "R2R G. Cst. At. 7 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 7 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 7 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 7 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 7 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 7 Val. NIQ"));
            // end;
        }
        // ── Attribute 8 ──────────────────────────────────────────────────────
        field(88030; "R2R G. Cst. At. 8 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 8 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 8 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 8 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 8 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 8 Val. NIQ"));
            // end;
        }
        // ── Attribute 9 ──────────────────────────────────────────────────────
        field(88031; "R2R G. Cst. At. 9 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 9 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 9 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 9 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 9 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 9 Val. NIQ"));
            // end;
        }
        // ── Attribute 10 ─────────────────────────────────────────────────────
        field(88032; "R2R G. Cst. At. 10 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 10 Value';
            //CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 10 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Cst. At. 10 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Cst. At. 10 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. 10 Val. NIQ"));
            // end;
        }
    }

    // procedure OnLookupGlobalAttributeValue(FieldNo: Integer)
    // var
    //     AdvAttrSetup02FDW: Record AdvAttrSetup02FDW;
    //     CustomerAttributeFDW: Record CustomerAttributeFDW;
    //     CustomerAttributeValueFDW: Record CustomerAttributeValueFDW;
    //     FilterCustomersAssistEdit: Page FilterCustomersAssistEditFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if not AdvAttrSetup02FDW.Get() then
    //         AdvAttrSetup02FDW.Init();

    //     case FieldNo of
    //         Rec.FieldNo("R2R G. Cst. At. 1 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 1 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 1 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 1 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 1 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 1 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 2 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 2 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 2 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 2 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 2 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 2 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 3 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 3 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 3 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 3 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 3 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 3 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 4 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 4 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 4 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 4 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 4 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 4 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 5 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 5 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 5 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 5 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 5 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 5 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 6 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 6 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 6 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 6 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 6 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 6 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 7 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 7 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 7 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 7 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 7 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 7 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 8 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 8 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 8 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 8 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 8 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 8 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 9 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 9 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 9 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 9 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 9 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 9 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 10 Val. NIQ"):
    //             begin
    //                 if not CustomerAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Cst. At. ID 10 NIQ") then
    //                     CustomerAttributeFDW.Init();
    //                 if not (CustomerAttributeFDW.Type in [CustomerAttributeFDW.Type::Option]) then
    //                     exit;
    //                 CustomerAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Cst. At. ID 10 NIQ");
    //                 if CustomerAttributeFDW.Type = CustomerAttributeFDW.Type::Option then begin
    //                     FilterCustomersAssistEdit.SetRecord(CustomerAttributeFDW);
    //                     Validate("R2R G. Cst. At. 10 Val. NIQ", CopyStr(FilterCustomersAssistEdit.LookupOptionValue("R2R G. Cst. At. 10 Val. NIQ"), 1, MaxStrLen("R2R G. Cst. At. 10 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //     end;
    // end;

    // procedure OnValidateGlobalAttributeValue(NewGlobalCstAttrValue: Text[250]; FieldNo: Integer)
    // var
    //     // AdvAttrSetup02FDW: Record AdvAttrSetup02FDW;
    //     // CustomerAttrValueSelectionFDW: Record CustomerAttrValueSelectionFDW;
    //     CustomerGlobalAttribute: Record "R2R Customer G. Attr. NIQ";
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if not AdvAttrSetup02FDW.Get() then
    //         AdvAttrSetup02FDW.Init();
    //     if not CustomerGlobalAttribute.Get(Rec."No.") then begin
    //         CustomerGlobalAttribute.Init();
    //         CustomerGlobalAttribute."Customer No." := Rec."No.";
    //         CustomerGlobalAttribute.Insert(true);
    //     end;

    //     AdvAttrSingleInstanceAPS.SetSkipUpdateGlobalCustomerAttributeValue(true);
    //     case FieldNo of
    //         Rec.FieldNo("R2R G. Cst. At. 1 Val. NIQ"):
    //             begin
    //                 // AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 1 NIQ");
    //                 // AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 1 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 1 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 1 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 2 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 2 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 2 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 2 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 2 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 3 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 3 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 3 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 3 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 3 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 4 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 4 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 4 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 4 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 4 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 5 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 5 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 5 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 5 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 5 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 6 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 6 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 6 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 6 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 6 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 7 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 7 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 7 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 7 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 7 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 8 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 8 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 8 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 8 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 8 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 9 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 9 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 9 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 9 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 9 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Cst. At. 10 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. ID 10 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Cst. At. Name 10 NIQ");
    //                 CustomerAttrValueSelectionFDW.Init();
    //                 CustomerAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Cst. At. Name 10 NIQ");
    //                 CustomerAttrValueSelectionFDW.Validate(Value, NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Validate("R2R G. Cst. At. 10 Val. NIQ", NewGlobalCstAttrValue);
    //                 CustomerGlobalAttribute.Modify(false);
    //             end;
    //     end;

    //     AdvAttrSingleInstanceAPS.SetSkipUpdateGlobalCustomerAttributeValue(false);
    // end;

    var
        // AdvAttrSetupMgtAPS: Codeunit "R2R Adv. Attr. Setup Mgt NIQ";
        // AdvAttrSingleInstanceAPS: Codeunit "R2R Adv. Attr. Single Inst NIQ";
}
