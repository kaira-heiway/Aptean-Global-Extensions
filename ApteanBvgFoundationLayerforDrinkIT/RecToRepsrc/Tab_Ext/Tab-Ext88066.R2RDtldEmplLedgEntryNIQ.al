tableextension 88066 "R2R Dtld Empl. Ledg. Entry NIQ" extends "Detailed Employee Ledger Entry"
{
    fields
    {
        field(88000; "R2R Employee Posting Group NIQ"; Code[20])
        {
            Caption = 'Employee Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Employee Posting Group";
        }
    }
}
