/// <summary>
/// TableExtension R2R Item NIQ (ID 88002) extends Record Item.
/// </summary>
tableextension 88002 "R2R Item NIQ" extends Item
{
    fields
    {
        field(88000; "R2R Def. Sales Reason Code NIQ"; Code[10])
        {
            Caption = 'Default Reason Code (Sales)';
            DataClassification = CustomerContent;
           // TableRelation = "Reason Code" where("Sales 101FDW" = const(true));
        }
        field(88001; "R2R Def. Pur. Reason Code NIQ"; Code[10])
        {
            Caption = 'Default Reason Code (Purchase)';
            DataClassification = CustomerContent;
            //TableRelation = "Reason Code" where("Purchase 101FDW" = const(true));
        }
        field(88002; "R2R Tax Amount 1 NIQ"; Decimal)
        {
            AutoFormatExpression = '';
            AutoFormatType = 71631726;
            Caption = 'Tax Amount 1';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 7;
        }
        field(88003; "R2R Tax Amount 2 NIQ"; Decimal)
        {
            AutoFormatExpression = '';
            AutoFormatType = 71631726;
            Caption = 'Tax Amount 2';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 7;
        }
        // ── Attribute 1 ──────────────────────────────────────────────────────
        field(88004; "R2R G. Item At. 1 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 1 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 1 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 1 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 1 Val. NIQ", Rec.FieldNo("R2R G. Item At. 1 Val. NIQ"));
            end;
        }
        // ── Attribute 2 ──────────────────────────────────────────────────────
        field(88005; "R2R G. Item At. 2 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 2 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 2 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 2 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 2 Val. NIQ", Rec.FieldNo("R2R G. Item At. 2 Val. NIQ"));
            end;
        }
        // ── Attribute 3 ──────────────────────────────────────────────────────
        field(88006; "R2R G. Item At. 3 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 3 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 3 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 3 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 3 Val. NIQ", Rec.FieldNo("R2R G. Item At. 3 Val. NIQ"));
            end;
        }
        // ── Attribute 4 ──────────────────────────────────────────────────────
        field(88007; "R2R G. Item At. 4 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 4 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 4 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 4 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 4 Val. NIQ", Rec.FieldNo("R2R G. Item At. 4 Val. NIQ"));
            end;
        }
        // ── Attribute 5 ──────────────────────────────────────────────────────
        field(88008; "R2R G. Item At. 5 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 5 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 5 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 5 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 5 Val. NIQ", Rec.FieldNo("R2R G. Item At. 5 Val. NIQ"));
            end;
        }
        // ── Attribute 6 ──────────────────────────────────────────────────────
        field(88009; "R2R G. Item At. 6 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 6 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 6 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 6 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 6 Val. NIQ", Rec.FieldNo("R2R G. Item At. 6 Val. NIQ"));
            end;
        }
        // ── Attribute 7 ──────────────────────────────────────────────────────
        field(88010; "R2R G. Item At. 7 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 7 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 7 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 7 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 7 Val. NIQ", Rec.FieldNo("R2R G. Item At. 7 Val. NIQ"));
            end;
        }
        // ── Attribute 8 ──────────────────────────────────────────────────────
        field(88011; "R2R G. Item At. 8 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 8 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 8 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 8 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 8 Val. NIQ", Rec.FieldNo("R2R G. Item At. 8 Val. NIQ"));
            end;
        }
        // ── Attribute 9 ──────────────────────────────────────────────────────
        field(88012; "R2R G. Item At. 9 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 9 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 9 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 9 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 9 Val. NIQ", Rec.FieldNo("R2R G. Item At. 9 Val. NIQ"));
            end;
        }
        // ── Attribute 10 ─────────────────────────────────────────────────────
        field(88013; "R2R G. Item At. 10 Val. NIQ"; Text[250])
        {
            Caption = 'Global Item Attribute 10 Value';
            //CaptionClass = '1,5,,' + "R2R G. Item At. Name 10 NIQ";

            trigger OnLookup()
            begin
                OnLookupGlobalAttributeValue(Rec.FieldNo("R2R G. Item At. 10 Val. NIQ"));
            end;

            trigger OnValidate()
            begin
                OnValidateGlobalAttributeValue(Rec."R2R G. Item At. 10 Val. NIQ", Rec.FieldNo("R2R G. Item At. 10 Val. NIQ"));
            end;
        }
    }

    procedure OnLookupGlobalAttributeValue(FieldNo: Integer)
    var
        //AdvAttrSetup02FDW: Record AdvAttrSetup02FDW;
        ItemAttribute: Record "Item Attribute";
        ItemAttributeValue: Record "Item Attribute Value";
        FilterItemsAssistEdit: Page "Filter Items - AssistEdit";
    begin
        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        // if not AdvAttrSetup02FDW.Get() then
        //     AdvAttrSetup02FDW.Init();

        case FieldNo of
            Rec.FieldNo("R2R G. Item At. 1 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 1 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 1 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 1 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 1 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 1 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 2 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 2 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                   // ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 2 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 2 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 2 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 2 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 3 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 3 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 3 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 3 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 3 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 3 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 4 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 4 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 4 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 4 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 4 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 4 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 5 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 5 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 5 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 5 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 5 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 5 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 6 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 6 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 6 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 6 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 6 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 6 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 7 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 7 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 7 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 7 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 7 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 7 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 8 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 8 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 8 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 8 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 8 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 8 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 9 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 9 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 9 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 9 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 9 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 9 Val. NIQ")));
                        exit;
                    end;
                end;
            Rec.FieldNo("R2R G. Item At. 10 Val. NIQ"):
                begin
                    // if not ItemAttribute.Get(AdvAttrSetup02FDW."R2R G. Item At. ID 10 NIQ") then
                    //     ItemAttribute.Init();
                    if not (ItemAttribute.Type in [ItemAttribute.Type::Option]) then
                        exit;
                    //ItemAttributeValue.SetRange("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 10 NIQ");
                    if ItemAttribute.Type = ItemAttribute.Type::Option then begin
                        FilterItemsAssistEdit.SetRecord(ItemAttribute);
                        Validate("R2R G. Item At. 10 Val. NIQ", CopyStr(FilterItemsAssistEdit.LookupOptionValue("R2R G. Item At. 10 Val. NIQ"), 1, MaxStrLen("R2R G. Item At. 10 Val. NIQ")));
                        exit;
                    end;
                end;
        end;
    end;

    procedure OnValidateGlobalAttributeValue(NewGlobalItmAttrValue: Text[250]; FieldNo: Integer)
    var
       // AdvAttrSetup02FDW: Record AdvAttrSetup02FDW;
        ItemAttrValueSelection: Record "Item Attribute Value Selection";
        ItemGlobalAttribute: Record "R2R Item G. Attr. NIQ";
    begin
        // if not AdvAttrSetup02FDW.Get() then
        //     AdvAttrSetup02FDW.Init();
        if not ItemGlobalAttribute.Get(Rec."No.") then begin
            ItemGlobalAttribute.Init();
            ItemGlobalAttribute."Item No." := Rec."No.";
            ItemGlobalAttribute.Insert(true);
        end;

        if Rec.IsTemporary() then
            exit;
        // if not AdvAttrSetupMgtAPS.IsAttributeSetupEnabled() then
        //     exit;
        // AdvAttrSingleInstanceAPS.SetSkipUpdateGlobalItemAttributeValue(true);
        case FieldNo of
            Rec.FieldNo("R2R G. Item At. 1 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 1 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 1 NIQ");
                    ItemAttrValueSelection.Init();
                   // ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 1 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 1 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 2 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 2 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 2 NIQ");
                    ItemAttrValueSelection.Init();
                    //ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 2 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 2 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 3 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 3 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 3 NIQ");
                    ItemAttrValueSelection.Init();
                   // ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 3 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 3 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 4 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 4 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 4 NIQ");
                   // ItemAttrValueSelection.Init();
                   // ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 4 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 4 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 5 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 5 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 5 NIQ");
                    ItemAttrValueSelection.Init();
                    //ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 5 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 5 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 6 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 6 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 6 NIQ");
                    ItemAttrValueSelection.Init();
                    //ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 6 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 6 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 7 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 7 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 7 NIQ");
                    ItemAttrValueSelection.Init();
                    //ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 7 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 7 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 8 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 8 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 8 NIQ");
                    ItemAttrValueSelection.Init();
                    //ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 8 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 8 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 9 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 9 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 9 NIQ");
                    ItemAttrValueSelection.Init();
                   // ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 9 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 9 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
            Rec.FieldNo("R2R G. Item At. 10 Val. NIQ"):
                begin
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. ID 10 NIQ");
                    // AdvAttrSetup02FDW.TestField("R2R G. Item At. Name 10 NIQ");
                    ItemAttrValueSelection.Init();
                    //ItemAttrValueSelection.Validate("Attribute ID", AdvAttrSetup02FDW."R2R G. Item At. ID 10 NIQ");
                    ItemAttrValueSelection.Validate(Value, NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Validate("R2R G. Item At. 10 Val. NIQ", NewGlobalItmAttrValue);
                    ItemGlobalAttribute.Modify(false);
                end;
        end;

        //AdvAttrSingleInstanceAPS.SetSkipUpdateGlobalItemAttributeValue(false);
    end;

    // var
    //     AdvAttrSetupMgtAPS: Codeunit "R2R Adv. Attr. Setup Mgt NIQ";
    //     AdvAttrSingleInstanceAPS: Codeunit "R2R Adv. Attr. Single Inst NIQ";
}
