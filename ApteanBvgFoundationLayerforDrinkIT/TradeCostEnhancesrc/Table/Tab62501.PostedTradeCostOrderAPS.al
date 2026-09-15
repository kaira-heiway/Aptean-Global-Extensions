table 62501 "Posted Trade Cost Order APS"
{
    Caption = 'Posted Trade Cost Order';
    DataClassification = CustomerContent;
    // LookupPageId = "Posted Trade Cost Orders APS";
    // DrillDownPageId = "Posted Trade Cost Orders APS";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Trade Plan Code"; Code[20])
        {
            Caption = 'Trade Plan Code';
            // TableRelation = "Trade Plan FDW";
        }
        field(3; "Trade Order No."; Code[20])
        {
            Caption = 'Trade Order No.';
        }
        field(4; "Shipping Agent Code"; Code[10])
        {
            Caption = 'Shipping Agent Code';
            //TableRelation = "Shipping Agent";
        }
        field(5; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            //TableRelation = "Shipping Agent Services".Code where("Shipping Agent Code" = field("Shipping Agent Code"));
        }
        field(6; "Route Code"; Code[10])
        {
            Caption = 'Route Code';
            // TableRelation = Route107FDW;
        }
        field(7; "Posted Whse. Shipment No."; Code[20])
        {
            Caption = 'Posted Whse. Shipment No.';
        }
        field(8; "Driver Code"; Code[20])
        {
            Caption = 'Driver Code';
            // TableRelation = Driver107FDW.Code;
        }
        field(9; "Vehicle Code"; Code[20])
        {
            Caption = 'Vehicle Code';
            // TableRelation = Vehicle101FDW.Code;
        }
        field(10; Amount; Decimal)
        {
            Caption = 'Amount';
            AutoFormatType = 1;
        }
        field(11; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(12; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
           // TableRelation = Vendor;
        }
        field(13; "Purchase Order No."; Code[20])
        {
            Caption = 'Purchase Order No.';
            //TableRelation = "Purchase Header"."No." where("Document Type" = const(Order));
        }
        field(15; "Rate Type"; Enum "Trade Cost Rate Type APS")
        {
            Caption = 'Rate Type';
        }
        field(16; "Original Amount"; Decimal)
        {
            Caption = 'Original Amount';
            AutoFormatType = 1;
        }
        field(17; "Price Updated"; Boolean)
        {
            Caption = 'Price Updated';
        }
        field(18; "Whse. Shipment No."; Code[20])
        {
            Caption = 'Whse. Shipment No.';
        }
        field(19; Status; Enum "Trade Cost Order Status APS")
        {
            Caption = 'Status';
        }
        field(20; "Posted Whse. Receipt No."; Code[20])
        {
            Caption = 'Posted Whse. Receipt No.';
        }
        field(21; "Whse. Receipt No."; Code[20])
        {
            Caption = 'Whse. Receipt No.';
        }
        field(22; "Blanket Order No."; Code[20])
        {
            Caption = 'Blanket Order No.';
            //TableRelation = "Purchase Header"."No." where("Document Type" = const("Blanket Order"));
        }
        field(23; "Blanket Order Line No."; Integer)
        {
            Caption = 'Blanket Order Line No.';
        }
        field(24; "Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center Code';
           // TableRelation = "Dimension Value".Code where("Dimension Code" = field("Cost Center Dim. Filter"));
        }
        field(25; "Cost Center Dim. Filter"; Code[20])
        {
            Caption = 'Cost Center Dimension Filter';
            FieldClass = FlowFilter;
        }
        field(26; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
           // TableRelation = Currency;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Posted Whse. Shipment No.") { }
        key(Key3; "Trade Plan Code", "Posting Date") { }
        key(Key4; "Vendor No.", "Purchase Order No.") { }
        key(Key5; "Posted Whse. Receipt No.") { }
        key(Key6; "Trade Order No.") { }
    }

    // procedure InsertRecord(RunTrigger: Boolean)
    // var
    //     SequenceNoMgt: Codeunit "Sequence No. Mgt.";
    // begin
    //     if "Entry No." = 0 then
    //         "Entry No." := SequenceNoMgt.GetNextSeqNo(Database::"Posted Trade Cost Order APS");
    //     if not Insert(RunTrigger) then begin
    //         SequenceNoMgt.RebaseSeqNo(Database::"Posted Trade Cost Order APS");
    //         "Entry No." := SequenceNoMgt.GetNextSeqNo(Database::"Posted Trade Cost Order APS");
    //         Insert(RunTrigger);
    //     end;
    // end;
}
