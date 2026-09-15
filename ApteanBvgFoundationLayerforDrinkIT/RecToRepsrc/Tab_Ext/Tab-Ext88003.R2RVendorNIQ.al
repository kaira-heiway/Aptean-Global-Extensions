/// <summary>
/// TableExtension R2R Vendor NIQ (ID 88003) extends Record Vendor.
/// </summary>
tableextension 88003 "R2R Vendor NIQ" extends Vendor
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
                if R2RSetup."Enable Rev Balance Adjustments" then
                    "R2R IC Partner Code NIQ" := Rec."IC Partner Code";
            end;
        }
        field(88000; "R2R Balance at Date (LCY) NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("No."),
            //                                                                      "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
            //                                                                      "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
            //                                                                      "Currency Code" = field("Currency Filter"),
            //                                                                      "Posting Date" = field("Date Filter"),
            //                                                                      "Vendor Posting Group 101FDW" = field("R2R Vend. Post. Gr. Filter NIQ")));
            Caption = 'Balance at Date (LCY)';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(88001; "R2R Vend. Post. Gr. Filter NIQ"; Code[20])
        {
            Caption = 'Vendor Posting Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Vendor Posting Group";
        }
        field(88002; "R2R Default Loan No. NIQ"; Code[20])
        {
            Caption = 'Default Loan No.';
            DataClassification = CustomerContent;
            // TableRelation =
            // if ("Pay-to Vendor No." = filter('')) LoanHeader114FDW where("Source Type" = filter(Vendor), "Bill-to/Pay-to" = field("No."))
            // else
            // LoanHeader114FDW where("Source Type" = filter(Vendor), "Bill-to/Pay-to" = field("Pay-to Vendor No."));

            trigger OnValidate()
            begin
                if Rec."R2R Default Loan No. NIQ" = '' then
                    Rec."R2R Def. Loan Entry Type NIQ" := Rec."R2R Def. Loan Entry Type NIQ"::" "
                else
                    Rec.TestField("R2R Def. Rental Agr. No. NIQ", '');
            end;
        }
        field(88003; "R2R Def. Loan Entry Type NIQ"; Enum "R2R Intl Loan Entry Type NIQ")
        {
            Caption = 'Default Loan Entry Type';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if Rec."R2R Def. Loan Entry Type NIQ" <> Rec."R2R Def. Loan Entry Type NIQ"::" " then
                    Rec.TestField("R2R Default Loan No. NIQ");
            end;
        }
        field(88004; "R2R Def. Rental Agr. No. NIQ"; Code[20])
        {
            Caption = 'Default Rental Agreement No.';
            DataClassification = CustomerContent;
            // TableRelation =
            // if ("Pay-to Vendor No." = filter('')) RentalAgrmtHeader114FDW where("Source Type" = filter(Vendor), "Bill-to/Pay-to" = field("No."))
            // else
            // RentalAgrmtHeader114FDW where("Source Type" = filter(Vendor), "Bill-to/Pay-to" = field("Pay-to Vendor No."));
            trigger OnValidate()
            begin
                if "R2R Def. Rental Agr. No. NIQ" <> '' then
                    Rec.TestField("R2R Default Loan No. NIQ", '');
            end;
        }
        field(88005; "R2R Last Reverse Bal. Date NIQ"; Date)
        {
            Caption = 'Last Reverse Bal. Posting Date';
            DataClassification = CustomerContent;
        }
        field(88006; "R2R IC Partner Code NIQ"; Code[20])
        {
            Caption = 'R2R IC Partner Code';
            DataClassification = CustomerContent;
            TableRelation = "IC Partner";
        }
        field(88007; "R2R Default Reason Code NIQ"; Code[10])
        {
            Caption = 'Default Reason Code';
            DataClassification = CustomerContent;
            //TableRelation = "Reason Code" where("Purchase 101FDW" = const(true));
        }
        // ── Attribute 1 ──────────────────────────────────────────────────────
        field(88011; "R2R G. Vnd. At. 1 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 1 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 1 NIQ";

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 1 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 1 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 1 Val. NIQ"));
            // end;
        }
        // ── Attribute 2 ──────────────────────────────────────────────────────
        field(88012; "R2R G. Vnd. At. 2 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 2 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 2 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 2 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 2 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 2 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 2 Val. NIQ"));
            // end;
        }
        // ── Attribute 3 ──────────────────────────────────────────────────────
        field(88013; "R2R G. Vnd. At. 3 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 3 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 3 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 3 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 3 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 3 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 3 Val. NIQ"));
            // end;
        }
        // ── Attribute 4 ──────────────────────────────────────────────────────
        field(88014; "R2R G. Vnd. At. 4 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 4 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 4 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 4 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 4 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 4 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 4 Val. NIQ"));
            // end;
        }
        // ── Attribute 5 ──────────────────────────────────────────────────────
        field(88015; "R2R G. Vnd. At. 5 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 5 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 5 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 5 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 5 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 5 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 5 Val. NIQ"));
            // end;
        }
        // ── Attribute 6 ──────────────────────────────────────────────────────
        field(88016; "R2R G. Vnd. At. 6 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 6 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 6 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 6 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 6 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 6 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 6 Val. NIQ"));
            // end;
        }
        // ── Attribute 7 ──────────────────────────────────────────────────────
        field(88017; "R2R G. Vnd. At. 7 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 7 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 7 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 7 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 7 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 7 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 7 Val. NIQ"));
            // end;
        }
        // ── Attribute 8 ──────────────────────────────────────────────────────
        field(88018; "R2R G. Vnd. At. 8 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 8 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 8 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 8 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 8 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 8 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 8 Val. NIQ"));
            // end;
        }
        // ── Attribute 9 ──────────────────────────────────────────────────────
        field(88019; "R2R G. Vnd. At. 9 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 9 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 9 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 9 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 9 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 9 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 9 Val. NIQ"));
            // end;
        }
        // ── Attribute 10 ─────────────────────────────────────────────────────
        field(88020; "R2R G. Vnd. At. 10 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 10 Value';
            //CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 10 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 10 NIQ"));
            //ValidateTableRelation = false;

            // trigger OnLookup()
            // begin
            //     OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Vnd. At. 10 Val. NIQ"));
            // end;

            // trigger OnValidate()
            // begin
            //     OnValidateGlobalAttributeValue(Rec."R2R G. Vnd. At. 10 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. 10 Val. NIQ"));
            // end;
        }
    }

    // procedure OnLookupGlobalAttributeValue(FieldNo: Integer)
    // var
    //     AdvAttrSetup02FDW: Record AdvAttrSetup02FDW;
    //     VendorAttributeFDW: Record VendorAttributeFDW;
    //     VendorAttributeValueFDW: Record VendorAttributeValueFDW;
    //     FilterVendorsAssistEdit: Page FilterVendorsAssistEditFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if not AdvAttrSetup02FDW.Get() then
    //         AdvAttrSetup02FDW.Init();

    //     case FieldNo of
    //         Rec.FieldNo("R2R G. Vnd. At. 1 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 1 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 1 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 1 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 1 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 1 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 2 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 2 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 2 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 2 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 2 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 2 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 3 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 3 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 3 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 3 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 3 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 3 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 4 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 4 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 4 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 4 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 4 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 4 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 5 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 5 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 5 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 5 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 5 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 5 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 6 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 6 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 6 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 6 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 6 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 6 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 7 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 7 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 7 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 7 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 7 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 7 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 8 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 8 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 8 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 8 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 8 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 8 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 9 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 9 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 9 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 9 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 9 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 9 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 10 Val. NIQ"):
    //             begin

    //                 if not VendorAttributeFDW.Get(AdvAttrSetup02FDW."R2R G. Vnd. At. ID 10 NIQ") then
    //                     VendorAttributeFDW.Init();
    //                 //VendorAttributeValueFDW.SetRange(Name, GlobalVendAttrName1);
    //                 if not (VendorAttributeFDW.Type in [VendorAttributeFDW.Type::Option]) then
    //                     exit;
    //                 VendorAttributeValueFDW.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Vnd. At. ID 10 NIQ");

    //                 if VendorAttributeFDW.Type = VendorAttributeFDW.Type::Option then begin
    //                     FilterVendorsAssistEdit.SetRecord(VendorAttributeFDW);
    //                     Validate("R2R G. Vnd. At. 10 Val. NIQ", CopyStr(FilterVendorsAssistEdit.LookupOptionValue("R2R G. Vnd. At. 10 Val. NIQ"), 1, MaxStrLen("R2R G. Vnd. At. 10 Val. NIQ")));
    //                     exit;
    //                 end;
    //             end;
    //     end;
    // end;

    // procedure OnValidateGlobalAttributeValue(NewGlobalVendAttrValue: Text[250]; FieldNo: Integer)
    // var
    //     AdvAttrSetup02FDW: Record AdvAttrSetup02FDW;
    //     VendorGlobalAttribute: Record "R2R Vendor G. Attr. NIQ";
    //     VendorAttrValueSelectionFDW: Record VendorAttrValueSelectionFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if not AdvAttrSetup02FDW.Get() then
    //         AdvAttrSetup02FDW.Init();
    //     if not VendorGlobalAttribute.Get(Rec."No.") then begin

    //         VendorGlobalAttribute.Init();
    //         VendorGlobalAttribute."Vendor No." := Rec."No.";
    //         VendorGlobalAttribute.Insert(true);
    //     end;

    //     AdvAttrSingleInstanceAPS.SetSkipUpdateGlobalVendorAttributeValue(true);
    //     case FieldNo of
    //         Rec.FieldNo("R2R G. Vnd. At. 1 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 1 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 1 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 1 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 1 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 2 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 2 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 2 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 2 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 2 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 3 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 3 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 3 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 3 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 3 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 4 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 4 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 4 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 4 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 4 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 5 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 5 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 5 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 5 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 5 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 6 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 6 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 6 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 6 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 6 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 7 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 7 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 7 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 7 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 7 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 8 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 8 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 8 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 8 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 8 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 9 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 9 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 9 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 9 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 9 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //         Rec.FieldNo("R2R G. Vnd. At. 10 Val. NIQ"):
    //             begin
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. ID 10 NIQ");
    //                 AdvAttrSetup02FDW.TestField("R2R G. Vnd. At. Name 10 NIQ");

    //                 VendorAttrValueSelectionFDW.Init();
    //                 VendorAttrValueSelectionFDW.Validate("Attribute Name", AdvAttrSetup02FDW."R2R G. Vnd. At. Name 10 NIQ");
    //                 VendorAttrValueSelectionFDW.Validate(Value, NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Validate("R2R G. Vnd. At. 10 Val. NIQ", NewGlobalVendAttrValue);
    //                 VendorGlobalAttribute.Modify(false);
    //             end;
    //     end;

    //     AdvAttrSingleInstanceAPS.SetSkipUpdateGlobalVendorAttributeValue(false);
    // end;

    // procedure GetGlobalVendorValueID(VendorNo: Code[20]; VendorAttributeID: Integer): Integer
    // var
    //     VendorAttrValueMapping: Record VendorAttrValueMappingFDW;
    // begin
    //     if not VendorAttrValueMapping.Get(Database::Vendor, VendorNo, VendorAttributeID) then
    //         exit(0);
    //     exit(VendorAttrValueMapping."Vendor Attribute Value ID");
    // end;

    // var
    //     AdvAttrSetupMgtAPS: Codeunit "R2R Adv. Attr. Setup Mgt NIQ";
    //     AdvAttrSingleInstanceAPS: Codeunit "R2R Adv. Attr. Single Inst NIQ";
}
