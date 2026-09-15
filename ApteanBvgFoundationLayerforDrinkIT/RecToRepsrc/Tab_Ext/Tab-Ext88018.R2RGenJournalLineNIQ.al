tableextension 88018 "R2R Gen. Journal Line NIQ" extends "Gen. Journal Line"
{
    fields
    {
        // modify("Loan No. 114FDW")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         Loan: Record LoanHeader114FDW;
        //         LoanStatus: Record LoanStatus114FDW;
        //     begin
        //         // if "Loan No. 114FDW" = '' then begin
        //         //     Rec."On Hold" := '';
        //         //     Rec."Message to Recipient" := '';
        //         // end;
        //         // if not Loan.Get("Loan No. 114FDW") then
        //         //     exit;
        //         if not LoanStatus.Get(Loan.Status) then
        //             exit;
        //         if LoanStatus."R2R BDP On Hold NIQ" <> '' then
        //             Rec."On Hold" := LoanStatus."R2R BDP On Hold NIQ";
        //         if LoanStatus."R2R BDP Msg to Recipient NIQ" <> '' then
        //             Rec."Message to Recipient" := LoanStatus."R2R BDP Msg to Recipient NIQ";
        //     end;
        // }
        modify("Posting Group")
        {
            TableRelation = if ("Account Type" = const(Employee)) "Employee Posting Group";
        }
        field(88000; "R2R Description 2 NIQ"; Text[100])
        {
            Caption = 'Description2';
            DataClassification = CustomerContent;
        }
        field(88001; "R2R Prior-Year Period NIQ"; Integer)
        {
            BlankZero = true;
            Caption = 'Prior-Year Period';
            DataClassification = CustomerContent;
            MinValue = 0;
        }
        field(88002; "R2R Reverse Bal. Date NIQ"; Date)
        {
            Caption = 'Reverse Bal. Posting Date';
            DataClassification = CustomerContent;
        }
        field(88003; "R2R Reclassified NIQ"; Boolean)
        {
            Caption = 'Reclassified';
        }
        field(88004; "R2R Reclass From Entry No. NIQ"; Integer)
        {
            Caption = 'Reclassified From Entry No.';
            TableRelation = if ("Account Type" = const("G/L Account")) "G/L Entry"."Entry No."
            else
            if ("Account Type" = const(Customer)) "Cust. Ledger Entry"."Entry No."
            else
            if ("Account Type" = const(Vendor)) "Vendor Ledger Entry"."Entry No.";
            trigger OnValidate()
            begin
                if "R2R Reclass From Entry No. NIQ" <> 0 then
                    "R2R Reclassified NIQ" := true;
            end;
        }
        field(88005; "R2R Write off NIQ"; Boolean)
        {
            Caption = 'Write off';
        }
        field(88006; "R2R Order No. NIQ"; Code[20])
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
