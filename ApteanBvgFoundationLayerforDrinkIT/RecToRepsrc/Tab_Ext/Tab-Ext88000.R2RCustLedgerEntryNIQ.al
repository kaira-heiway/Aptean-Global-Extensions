tableextension 88000 "R2R Cust. Ledger Entry NIQ" extends "Cust. Ledger Entry"
{
    fields
    {
        field(88000; "R2R BadDebtProvisionCode NIQ"; Code[20])
        {
            Caption = 'Bad Debt Provision Code';
            DataClassification = CustomerContent;
            TableRelation = "R2R BadDebtProvisionCode NIQ";
        }
        field(88001; "R2R AmountBadDebtProvLCY NIQ"; Decimal)
        {
            CalcFormula = sum("R2R BadDebtProvision Entry NIQ"."Bad Debt Provision Amount LCY" where("Customer Ledger Entry No." = field("Entry No.")
                                                                                                    , "Posting Date" = field("Date Filter")
                                                                                                    ));
            Caption = 'Amount Bad Debt Prov. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88002; "R2R Open (Bad Debt Prov.) NIQ"; Boolean)
        {
            Caption = 'Open (Bad Debt Prov.)';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(88003; "R2R Usage (LCY) NIQ"; Decimal)
        {
            CalcFormula = sum("R2R BadDebtProvision Entry NIQ"."Usage (LCY)" where("Customer Ledger Entry No." = field("Entry No."),
                                                                                    // "Bad Debt Provision Code" = field("R2R BadDebtProvisionCode NIQ"),
                                                                                    "Entry Type" = const(Usage)));
            Caption = 'Usage (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88004; "R2R Usage (BDP) NIQ"; Boolean)
        {
            Caption = 'Usage (Bad Debt Prov.)';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(88005; "R2R Reclassified NIQ"; Boolean)
        {
            Caption = 'Reclassified';
        }
        field(88006; "R2R Reminder Level NIQ"; Integer)
        {
            CalcFormula = max("Reminder/Fin. Charge Entry"."Reminder Level" where("Customer Entry No." = field("Entry No.")));
            Caption = 'Reminder Level';
            FieldClass = FlowField;
        }
        field(88007; "R2R Order No. NIQ"; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;
        }
        field(88008; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
        }
    }
}