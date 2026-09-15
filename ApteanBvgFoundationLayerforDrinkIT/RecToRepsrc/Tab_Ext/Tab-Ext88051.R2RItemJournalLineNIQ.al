tableextension 88051 "R2R Item Journal Line NIQ" extends "Item Journal Line"
{
    fields
    {
        field(88000; "R2R Posting Date (Appl.To) NIQ"; Date)
        {
            CalcFormula = lookup("Item Ledger Entry"."Posting Date" where("Entry No." = field("Applies-to Entry")));
            Caption = 'Posting Date (Appl.-to Entry)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88001; "R2R Entry Type (Appl.To) NIQ"; Enum "Item Ledger Entry Type")
        {
            CalcFormula = lookup("Item Ledger Entry"."Entry Type" where("Entry No." = field("Applies-to Entry")));
            Caption = 'Entry Type (Appl.-to Entry)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88002; "R2R Lot No. (Appl.To) NIQ"; Code[50])
        {
            CalcFormula = lookup("Item Ledger Entry"."Lot No." where("Entry No." = field("Applies-to Entry")));
            Caption = 'Lot No. (Appl.-to Entry)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88003; "R2R Description 2 NIQ"; Text[100])
        {
            Caption = 'Description 2';
            DataClassification = CustomerContent;
        }
    }
}
