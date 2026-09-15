tableextension 88021 "R2R Gen. Journal Batch NIQ" extends "Gen. Journal Batch"
{
    fields
    {
        field(88000; "R2R Prior-Year Period NIQ"; Integer)
        {
            BlankZero = true;
            Caption = 'Prior-Year Period';
            DataClassification = CustomerContent;
            MinValue = 0;
        }
    }
    trigger OnAfterInsert()
    var
        GenJnlTemplate: Record "Gen. Journal Template";
    begin
        GenJnlTemplate.Get("Journal Template Name");
        Rec."R2R Prior-Year Period NIQ" := GenJnlTemplate."R2R Prior-Year Period NIQ";
    end;
}
