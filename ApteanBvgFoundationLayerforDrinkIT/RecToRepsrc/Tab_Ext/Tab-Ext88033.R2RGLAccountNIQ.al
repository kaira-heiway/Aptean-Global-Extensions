tableextension 88033 "R2R G/L Account NIQ" extends "G/L Account"
{
    fields
    {
        field(88000; "R2R Prior-Year Per. Filter NIQ"; Integer)
        {
            Caption = 'Prior-Year Period Filter';
            FieldClass = FlowFilter;
        }
        field(88001; "R2R Net Change NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("G/L Entry".Amount where("G/L Account No." = field("No."),
                                                        "G/L Account No." = field(filter(Totaling)),
                                                        "Business Unit Code" = field("Business Unit Filter"),
                                                        "Global Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                        "Global Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                        "Posting Date" = field("Date Filter"),
                                                        "VAT Reporting Date" = field("VAT Reporting Date Filter"),
                                                        "Dimension Set ID" = field("Dimension Set ID Filter"),
                                                        "R2R Prior-Year Period NIQ" = field("R2R Prior-Year Per. Filter NIQ"),
                                                        "R2R Add Reporting Dim 1 NIQ" = field(filter("R2R Add. Rep. Dim.1 Filter NIQ")),
                                                        "R2R Add Reporting Dim 2 NIQ" = field(filter("R2R Add. Rep. Dim.2 Filter NIQ"))
                                                        ));
            Caption = 'Net Change R2R';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88002; "R2R Add. Rep. Dim.1 Filter NIQ"; Code[20])
        {
            Caption = 'Add. Rep. Dim.1 Filter';
            DataClassification = CustomerContent;
        }
        field(88003; "R2R Add. Rep. Dim.2 Filter NIQ"; Code[20])
        {
            Caption = 'Add. Rep. Dim.2 Filter';
            DataClassification = CustomerContent;
        }
        field(88004; "R2R Balance at Date NIQ"; Decimal)
        {
            CalcFormula = sum("G/L Entry".Amount where("G/L Account No." = field("No."),
                                                        "G/L Account No." = field(filter(Totaling)),
                                                        "Business Unit Code" = field("Business Unit Filter"),
                                                        "Global Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                        "Global Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                        "Posting Date" = field(upperlimit("Date Filter")),
                                                        "VAT Reporting Date" = field(upperlimit("VAT Reporting Date Filter")),
                                                        "Dimension Set ID" = field("Dimension Set ID Filter"),
                                                        "R2R Add Reporting Dim 1 NIQ" = field(filter("R2R Add. Rep. Dim.1 Filter NIQ")),
                                                        "R2R Add Reporting Dim 2 NIQ" = field(filter("R2R Add. Rep. Dim.2 Filter NIQ"))
                                                        ));
            Caption = 'Balance at Date R2R';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88005; "R2R Balance NIQ"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("G/L Entry".Amount where("G/L Account No." = field("No."),
                                                        "G/L Account No." = field(filter(Totaling)),
                                                        "Business Unit Code" = field("Business Unit Filter"),
                                                        "Global Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                        "Global Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                        "Dimension Set ID" = field("Dimension Set ID Filter"),
                                                        "R2R Add Reporting Dim 1 NIQ" = field(filter("R2R Add. Rep. Dim.1 Filter NIQ")),
                                                        "R2R Add Reporting Dim 2 NIQ" = field(filter("R2R Add. Rep. Dim.2 Filter NIQ"))
                                                        ));
            Caption = 'Balance R2R';
            Editable = false;
            FieldClass = FlowField;
        }
    }
}
