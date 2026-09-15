table 88011 "R2R Customer G. Attr. NIQ"
{
    Caption = 'Customer Global Attribute';
    DataClassification = CustomerContent;

    fields
    {
        field(88507; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            NotBlank = true;
            TableRelation = Customer."No.";
        }

        // ── Attribute 1 ──────────────────────────────────────────────────────
        field(88008; "R2R G. Cst. At. ID 1 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 1';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 1 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 1 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 1 NIQ") then
            //         "R2R G. Cst. At. Name 1 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 1 NIQ" := '';
            // end;
        }
        field(88009; "R2R G. Cst. At. Val. ID 1 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 1';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 1 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 1 Val. NIQ", Rec."R2R G. Cst. At. ID 1 NIQ", Rec."R2R G. Cst. At. Val. ID 1 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 1 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 1 NIQ"));
            // end;
        }
        field(88010; "R2R G. Cst. At. Name 1 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 1';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 1 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 1 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 1 NIQ", 0);
            // end;
        }
        field(88011; "R2R G. Cst. At. 1 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 1 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 1 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 1 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 1 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 1 NIQ", Rec."R2R G. Cst. At. 1 Val. NIQ"));
            // end;
        }

        // ── Attribute 2 ──────────────────────────────────────────────────────
        field(88012; "R2R G. Cst. At. ID 2 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 2';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 2 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 2 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 2 NIQ") then
            //         "R2R G. Cst. At. Name 2 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 2 NIQ" := '';
            // end;
        }
        field(88013; "R2R G. Cst. At. Val. ID 2 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 2';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 2 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 2 Val. NIQ", Rec."R2R G. Cst. At. ID 2 NIQ", Rec."R2R G. Cst. At. Val. ID 2 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 2 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 2 NIQ"));
            // end;
        }
        field(88014; "R2R G. Cst. At. Name 2 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 2';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 2 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 2 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 2 NIQ", 0);
            // end;
        }
        field(88015; "R2R G. Cst. At. 2 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 2 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 2 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 2 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 2 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 2 NIQ", Rec."R2R G. Cst. At. 2 Val. NIQ"));
            // end;
        }

        // ── Attribute 3 ──────────────────────────────────────────────────────
        field(88016; "R2R G. Cst. At. ID 3 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 3';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 3 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 3 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 3 NIQ") then
            //         "R2R G. Cst. At. Name 3 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 3 NIQ" := '';
            // end;
        }
        field(88017; "R2R G. Cst. At. Val. ID 3 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 3';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 3 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 3 Val. NIQ", Rec."R2R G. Cst. At. ID 3 NIQ", Rec."R2R G. Cst. At. Val. ID 3 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 3 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 3 NIQ"));
            // end;
        }
        field(88018; "R2R G. Cst. At. Name 3 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 3';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 3 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 3 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 3 NIQ", 0);
            // end;
        }
        field(88019; "R2R G. Cst. At. 3 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 3 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 3 NIQ";
            
        }

        // ── Attribute 4 ──────────────────────────────────────────────────────
        field(88020; "R2R G. Cst. At. ID 4 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 4';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 4 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 4 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 4 NIQ") then
            //         "R2R G. Cst. At. Name 4 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 4 NIQ" := '';
            // end;
        }
        field(88021; "R2R G. Cst. At. Val. ID 4 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 4';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 4 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 4 Val. NIQ", Rec."R2R G. Cst. At. ID 4 NIQ", Rec."R2R G. Cst. At. Val. ID 4 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 4 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 4 NIQ"));
            // end;
        }
        field(88022; "R2R G. Cst. At. Name 4 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 4';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 4 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 4 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 4 NIQ", 0);
            // end;
        }
        field(88023; "R2R G. Cst. At. 4 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 4 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 4 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 4 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 4 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 4 NIQ", Rec."R2R G. Cst. At. 4 Val. NIQ"));
            // end;
        }

        // ── Attribute 5 ──────────────────────────────────────────────────────
        field(88024; "R2R G. Cst. At. ID 5 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 5';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 5 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 5 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 5 NIQ") then
            //         "R2R G. Cst. At. Name 5 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 5 NIQ" := '';
            // end;
        }
        field(88025; "R2R G. Cst. At. Val. ID 5 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 5';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 5 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 5 Val. NIQ", Rec."R2R G. Cst. At. ID 5 NIQ", Rec."R2R G. Cst. At. Val. ID 5 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 5 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 5 NIQ"));
            // end;
        }
        field(88026; "R2R G. Cst. At. Name 5 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 5';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 5 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 5 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 5 NIQ", 0);
            // end;
        }
        field(88027; "R2R G. Cst. At. 5 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 5 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 5 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 5 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 5 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 5 NIQ", Rec."R2R G. Cst. At. 5 Val. NIQ"));
            // end;
        }

        // ── Attribute 6 ──────────────────────────────────────────────────────
        field(88028; "R2R G. Cst. At. ID 6 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 6';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 6 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 6 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 6 NIQ") then
            //         "R2R G. Cst. At. Name 6 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 6 NIQ" := '';
            // end;
        }
        field(88029; "R2R G. Cst. At. Val. ID 6 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 6';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 6 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 6 Val. NIQ", Rec."R2R G. Cst. At. ID 6 NIQ", Rec."R2R G. Cst. At. Val. ID 6 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 6 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 6 NIQ"));
            // end;
        }
        field(88030; "R2R G. Cst. At. Name 6 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 6';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 6 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 6 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 6 NIQ", 0);
            // end;
        }
        field(88031; "R2R G. Cst. At. 6 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 6 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 6 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 6 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 6 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 6 NIQ", Rec."R2R G. Cst. At. 6 Val. NIQ"));
            // end;
        }

        // ── Attribute 7 ──────────────────────────────────────────────────────
        field(88032; "R2R G. Cst. At. ID 7 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 7';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 7 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 7 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 7 NIQ") then
            //         "R2R G. Cst. At. Name 7 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 7 NIQ" := '';
            // end;
        }
        field(88033; "R2R G. Cst. At. Val. ID 7 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 7';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 7 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 7 Val. NIQ", Rec."R2R G. Cst. At. ID 7 NIQ", Rec."R2R G. Cst. At. Val. ID 7 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 7 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 7 NIQ"));
            // end;
        }
        field(88034; "R2R G. Cst. At. Name 7 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 7';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 7 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 7 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 7 NIQ", 0);
            // end;
        }
        field(88035; "R2R G. Cst. At. 7 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 7 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 7 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 7 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 7 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 7 NIQ", Rec."R2R G. Cst. At. 7 Val. NIQ"));
            // end;
        }

        // ── Attribute 8 ──────────────────────────────────────────────────────
        field(88036; "R2R G. Cst. At. ID 8 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 8';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 8 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 8 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 8 NIQ") then
            //         "R2R G. Cst. At. Name 8 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 8 NIQ" := '';
            // end;
        }
        field(88037; "R2R G. Cst. At. Val. ID 8 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 8';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 8 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 8 Val. NIQ", Rec."R2R G. Cst. At. ID 8 NIQ", Rec."R2R G. Cst. At. Val. ID 8 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 8 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 8 NIQ"));
            // end;
        }
        field(88038; "R2R G. Cst. At. Name 8 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 8';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 8 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 8 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 8 NIQ", 0);
            // end;
        }
        field(88039; "R2R G. Cst. At. 8 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 8 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 8 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 8 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 8 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 8 NIQ", Rec."R2R G. Cst. At. 8 Val. NIQ"));
            // end;
        }

        // ── Attribute 9 ──────────────────────────────────────────────────────
        field(88040; "R2R G. Cst. At. ID 9 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 9';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 9 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 9 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 9 NIQ") then
            //         "R2R G. Cst. At. Name 9 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 9 NIQ" := '';
            // end;
        }
        field(88041; "R2R G. Cst. At. Val. ID 9 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 9';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 9 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 9 Val. NIQ", Rec."R2R G. Cst. At. ID 9 NIQ", Rec."R2R G. Cst. At. Val. ID 9 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 9 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 9 NIQ"));
            // end;
        }
        field(88042; "R2R G. Cst. At. Name 9 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 9';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 9 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 9 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 9 NIQ", 0);
            // end;
        }
        field(88043; "R2R G. Cst. At. 9 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 9 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 9 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 9 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 9 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 9 NIQ", Rec."R2R G. Cst. At. 9 Val. NIQ"));
            // end;
        }

        // ── Attribute 10 ─────────────────────────────────────────────────────
        field(88044; "R2R G. Cst. At. ID 10 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute ID 10';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeFDW.ID;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 10 NIQ", GetGlobalCustomerValueID(Rec."Customer No.", Rec."R2R G. Cst. At. ID 10 NIQ"));
            //     if CustomerAttributeFDW.Get(Rec."R2R G. Cst. At. ID 10 NIQ") then
            //         "R2R G. Cst. At. Name 10 NIQ" := CustomerAttributeFDW.Name
            //     else
            //         "R2R G. Cst. At. Name 10 NIQ" := '';
            // end;
        }
        field(88045; "R2R G. Cst. At. Val. ID 10 NIQ"; Integer)
        {
            Caption = 'Global Customer Attribute Value ID 10';
            DataClassification = CustomerContent;
            Editable = false;
            // TableRelation = CustomerAttributeValueFDW.ID where("Attribute ID" = field("R2R G. Cst. At. ID 10 NIQ"));
            // trigger OnValidate()
            // begin
            //     OnValidateGlobalCustAttrValueID(Rec."R2R G. Cst. At. 10 Val. NIQ", Rec."R2R G. Cst. At. ID 10 NIQ", Rec."R2R G. Cst. At. Val. ID 10 NIQ");
            //     UpdateCustomerGlobalAttributeValue(Rec."R2R G. Cst. At. 10 Val. NIQ", Rec.FieldNo("R2R G. Cst. At. Val. ID 10 NIQ"));
            // end;
        }
        field(88046; "R2R G. Cst. At. Name 10 NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 10';
            // TableRelation = CustomerAttributeFDW.Name;
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // var
            //     CustomerAttributeFDW: Record CustomerAttributeFDW;
            // begin
            //     CustomerAttributeFDW.SetRange(Name, Rec."R2R G. Cst. At. Name 10 NIQ");
            //     if CustomerAttributeFDW.FindFirst() then
            //         Validate("R2R G. Cst. At. ID 10 NIQ", CustomerAttributeFDW.ID)
            //     else
            //         Validate("R2R G. Cst. At. ID 10 NIQ", 0);
            // end;
        }
        field(88047; "R2R G. Cst. At. 10 Val. NIQ"; Text[250])
        {
            Caption = 'Global Customer Attribute 10 Value';
            CaptionClass = '1,5,,' + "R2R G. Cst. At. Name 10 NIQ";
            // TableRelation = CustomerAttributeValueFDW.Value where("Attribute ID" = field("R2R G. Cst. At. ID 10 NIQ"));
            // ValidateTableRelation = false;
            // trigger OnValidate()
            // begin
            //     Validate("R2R G. Cst. At. Val. ID 10 NIQ", GetGlobalCustAttrValueIDValidation(Rec."R2R G. Cst. At. ID 10 NIQ", Rec."R2R G. Cst. At. 10 Val. NIQ"));
            // end;
        }
    }

    keys
    {
        key(PK; "Customer No.")
        {
            Clustered = true;
        }
    }

    procedure UpdateCustomerGlobalAttributeValue(NewGlobalCustAttrValue: Text[250]; FieldNo: Integer)
    var
        Customer: Record Customer;
    begin
        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        // if AdvAttrSingleInstanceAPS.GetSkipUpdateGlobalCustomerAttributeValue() then
        //     exit;
        if not Customer.Get(Rec."Customer No.") then
            exit;
        case FieldNo of
            Rec.FieldNo("R2R G. Cst. At. Val. ID 1 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 1 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 1 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 2 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 2 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 2 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 3 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 3 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 3 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 4 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 4 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 4 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 5 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 5 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 5 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 6 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 6 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 6 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 7 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 7 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 7 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 8 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 8 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 8 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 9 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 9 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 9 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
            Rec.FieldNo("R2R G. Cst. At. Val. ID 10 NIQ"):
                begin
                    if Customer."R2R G. Cst. At. 10 Val. NIQ" = NewGlobalCustAttrValue then
                        exit;
                    Customer."R2R G. Cst. At. 10 Val. NIQ" := NewGlobalCustAttrValue;
                    Customer.Modify(false);
                end;
        end;
    end;

    // procedure GetGlobalCustomerValueID(CustomerNo: Code[20]; CustomerAttributeID: Integer): Integer
    // var
    //     CustomerAttrValueMapping: Record CustomerAttrValueMappingFDW;
    // begin
    //     if not CustomerAttrValueMapping.Get(Database::Customer, CustomerNo, CustomerAttributeID) then
    //         exit(0);
    //     exit(CustomerAttrValueMapping."Customer Attribute Value ID");
    // end;

    // local procedure OnValidateGlobalCustAttrValueID(var GlobalCustAttrValueName: Text[250]; GlobalCustomerAttributeID: Integer; GlobalCustAttrValueID: Integer)
    // var
    //     CustomerAttributeValueFDW: Record CustomerAttributeValueFDW;
    //     CustomerAttrValueMappingFDW: Record CustomerAttrValueMappingFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if CustomerAttributeValueFDW.Get(GlobalCustomerAttributeID, GlobalCustAttrValueID) then
    //         GlobalCustAttrValueName := CustomerAttributeValueFDW.Value
    //     else
    //         GlobalCustAttrValueName := '';
    //     if CustomerAttrValueMappingFDW.Get(Database::Customer, Rec."Customer No.", GlobalCustomerAttributeID) then begin
    //         if (CustomerAttrValueMappingFDW."Customer Attribute Value ID" = GlobalCustAttrValueID) and (GlobalCustAttrValueID <> 0) then
    //             exit;
    //         if GlobalCustAttrValueID = 0 then begin
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalCustomerAttributeFromMappingTable(true);
    //             CustomerAttrValueMappingFDW.Delete(false);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalCustomerAttributeFromMappingTable(false);
    //         end else begin
    //             CustomerAttrValueMappingFDW.Validate("Customer Attribute Value ID", GlobalCustAttrValueID);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalCustomerAttributeFromMappingTable(true);
    //             CustomerAttrValueMappingFDW.Modify(false);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalCustomerAttributeFromMappingTable(false);
    //         end;
    //     end else
    //         if GlobalCustAttrValueID <> 0 then begin
    //             CustomerAttrValueMappingFDW.Init();
    //             CustomerAttrValueMappingFDW."Table ID" := Database::Customer;
    //             CustomerAttrValueMappingFDW."No." := Rec."Customer No.";
    //             CustomerAttrValueMappingFDW."Customer Attribute ID" := GlobalCustomerAttributeID;
    //             CustomerAttrValueMappingFDW.Validate("Customer Attribute Value ID", GlobalCustAttrValueID);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalCustomerAttributeFromMappingTable(true);
    //             CustomerAttrValueMappingFDW.Insert(false);
    //             AdvAttrSingleInstanceAPS.SetSkipSyncGlobalCustomerAttributeFromMappingTable(false);
    //         end;
    // end;

    // local procedure GetGlobalCustAttrValueIDValidation(GlobalCustomerAttributeID: Integer; GlobalCustAttrVal: Text[250]): Integer
    // var
    //     CustomerAttributeFDW: Record CustomerAttributeFDW;
    //     CustomerAttributeValueFDW: Record CustomerAttributeValueFDW;
    //     CustomerAttrValueSelectionFDW: Record CustomerAttrValueSelectionFDW;
    // begin
    //     if Rec.IsTemporary() then
    //         exit;
    //     if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
    //         exit;
    //     if GlobalCustAttrVal = '' then
    //         exit(0);
    //     if not CustomerAttributeFDW.Get(GlobalCustomerAttributeID) then
    //         exit(0);
    //     CustomerAttrValueSelectionFDW.Init();
    //     CustomerAttrValueSelectionFDW.Validate("Attribute ID", GlobalCustomerAttributeID);
    //     CustomerAttrValueSelectionFDW.Validate("Attribute Type", CustomerAttributeFDW.Type);
    //     CustomerAttrValueSelectionFDW.Validate("Unit of Measure", CustomerAttributeFDW."Unit of Measure");
    //     CustomerAttrValueSelectionFDW.Value := GlobalCustAttrVal;
    //     if not CustomerAttrValueSelectionFDW.FindAttributeValue(CustomerAttributeValueFDW) then
    //         CustomerAttrValueSelectionFDW.InsertCustomerAttributeValue(CustomerAttributeValueFDW, CustomerAttrValueSelectionFDW);
    //     if CustomerAttributeValueFDW.ID <> 0 then
    //         exit(CustomerAttributeValueFDW.ID)
    //     else
    //         exit(0);
    // end;

    var
        // AdvAttrSetupMgtAPS: Codeunit "R2R Adv. Attr. Setup Mgt NIQ";
        // AdvAttrSingleInstanceAPS: Codeunit "R2R Adv. Attr. Single Inst NIQ";
}
