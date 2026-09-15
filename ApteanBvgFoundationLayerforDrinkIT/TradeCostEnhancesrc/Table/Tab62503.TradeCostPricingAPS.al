table 62503 "Trade Cost Pricing APS"
{
    Caption = 'Trade Cost Pricing';
    DataClassification = CustomerContent;
    // LookupPageId = "Trade Cost Pricing List APS";
    // DrillDownPageId = "Trade Cost Pricing List APS";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Start Date"; Date)
        {
            Caption = 'Start Date';

            trigger OnValidate()
            begin
                if ("End Date" <> 0D) and ("Start Date" > "End Date") then
                    Error(StartDateAfterEndDateErr);
            end;
        }
        field(3; "End Date"; Date)
        {
            Caption = 'End Date';

            trigger OnValidate()
            begin
                if ("Start Date" <> 0D) and ("Start Date" > "End Date") then
                    Error(StartDateAfterEndDateErr);
            end;
        }
        field(10; "Shipping Agent Code"; Code[10])
        {
            Caption = 'Shipping Agent Code';
            //TableRelation = "Shipping Agent";

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
                if "Shipping Agent Code" <> xRec."Shipping Agent Code" then
                    "Shipping Agent Service Code" := '';
            end;
        }
        field(11; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
           // TableRelation = "Shipping Agent Services".Code where("Shipping Agent Code" = field("Shipping Agent Code"));

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(12; "Route Code"; Code[10])
        {
            Caption = 'Route Code';
            // TableRelation = Route107FDW;

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(20; "Trade Plan Code"; Code[20])
        {
            Caption = 'Trade Plan Code';
            // TableRelation = "Trade Plan FDW";

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
                ApplyTradePlanDefaults();
            end;
        }
        field(30; "Rate Type"; Enum "Trade Cost Rate Type APS")
        {
            Caption = 'Rate Type';

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
                if "Rate Type" = "Rate Type"::"Fixed Amount" then begin
                    "Unit Price" := 0;
                    "Unit Of Measure Code" := '';
                end else begin
                    Amount := 0;
                    if "Rate Type" <> "Rate Type"::"Unit Of Measure" then
                        "Unit Of Measure Code" := '';
                end;
                WarnIfRateTypeMismatch();
            end;
        }
        field(31; Amount; Decimal)
        {
            Caption = 'Amount';
            DecimalPlaces = 2 : 5;

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(32; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 2 : 5;

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(33; "Unit Of Measure Code"; Code[10])
        {
            Caption = 'Unit Of Measure Code';
           // TableRelation = "Unit of Measure";

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(35; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            //TableRelation = Currency;

            trigger OnValidate()
            begin
                TestField(Status, Status::Open);
            end;
        }
        field(40; Status; Enum "Trade Cost Status APS")
        {
            Caption = 'Status';
            Editable = false;
        }
        field(50; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(90; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(91; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(92; "Certified By"; Code[50])
        {
            Caption = 'Certified By';
            Editable = false;
        }
        field(93; "Certified Date"; DateTime)
        {
            Caption = 'Certified Date';
            Editable = false;
        }
        field(100; "Trd. Ptnr. Ship. Agent APS"; Code[10])
        {
            Caption = 'Shipping Agent Code (Trade Partner)';
            //FieldClass = FlowField;
            // CalcFormula = lookup("Trade Plan FDW"."Shipping Agent Code APS" where("No." = field("Trade Plan Code")));
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Shipping Agent Code", "Shipping Agent Service Code", "Route Code", "Start Date") { }
        key(Key3; "Trade Plan Code", Status) { }
    }

    // trigger OnInsert()
    // var
    //     // TMSetup: Record "Trade Management Setup FDW";
    //     SequenceNoMgt: Codeunit "Sequence No. Mgt.";
    // begin
    //     // TMSetup.Get();
    //     // if not TMSetup."Trade Cost Enh. Enabled APS" then
    //     //     Error(FeatureDisabledErr);
    //     if "Entry No." = 0 then
    //         "Entry No." := SequenceNoMgt.GetNextSeqNo(Database::"Trade Cost Pricing APS");
    //     "Created By" := CopyStr(UserId(), 1, MaxStrLen("Created By"));
    // end;

    trigger OnModify()
    begin
        "Modified By" := CopyStr(UserId(), 1, MaxStrLen("Modified By"));
    end;

    var
        FeatureDisabledErr: Label 'Trade Cost Enhancement is not enabled in Trade Management Setup.';
        RateTypeMismatchMsg: Label 'The Rate Type does not match the Trade Plan Allocation Method. Calculating prices with a different logic than how you divide the price may lead to unexpected results.';
        StartDateAfterEndDateErr: Label 'Start Date cannot be after End Date.';

    // local procedure AllocationMethodToRateType(AllocationMethod: Enum TradePlanAllocationMethodFDW): Enum "Trade Cost Rate Type APS"
    // begin
    //     case AllocationMethod of
    //         AllocationMethod::"Gross Weight":
    //             exit("Rate Type"::"Gross Weight");
    //         AllocationMethod::Volume:
    //             exit("Rate Type"::Volume);
    //         AllocationMethod::"Unit Of Measure":
    //             exit("Rate Type"::"Unit Of Measure");
    //         AllocationMethod::"Net Weight":
    //             exit("Rate Type"::"Net Weight");
    //         else
    //             exit("Rate Type"::"Fixed Amount");
    //     end;
    // end;

    local procedure WarnIfRateTypeMismatch()
    var
        // TradePlan: Record "Trade Plan FDW";
    begin
        if "Trade Plan Code" = '' then
            exit;
        if "Rate Type" = "Rate Type"::"Fixed Amount" then
            exit;
        // TradePlan.SetLoadFields("Allocation Method");
        // if not TradePlan.Get("Trade Plan Code") then
        //     exit;
        // if "Rate Type" <> AllocationMethodToRateType(TradePlan."Allocation Method") then
        //     Message(RateTypeMismatchMsg);
    end;

    local procedure ApplyTradePlanDefaults()
    var
        // TradePartner: Record "Trade Partner FDW";
        // TradePlan: Record "Trade Plan FDW";
    begin
        if "Trade Plan Code" = '' then
            exit;
        // TradePlan.SetLoadFields("Allocation Method", "Trade Partner No.", "Currency Code");
        // if not TradePlan.Get("Trade Plan Code") then
        //     exit;

        // Default shipping agent from Trade Partner
        // if TradePlan."Trade Partner No." <> '' then begin
        //     TradePartner.SetLoadFields("Shipping Agent Code APS");
        //     if TradePartner.Get(TradePlan."Trade Partner No.") then
        //         Validate("Shipping Agent Code", TradePartner."Shipping Agent Code APS");
        // end;

        // Default rate type from allocation method
        // Validate("Rate Type", AllocationMethodToRateType(TradePlan."Allocation Method"));
        // Validate("Currency Code", TradePlan."Currency Code");
    end;
}
