table 88012 "R2R Item G. Attr. NIQ"
{
    Caption = 'Item Global Attribute';
    DataClassification = CustomerContent;

    fields
    {
        field(88507; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item."No.";
        }

        // ── Attribute 1 ──────────────────────────────────────────────────────
        field(88008; "R2R G. Item At. ID 1 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 1';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 1 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 1 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 1 NIQ") then
                    "R2R G. Item At. Name 1 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 1 NIQ" := '';
            end;
        }
        field(88009; "R2R G. Item At. Val. ID 1 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 1';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 1 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 1 Val. NIQ", Rec."R2R G. Item At. ID 1 NIQ", Rec."R2R G. Item At. Val. ID 1 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 1 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 1 NIQ"));
            end;
        }
        field(88010; "R2R G. Item At. Name 1 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 1';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 1 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 1 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 1 NIQ", 0);
            end;
        }
        field(88011; "R2R G. Item At. 1 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 1 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 1 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 1 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 1 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 1 NIQ", Rec."R2R G. Item At. 1 Val. NIQ"));
            end;
        }

        // ── Attribute 2 ──────────────────────────────────────────────────────
        field(88012; "R2R G. Item At. ID 2 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 2';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 2 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 2 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 2 NIQ") then
                    "R2R G. Item At. Name 2 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 2 NIQ" := '';
            end;
        }
        field(88013; "R2R G. Item At. Val. ID 2 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 2';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 2 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 2 Val. NIQ", Rec."R2R G. Item At. ID 2 NIQ", Rec."R2R G. Item At. Val. ID 2 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 2 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 2 NIQ"));
            end;
        }
        field(88014; "R2R G. Item At. Name 2 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 2';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 2 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 2 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 2 NIQ", 0);
            end;
        }
        field(88015; "R2R G. Item At. 2 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 2 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 2 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 2 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 2 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 2 NIQ", Rec."R2R G. Item At. 2 Val. NIQ"));
            end;
        }

        // ── Attribute 3 ──────────────────────────────────────────────────────
        field(88016; "R2R G. Item At. ID 3 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 3';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 3 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 3 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 3 NIQ") then
                    "R2R G. Item At. Name 3 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 3 NIQ" := '';
            end;
        }
        field(88017; "R2R G. Item At. Val. ID 3 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 3';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 3 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 3 Val. NIQ", Rec."R2R G. Item At. ID 3 NIQ", Rec."R2R G. Item At. Val. ID 3 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 3 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 3 NIQ"));
            end;
        }
        field(88018; "R2R G. Item At. Name 3 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 3';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 3 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 3 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 3 NIQ", 0);
            end;
        }
        field(88019; "R2R G. Item At. 3 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 3 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 3 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 3 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 3 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 3 NIQ", Rec."R2R G. Item At. 3 Val. NIQ"));
            end;
        }

        // ── Attribute 4 ──────────────────────────────────────────────────────
        field(88020; "R2R G. Item At. ID 4 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 4';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 4 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 4 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 4 NIQ") then
                    "R2R G. Item At. Name 4 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 4 NIQ" := '';
            end;
        }
        field(88021; "R2R G. Item At. Val. ID 4 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 4';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 4 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 4 Val. NIQ", Rec."R2R G. Item At. ID 4 NIQ", Rec."R2R G. Item At. Val. ID 4 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 4 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 4 NIQ"));
            end;
        }
        field(88022; "R2R G. Item At. Name 4 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 4';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 4 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 4 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 4 NIQ", 0);
            end;
        }
        field(88023; "R2R G. Item At. 4 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 4 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 4 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 4 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 4 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 4 NIQ", Rec."R2R G. Item At. 4 Val. NIQ"));
            end;
        }

        // ── Attribute 5 ──────────────────────────────────────────────────────
        field(88024; "R2R G. Item At. ID 5 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 5';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 5 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 5 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 5 NIQ") then
                    "R2R G. Item At. Name 5 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 5 NIQ" := '';
            end;
        }
        field(88025; "R2R G. Item At. Val. ID 5 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 5';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 5 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 5 Val. NIQ", Rec."R2R G. Item At. ID 5 NIQ", Rec."R2R G. Item At. Val. ID 5 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 5 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 5 NIQ"));
            end;
        }
        field(88026; "R2R G. Item At. Name 5 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 5';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 5 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 5 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 5 NIQ", 0);
            end;
        }
        field(88027; "R2R G. Item At. 5 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 5 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 5 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 5 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 5 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 5 NIQ", Rec."R2R G. Item At. 5 Val. NIQ"));
            end;
        }

        // ── Attribute 6 ──────────────────────────────────────────────────────
        field(88028; "R2R G. Item At. ID 6 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 6';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 6 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 6 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 6 NIQ") then
                    "R2R G. Item At. Name 6 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 6 NIQ" := '';
            end;
        }
        field(88029; "R2R G. Item At. Val. ID 6 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 6';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 6 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 6 Val. NIQ", Rec."R2R G. Item At. ID 6 NIQ", Rec."R2R G. Item At. Val. ID 6 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 6 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 6 NIQ"));
            end;
        }
        field(88030; "R2R G. Item At. Name 6 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 6';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 6 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 6 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 6 NIQ", 0);
            end;
        }
        field(88031; "R2R G. Item At. 6 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 6 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 6 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 6 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 6 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 6 NIQ", Rec."R2R G. Item At. 6 Val. NIQ"));
            end;
        }

        // ── Attribute 7 ──────────────────────────────────────────────────────
        field(88032; "R2R G. Item At. ID 7 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 7';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 7 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 7 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 7 NIQ") then
                    "R2R G. Item At. Name 7 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 7 NIQ" := '';
            end;
        }
        field(88033; "R2R G. Item At. Val. ID 7 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 7';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 7 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 7 Val. NIQ", Rec."R2R G. Item At. ID 7 NIQ", Rec."R2R G. Item At. Val. ID 7 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 7 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 7 NIQ"));
            end;
        }
        field(88034; "R2R G. Item At. Name 7 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 7';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 7 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 7 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 7 NIQ", 0);
            end;
        }
        field(88035; "R2R G. Item At. 7 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 7 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 7 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 7 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 7 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 7 NIQ", Rec."R2R G. Item At. 7 Val. NIQ"));
            end;
        }

        // ── Attribute 8 ──────────────────────────────────────────────────────
        field(88036; "R2R G. Item At. ID 8 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 8';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 8 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 8 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 8 NIQ") then
                    "R2R G. Item At. Name 8 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 8 NIQ" := '';
            end;
        }
        field(88037; "R2R G. Item At. Val. ID 8 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 8';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 8 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 8 Val. NIQ", Rec."R2R G. Item At. ID 8 NIQ", Rec."R2R G. Item At. Val. ID 8 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 8 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 8 NIQ"));
            end;
        }
        field(88038; "R2R G. Item At. Name 8 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 8';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 8 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 8 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 8 NIQ", 0);
            end;
        }
        field(88039; "R2R G. Item At. 8 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 8 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 8 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 8 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 8 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 8 NIQ", Rec."R2R G. Item At. 8 Val. NIQ"));
            end;
        }

        // ── Attribute 9 ──────────────────────────────────────────────────────
        field(88040; "R2R G. Item At. ID 9 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 9';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 9 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 9 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 9 NIQ") then
                    "R2R G. Item At. Name 9 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 9 NIQ" := '';
            end;
        }
        field(88041; "R2R G. Item At. Val. ID 9 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 9';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 9 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 9 Val. NIQ", Rec."R2R G. Item At. ID 9 NIQ", Rec."R2R G. Item At. Val. ID 9 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 9 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 9 NIQ"));
            end;
        }
        field(88042; "R2R G. Item At. Name 9 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 9';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 9 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 9 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 9 NIQ", 0);
            end;
        }
        field(88043; "R2R G. Item At. 9 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 9 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 9 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 9 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 9 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 9 NIQ", Rec."R2R G. Item At. 9 Val. NIQ"));
            end;
        }

        // ── Attribute 10 ─────────────────────────────────────────────────────
        field(88044; "R2R G. Item At. ID 10 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute ID 10';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute".ID;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                Validate("R2R G. Item At. Val. ID 10 NIQ", GetGlobalItemValueID(Rec."Item No.", Rec."R2R G. Item At. ID 10 NIQ"));
                if ItemAttribute.Get(Rec."R2R G. Item At. ID 10 NIQ") then
                    "R2R G. Item At. Name 10 NIQ" := ItemAttribute.Name
                else
                    "R2R G. Item At. Name 10 NIQ" := '';
            end;
        }
        field(88045; "R2R G. Item At. Val. ID 10 NIQ"; Integer)
        {
            Caption = 'Global Item Attribute Value ID 10';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Item Attribute Value".ID where("Attribute ID" = field("R2R G. Item At. ID 10 NIQ"));
            trigger OnValidate()
            begin
                OnValidateGlobalItemAttrValueID(Rec."R2R G. Item At. 10 Val. NIQ", Rec."R2R G. Item At. ID 10 NIQ", Rec."R2R G. Item At. Val. ID 10 NIQ");
                UpdateItemGlobalAttributeValue(Rec."R2R G. Item At. 10 Val. NIQ", Rec.FieldNo("R2R G. Item At. Val. ID 10 NIQ"));
            end;
        }
        field(88046; "R2R G. Item At. Name 10 NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 10';
            TableRelation = "Item Attribute".Name;
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                ItemAttribute: Record "Item Attribute";
            begin
                ItemAttribute.SetRange(Name, Rec."R2R G. Item At. Name 10 NIQ");
                if ItemAttribute.FindFirst() then
                    Validate("R2R G. Item At. ID 10 NIQ", ItemAttribute.ID)
                else
                    Validate("R2R G. Item At. ID 10 NIQ", 0);
            end;
        }
        field(88047; "R2R G. Item At. 10 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 10 Value';
            CaptionClass = '1,5,,' + "R2R G. Item At. Name 10 NIQ";
            TableRelation = "Item Attribute Value".Value where("Attribute ID" = field("R2R G. Item At. ID 10 NIQ"));
            ValidateTableRelation = false;
            trigger OnValidate()
            begin
                Validate("R2R G. Item At. Val. ID 10 NIQ", GetGlobalItemAttrValueIDValidation(Rec."R2R G. Item At. ID 10 NIQ", Rec."R2R G. Item At. 10 Val. NIQ"));
            end;
        }
    }

    keys
    {
        key(PK; "Item No.")
        {
            Clustered = true;
        }
    }

    procedure UpdateItemGlobalAttributeValue(NewGlobalItemAttrValue: Text[250]; FieldNo: Integer)
    var
        Item: Record Item;
    begin
        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        // if AdvAttrSingleInstanceAPS.GetSkipUpdateGlobalItemAttributeValue() then
        //     exit;
        if not Item.Get(Rec."Item No.") then
            exit;
        case FieldNo of
            Rec.FieldNo("R2R G. Item At. Val. ID 1 NIQ"):
                begin
                    if Item."R2R G. Item At. 1 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 1 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 2 NIQ"):
                begin
                    if Item."R2R G. Item At. 2 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 2 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 3 NIQ"):
                begin
                    if Item."R2R G. Item At. 3 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 3 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 4 NIQ"):
                begin
                    if Item."R2R G. Item At. 4 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 4 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 5 NIQ"):
                begin
                    if Item."R2R G. Item At. 5 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 5 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 6 NIQ"):
                begin
                    if Item."R2R G. Item At. 6 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 6 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 7 NIQ"):
                begin
                    if Item."R2R G. Item At. 7 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 7 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 8 NIQ"):
                begin
                    if Item."R2R G. Item At. 8 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 8 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 9 NIQ"):
                begin
                    if Item."R2R G. Item At. 9 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 9 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. Val. ID 10 NIQ"):
                begin
                    if Item."R2R G. Item At. 10 Val. NIQ" = NewGlobalItemAttrValue then
                        exit;
                    Item."R2R G. Item At. 10 Val. NIQ" := NewGlobalItemAttrValue;
                    Item.Modify(false);
                end;
        end;
    end;

    procedure GetGlobalItemValueID(ItemNo: Code[20]; ItemAttributeID: Integer): Integer
    var
        ItemAttrValueMapping: Record "Item Attribute Value Mapping";
    begin
        if not ItemAttrValueMapping.Get(Database::Item, ItemNo, ItemAttributeID) then
            exit(0);
        exit(ItemAttrValueMapping."Item Attribute Value ID");
    end;

    local procedure OnValidateGlobalItemAttrValueID(var GlobalItemAttrValueName: Text[250]; GlobalItemAttributeID: Integer; GlobalItemAttrValueID: Integer)
    var
        ItemAttributeValue: Record "Item Attribute Value";
        ItemAttrValueMapping: Record "Item Attribute Value Mapping";
    begin
        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        if ItemAttributeValue.Get(GlobalItemAttributeID, GlobalItemAttrValueID) then
            GlobalItemAttrValueName := ItemAttributeValue.Value
        else
            GlobalItemAttrValueName := '';
        if ItemAttrValueMapping.Get(Database::Item, Rec."Item No.", GlobalItemAttributeID) then begin
            if (ItemAttrValueMapping."Item Attribute Value ID" = GlobalItemAttrValueID) and (GlobalItemAttrValueID <> 0) then
                exit;
            if GlobalItemAttrValueID = 0 then begin
               // AdvAttrSingleInstanceAPS.SetSkipSyncGlobalItemAttributeFromMappingTable(true);
                ItemAttrValueMapping.Delete(false);
               // AdvAttrSingleInstanceAPS.SetSkipSyncGlobalItemAttributeFromMappingTable(false);
            end else begin
                ItemAttrValueMapping.Validate("Item Attribute Value ID", GlobalItemAttrValueID);
               // AdvAttrSingleInstanceAPS.SetSkipSyncGlobalItemAttributeFromMappingTable(true);
                ItemAttrValueMapping.Modify(false);
                //AdvAttrSingleInstanceAPS.SetSkipSyncGlobalItemAttributeFromMappingTable(false);
            end;
        end else
            if GlobalItemAttrValueID <> 0 then begin
                ItemAttrValueMapping.Init();
                ItemAttrValueMapping."Table ID" := Database::Item;
                ItemAttrValueMapping."No." := Rec."Item No.";
                ItemAttrValueMapping."Item Attribute ID" := GlobalItemAttributeID;
                ItemAttrValueMapping.Validate("Item Attribute Value ID", GlobalItemAttrValueID);
                //AdvAttrSingleInstanceAPS.SetSkipSyncGlobalItemAttributeFromMappingTable(true);
                ItemAttrValueMapping.Insert(false);
               // AdvAttrSingleInstanceAPS.SetSkipSyncGlobalItemAttributeFromMappingTable(false);
            end;
    end;

    local procedure GetGlobalItemAttrValueIDValidation(GlobalItemAttributeID: Integer; GlobalItemAttrVal: Text[250]): Integer
    var
        ItemAttribute: Record "Item Attribute";
        ItemAttributeValue: Record "Item Attribute Value";
        ItemAttrValueSelection: Record "Item Attribute Value Selection";
    begin
        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        if GlobalItemAttrVal = '' then
            exit(0);
        if not ItemAttribute.Get(GlobalItemAttributeID) then
            exit(0);
        ItemAttrValueSelection.Init();
        ItemAttrValueSelection.Validate("Attribute ID", GlobalItemAttributeID);
        ItemAttrValueSelection.Validate("Attribute Type", ItemAttribute.Type);
        ItemAttrValueSelection.Validate("Unit of Measure", ItemAttribute."Unit of Measure");
        ItemAttrValueSelection.Value := GlobalItemAttrVal;
        if not ItemAttrValueSelection.FindAttributeValue(ItemAttributeValue) then
            ItemAttrValueSelection.InsertItemAttributeValue(ItemAttributeValue, ItemAttrValueSelection);
        if ItemAttributeValue.ID <> 0 then
            exit(ItemAttributeValue.ID)
        else
            exit(0);
    end;

    // var
    //     AdvAttrSetupMgtAPS: Codeunit "R2R Adv. Attr. Setup Mgt NIQ";
    //     AdvAttrSingleInstanceAPS: Codeunit "R2R Adv. Attr. Single Inst NIQ";
}
