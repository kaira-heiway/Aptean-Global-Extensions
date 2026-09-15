table 62500 "Document Trade Cost APS"
{
    Caption = 'Document Trade Cost';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Whse. Shipment No."; Code[20])
        {
            Caption = 'Whse. Shipment No.';
            //TableRelation = "Warehouse Shipment Header";
        }
        field(11; "Shipping Agent Code"; Code[10])
        {
            Caption = 'Shipping Agent Code';
            //TableRelation = "Shipping Agent";
        }
        field(12; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            //TableRelation = "Shipping Agent Services".Code where("Shipping Agent Code" = field("Shipping Agent Code"));
        }
        field(13; "Route Code"; Code[10])
        {
            Caption = 'Route Code';
            // TableRelation = Route107FDW;
        }
        field(20; "Trade Plan Code"; Code[20])
        {
            Caption = 'Trade Plan Code';
            // TableRelation = "Trade Plan FDW";
        }
        field(30; "Rate Type"; Enum "Trade Cost Rate Type APS")
        {
            Caption = 'Rate Type';
        }
        field(31; Amount; Decimal)
        {
            Caption = 'Amount';
            DecimalPlaces = 2 : 5;
        }
        field(32; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 2 : 5;
        }
        field(33; "Calculated Amount"; Decimal)
        {
            Caption = 'Calculated Amount';
            DecimalPlaces = 2 : 5;
        }
        field(34; "Calculation Base Qty"; Decimal)
        {
            Caption = 'Calculation Base Qty';
            DecimalPlaces = 0 : 5;
        }
        field(40; "Driver Code"; Code[20])
        {
            Caption = 'Driver Code';
            // TableRelation = Driver107FDW;
        }
        field(41; "Vehicle Code"; Code[20])
        {
            Caption = 'Vehicle Code';
            // TableRelation = Vehicle101FDW;
        }
        field(50; "Pricing Entry No."; Integer)
        {
            Caption = 'Pricing Entry No.';
            TableRelation = "Trade Cost Pricing APS";
        }
        field(60; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(61; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(70; "Whse. Receipt No."; Code[20])
        {
            Caption = 'Whse. Receipt No.';
            //TableRelation = "Warehouse Receipt Header";
        }
        field(80; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            //TableRelation = Currency;
        }
        field(81; "Unit Of Measure Code"; Code[10])
        {
            Caption = 'Unit Of Measure Code';
            //TableRelation = "Unit of Measure";
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Whse. Shipment No.") { }
        key(Key3; "Whse. Receipt No.") { }
    }

    // procedure InsertRecord(RunTrigger: Boolean)
    // var
    //     //SequenceNoMgt: Codeunit "Sequence No. Mgt.";
    // begin
    //     if "Entry No." = 0 then
    //         "Entry No." := SequenceNoMgt.GetNextSeqNo(Database::"Document Trade Cost APS");
    //     if not Insert(RunTrigger) then begin
    //         SequenceNoMgt.RebaseSeqNo(Database::"Document Trade Cost APS");
    //         "Entry No." := SequenceNoMgt.GetNextSeqNo(Database::"Document Trade Cost APS");
    //         Insert(RunTrigger);
    //     end;
    // end;
}
