table 88010 "R2R Vendor G. Attr. NIQ"
{
    Caption = 'Vendor Global Attribute';
    DataClassification = CustomerContent;

    fields
    {
        field(88507; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            NotBlank = true;
            TableRelation = Vendor."No.";
        }

        // ── Attribute 1 ──────────────────────────────────────────────────────
        field(88008; "R2R G. Vnd. At. ID 1 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 1';
            DataClassification = CustomerContent;
            Editable = false;
            //TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     //VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 1 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 1 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 1 NIQ") then
            //         "R2R G. Vnd. At. Name 1 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 1 NIQ" := '';
            // end;
        }
        field(88009; "R2R G. Vnd. At. Val. ID 1 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 1';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 1 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 1 Val. NIQ", Rec."R2R G. Vnd. At. ID 1 NIQ", Rec."R2R G. Vnd. At. Val. ID 1 NIQ");

            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 1 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 1 NIQ"));
            // end;
        }
        field(88010; "R2R G. Vnd. At. Name 1 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 1';
            //TableRelation = VendorAttributeFDW.Name;
            //ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 1 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 1 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 1 NIQ", 0);
            // end;
        }
        field(88011; "R2R G. Vnd. At. 1 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 1 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 1 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 1 NIQ"));
            //ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 1 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 1 NIQ", Rec."R2R G. Vnd. At. 1 Val. NIQ"));
            // end;
        }

        // ── Attribute 2 ──────────────────────────────────────────────────────
        field(88012; "R2R G. Vnd. At. ID 2 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 2';
            DataClassification = CustomerContent;
            Editable = false;
            //TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 2 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 2 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 2 NIQ") then
            //         "R2R G. Vnd. At. Name 2 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 2 NIQ" := '';
            // end;
        }
        field(88013; "R2R G. Vnd. At. Val. ID 2 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 2';
            DataClassification = CustomerContent;
            Editable = false;
            //TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 2 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 2 Val. NIQ", Rec."R2R G. Vnd. At. ID 2 NIQ", Rec."R2R G. Vnd. At. Val. ID 2 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 2 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 2 NIQ"));
            // end;
        }
        field(88014; "R2R G. Vnd. At. Name 2 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 2';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 2 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 2 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 2 NIQ", 0);
            // end;
        }
        field(88015; "R2R G. Vnd. At. 2 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 2 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 2 NIQ";
            //TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 2 NIQ"));
            //ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 2 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 2 NIQ", Rec."R2R G. Vnd. At. 2 Val. NIQ"));
            // end;
        }

        // ── Attribute 3 ──────────────────────────────────────────────────────
        field(88016; "R2R G. Vnd. At. ID 3 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 3';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 3 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 3 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 3 NIQ") then
            //         "R2R G. Vnd. At. Name 3 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 3 NIQ" := '';
            // end;
        }
        field(88017; "R2R G. Vnd. At. Val. ID 3 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 3';
            DataClassification = CustomerContent;
            Editable = false;
            //TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 3 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 3 Val. NIQ", Rec."R2R G. Vnd. At. ID 3 NIQ", Rec."R2R G. Vnd. At. Val. ID 3 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 3 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 3 NIQ"));
            // end;
        }
        field(88018; "R2R G. Vnd. At. Name 3 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 3';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 3 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 3 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 3 NIQ", 0);
            // end;
        }
        field(88019; "R2R G. Vnd. At. 3 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 3 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 3 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 3 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 3 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 3 NIQ", Rec."R2R G. Vnd. At. 3 Val. NIQ"));
            // end;
        }

        // ── Attribute 4 ──────────────────────────────────────────────────────
        field(88020; "R2R G. Vnd. At. ID 4 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 4';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 4 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 4 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 4 NIQ") then
            //         "R2R G. Vnd. At. Name 4 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 4 NIQ" := '';
            // end;
        }
        field(88021; "R2R G. Vnd. At. Val. ID 4 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 4';
            DataClassification = CustomerContent;
            Editable = false;
            //TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 4 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 4 Val. NIQ", Rec."R2R G. Vnd. At. ID 4 NIQ", Rec."R2R G. Vnd. At. Val. ID 4 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 4 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 4 NIQ"));
            // end;
        }
        field(88022; "R2R G. Vnd. At. Name 4 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 4';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 4 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 4 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 4 NIQ", 0);
            // end;
        }
        field(88023; "R2R G. Vnd. At. 4 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 4 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 4 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 4 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 4 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 4 NIQ", Rec."R2R G. Vnd. At. 4 Val. NIQ"));
            // end;
        }

        // ── Attribute 5 ──────────────────────────────────────────────────────
        field(88024; "R2R G. Vnd. At. ID 5 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 5';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 5 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 5 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 5 NIQ") then
            //         "R2R G. Vnd. At. Name 5 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 5 NIQ" := '';
            // end;
        }
        field(88025; "R2R G. Vnd. At. Val. ID 5 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 5';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 5 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 5 Val. NIQ", Rec."R2R G. Vnd. At. ID 5 NIQ", Rec."R2R G. Vnd. At. Val. ID 5 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 5 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 5 NIQ"));
            // end;
        }
        field(88026; "R2R G. Vnd. At. Name 5 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 5';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 5 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 5 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 5 NIQ", 0);
            // end;
        }
        field(88027; "R2R G. Vnd. At. 5 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 5 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 5 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 5 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 5 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 5 NIQ", Rec."R2R G. Vnd. At. 5 Val. NIQ"));
            // end;
        }

        // ── Attribute 6 ──────────────────────────────────────────────────────
        field(88028; "R2R G. Vnd. At. ID 6 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 6';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 6 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 6 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 6 NIQ") then
            //         "R2R G. Vnd. At. Name 6 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 6 NIQ" := '';
            // end;
        }
        field(88029; "R2R G. Vnd. At. Val. ID 6 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 6';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 6 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 6 Val. NIQ", Rec."R2R G. Vnd. At. ID 6 NIQ", Rec."R2R G. Vnd. At. Val. ID 6 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 6 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 6 NIQ"));
            // end;
        }
        field(88030; "R2R G. Vnd. At. Name 6 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 6';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 6 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 6 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 6 NIQ", 0);
            // end;
        }
        field(88031; "R2R G. Vnd. At. 6 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 6 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 6 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 6 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 6 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 6 NIQ", Rec."R2R G. Vnd. At. 6 Val. NIQ"));
            // end;
        }

        // ── Attribute 7 ──────────────────────────────────────────────────────
        field(88032; "R2R G. Vnd. At. ID 7 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 7';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 7 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 7 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 7 NIQ") then
            //         "R2R G. Vnd. At. Name 7 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 7 NIQ" := '';
            // end;
        }
        field(88033; "R2R G. Vnd. At. Val. ID 7 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 7';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 7 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 7 Val. NIQ", Rec."R2R G. Vnd. At. ID 7 NIQ", Rec."R2R G. Vnd. At. Val. ID 7 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 7 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 7 NIQ"));
            // end;
        }
        field(88034; "R2R G. Vnd. At. Name 7 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 7';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 7 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 7 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 7 NIQ", 0);
            // end;
        }
        field(88035; "R2R G. Vnd. At. 7 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 7 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 7 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 7 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 7 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 7 NIQ", Rec."R2R G. Vnd. At. 7 Val. NIQ"));
            // end;
        }

        // ── Attribute 8 ──────────────────────────────────────────────────────
        field(88036; "R2R G. Vnd. At. ID 8 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 8';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 8 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 8 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 8 NIQ") then
            //         "R2R G. Vnd. At. Name 8 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 8 NIQ" := '';
            // end;
        }
        field(88037; "R2R G. Vnd. At. Val. ID 8 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 8';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 8 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 8 Val. NIQ", Rec."R2R G. Vnd. At. ID 8 NIQ", Rec."R2R G. Vnd. At. Val. ID 8 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 8 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 8 NIQ"));
            // end;
        }
        field(88038; "R2R G. Vnd. At. Name 8 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 8';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 8 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 8 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 8 NIQ", 0);
            // end;
        }
        field(88039; "R2R G. Vnd. At. 8 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 8 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 8 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 8 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 8 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 8 NIQ", Rec."R2R G. Vnd. At. 8 Val. NIQ"));
            // end;
        }

        // ── Attribute 9 ──────────────────────────────────────────────────────
        field(88040; "R2R G. Vnd. At. ID 9 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 9';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 9 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 9 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 9 NIQ") then
            //         "R2R G. Vnd. At. Name 9 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 9 NIQ" := '';
            // end;
        }
        field(88041; "R2R G. Vnd. At. Val. ID 9 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 9';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 9 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 9 Val. NIQ", Rec."R2R G. Vnd. At. ID 9 NIQ", Rec."R2R G. Vnd. At. Val. ID 9 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 9 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 9 NIQ"));
            // end;
        }
        field(88042; "R2R G. Vnd. At. Name 9 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 9';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 9 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 9 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 9 NIQ", 0);
            // end;
        }
        field(88043; "R2R G. Vnd. At. 9 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 9 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 9 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 9 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 9 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 9 NIQ", Rec."R2R G. Vnd. At. 9 Val. NIQ"));
            // end;
        }

        // ── Attribute 10 ─────────────────────────────────────────────────────
        field(88044; "R2R G. Vnd. At. ID 10 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute ID 10';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 10 NIQ", GetGlobalVendorValueID(Rec."Vendor No.", Rec."R2R G. Vnd. At. ID 10 NIQ"));
            //     if VendorAttributeFDW.Get(Rec."R2R G. Vnd. At. ID 10 NIQ") then
            //         "R2R G. Vnd. At. Name 10 NIQ" := VendorAttributeFDW.Name
            //     else
            //         "R2R G. Vnd. At. Name 10 NIQ" := '';
            // end;
        }
        field(88045; "R2R G. Vnd. At. Val. ID 10 NIQ"; Integer)
        {
            Caption = 'Global Vendor Attribute Value ID 10';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = VendorAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Vnd. At. ID 10 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalVendAttrValueID(Rec."R2R G. Vnd. At. 10 Val. NIQ", Rec."R2R G. Vnd. At. ID 10 NIQ", Rec."R2R G. Vnd. At. Val. ID 10 NIQ");
            //     UpdateVendorGlobalAttributeValue(Rec."R2R G. Vnd. At. 10 Val. NIQ", Rec.FieldNo("R2R G. Vnd. At. Val. ID 10 NIQ"));
            // end;
        }
        field(88046; "R2R G. Vnd. At. Name 10 NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 10';
            // TableRelation = VendorAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     VendorAttributeFDW: Record VendorAttributeFDW;
            // begin
            //     VendorAttributeFDW.SetRange(Name, Rec."R2R G. Vnd. At. Name 10 NIQ");
            //     if VendorAttributeFDW.FindFirst() then
            //         Validate("R2R G. Vnd. At. ID 10 NIQ", VendorAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Vnd. At. ID 10 NIQ", 0);
            // end;
        }
        field(88047; "R2R G. Vnd. At. 10 Val. NIQ"; Text[250])
        {
            Caption = 'Global Vendor Attribute 10 Value';
            CaptionClass = '1,5,,' + "R2R G. Vnd. At. Name 10 NIQ";
            // TableRelation = VendorAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Vnd. At. ID 10 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Vnd. At. Val. ID 10 NIQ", GetGlobalVendAttrValueIDValidation(Rec."R2R G. Vnd. At. ID 10 NIQ", Rec."R2R G. Vnd. At. 10 Val. NIQ"));
            // end;
        }
    }

    keys
    {
        key(PK; "Vendor No.")
        {
            Clustered = true;
        }
    }

    procedure UpdateVendorGlobalAttributeValue(NewGlobalVendAttrValue: Text[250]; FieldNo: Integer)
    var
        Vendor: Record Vendor;
    begin
        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        // if AdvAttrSingleInstanceAPS.GetSkipUpdateGlobalVendorAttributeValue() then
        //     exit;
        if not Vendor.Get(Rec."Vendor No.") then
            exit;
        case FieldNo of
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 1 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 1 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 1 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 2 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 2 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 2 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 3 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 3 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 3 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 4 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 4 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 4 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 5 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 5 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 5 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 6 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 6 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 6 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 7 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 7 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 7 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 8 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 8 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 8 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 9 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 9 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 9 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
            Rec.FieldNo("R2R G. Vnd. At. Val. ID 10 NIQ"):
                begin
                    if Vendor."R2R G. Vnd. At. 10 Val. NIQ" = NewGlobalVendAttrValue then
                        exit;
                    Vendor."R2R G. Vnd. At. 10 Val. NIQ" := NewGlobalVendAttrValue;
                    Vendor.Modify(false);
                end;
        end;
    end;

    // procedure GetGlobalVendorValueID(VendorNo: Code[20]; VendorAttributeID: Integer): Integer
    // var
    //     VendorAttrValueMapping: Record VendorAttrValueMappingFDW;
    // begin
    //     if not VendorAttrValueMapping.Get(Database::Vendor, VendorNo, VendorAttributeID) then
    //         exit(0);
    //     exit(VendorAttrValueMapping."Vendor Attribute Value ID");
    // end;

    // local procedure OnValidateGlobalVendAttrValueID(var GlobalVendAttrValueName: Text[250]; GlobalVendorAttributeID: Integer; GlobalVendAttrValueID: Integer)
    // var
    //     VendorAttributeValueFDW: Record VendorAttributeValueFDW;
    //     VendorAttrValueMappingFDW: Record VendorAttrValueMappingFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if VendorAttributeValueFDW.Get(GlobalVendorAttributeID, GlobalVendAttrValueID) then
    //         GlobalVendAttrValueName := VendorAttributeValueFDW.Value
    //     else
    //         GlobalVendAttrValueName := '';
    //     if VendorAttrValueMappingFDW.Get(Database::Vendor, Rec."Vendor No.", GlobalVendorAttributeID) then begin
    //         if (VendorAttrValueMappingFDW."Vendor Attribute Value ID" = GlobalVendAttrValueID) and (GlobalVendAttrValueID <> 0) then
    //             exit;
    //         if GlobalVendAttrValueID = 0 then begin
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalVendorAttributeFromMappingTable(true);
    //             VendorAttrValueMappingFDW.Delete(false);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalVendorAttributeFromMappingTable(false);
    //         end else begin
    //             VendorAttrValueMappingFDW.Validate("Vendor Attribute Value ID", GlobalVendAttrValueID);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalVendorAttributeFromMappingTable(true);
    //             VendorAttrValueMappingFDW.Modify(false);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalVendorAttributeFromMappingTable(false);
    //         end;
    //     end else
    //         if GlobalVendAttrValueID <> 0 then begin
    //             VendorAttrValueMappingFDW.Init();
    //             VendorAttrValueMappingFDW."Table ID" := Database::Vendor;
    //             VendorAttrValueMappingFDW."No." := Rec."Vendor No.";
    //             VendorAttrValueMappingFDW."Vendor Attribute ID" := GlobalVendorAttributeID;
    //             VendorAttrValueMappingFDW.Validate("Vendor Attribute Value ID", GlobalVendAttrValueID);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalVendorAttributeFromMappingTable(true);
    //             VendorAttrValueMappingFDW.Insert(false);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalVendorAttributeFromMappingTable(false);
    //         end;
    // end;

    // local procedure GetGlobalVendAttrValueIDValidation(GlobalVendorAttributeID: Integer; GlobalVendAttrVal: Text[250]): Integer
    // var
    //     VendorAttributeFDW: Record VendorAttributeFDW;
    //     VendorAttributeValueFDW: Record VendorAttributeValueFDW;
    //     VendorAttrValueSelectionFDW: Record VendorAttrValueSelectionFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if GlobalVendAttrVal = '' then
    //         exit(0);
    //     if not VendorAttributeFDW.Get(GlobalVendorAttributeID) then
    //         exit(0);
    //     VendorAttrValueSelectionFDW.Init();
    //     VendorAttrValueSelectionFDW.Validate("Attribute ID", GlobalVendorAttributeID);
    //     VendorAttrValueSelectionFDW.Validate("Attribute Type", VendorAttributeFDW.Type);
    //     VendorAttrValueSelectionFDW.Validate("Unit of Measure", VendorAttributeFDW."Unit of Measure");
    //     VendorAttrValueSelectionFDW.Value := GlobalVendAttrVal;
    //     if not VendorAttrValueSelectionFDW.FindAttributeValue(VendorAttributeValueFDW) then
    //         VendorAttrValueSelectionFDW.InsertVendorAttributeValue(VendorAttributeValueFDW, VendorAttrValueSelectionFDW);
    //     if VendorAttributeValueFDW.ID <> 0 then
    //         exit(VendorAttributeValueFDW.ID)
    //     else
    //         exit(0);
    // end;

    // var
    //     AdvAttrSetupMgtAPS: Codeunit "R2R Adv. Attr. Setup Mgt NIQ";
    //     AdvAttrSingleInstanceAPS: Codeunit "R2R Adv. Attr. Single Inst NIQ";
}