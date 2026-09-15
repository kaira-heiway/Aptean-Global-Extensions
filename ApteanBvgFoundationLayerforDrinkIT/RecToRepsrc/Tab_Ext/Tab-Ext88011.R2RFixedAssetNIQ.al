tableextension 88011 "R2R Fixed Asset NIQ" extends "Fixed Asset"
{
    fields
    {
        field(88000; "R2R Depreciat. Book Filter NIQ"; Code[20])
        {
            Caption = 'Depreciation Book Filter';
            FieldClass = FlowFilter;
            TableRelation = "Depreciation Book";
        }
        field(88001; "R2R Acquisition Cost NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Acquisition Cost"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Acquisition Cost';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88002; "R2R Depreciation NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const(Depreciation),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Depreciation';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88003; "R2R Book Value NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "Part of Book Value" = const(true),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Book Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88004; "R2R Write-Down NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Write-Down"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Write-Down';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88005; "R2R Appreciation NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const(Appreciation),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Appreciation';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88006; "R2R Custom 1 NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Custom 1"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Custom 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88007; "R2R Salvage Value NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Salvage Value"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Salvage Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88008; "R2R Custom 2 NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Custom 2"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Custom 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88009; "R2R Proceeds on Disposal NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Proceeds on Disposal"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Proceeds on Disposal';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88010; "R2R Gain/Loss NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(" "),
                                                              "FA Posting Type" = const("Gain/Loss"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Gain/Loss';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88011; "R2R Book Value on Disposal NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("FA Ledger Entry".Amount where("FA No." = field("No."),
                                                              "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ"),
                                                              "FA Posting Category" = const(Disposal),
                                                              "FA Posting Type" = const("Book Value on Disposal"),
                                                              "FA Posting Date" = field("FA Posting Date Filter")));
            Caption = 'Book Value on Disposal';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88012; "R2R Depreciation Method NIQ"; Enum "FA Depreciation Method")
        {
            CalcFormula = lookup("FA Depreciation Book"."Depreciation Method" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Depreciation Method';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88013; "R2R Deprec. Starting Date NIQ"; Date)
        {
            CalcFormula = lookup("FA Depreciation Book"."Depreciation Starting Date" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Depreciation Starting Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88014; "R2R Deprec. Ending Date NIQ"; Date)
        {
            CalcFormula = lookup("FA Depreciation Book"."Depreciation Ending Date" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Depreciation Ending Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88015; "R2R No. of Deprec. Years NIQ"; Decimal)
        {
            BlankZero = true;
            CalcFormula = lookup("FA Depreciation Book"."No. of Depreciation Years" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'No. of Depreciation Years';
            DecimalPlaces = 2 : 8;
            Editable = false;
            FieldClass = FlowField;
            MinValue = 0;
        }
        field(88016; "R2R Acquisition Date NIQ"; Date)
        {
            CalcFormula = lookup("FA Depreciation Book"."Acquisition Date" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Acquisition Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88017; "R2R Disposal Date NIQ"; Date)
        {
            CalcFormula = lookup("FA Depreciation Book"."Disposal Date" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Disposal Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88018; "R2R Last Acq. Cost Date NIQ"; Date)
        {
            CalcFormula = lookup("FA Depreciation Book"."Last Acquisition Cost Date" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Last Acquisition Cost Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88019; "R2R Last Depreciation Date NIQ"; Date)
        {
            CalcFormula = lookup("FA Depreciation Book"."Last Depreciation Date" where("FA No." = field("No."),
                                                                                    "Depreciation Book Code" = field("R2R Depreciat. Book Filter NIQ")));
            Caption = 'Last Depreciation Date';
            Editable = false;
            FieldClass = FlowField;
        }
    }
}