/// <summary>
/// TableExtension R2R Purchase Line NIQ (ID 88006) extends Record Purchase Line.
/// </summary>
tableextension 88006 "R2R Purchase Line NIQ" extends "Purchase Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                UpdatePurchaseReasonCode();
            end;
        }
        field(88010; "R2R Invoice Group Code NIQ"; Code[10])
        {
            Caption = 'Invoice Group Code';
            Editable = false;
            TableRelation = "R2R Invoice Group NIQ";
        }
        field(88011; "R2R IC Partner Price NIQ"; Decimal)
        {
            Caption = 'IC Partner Price';
        }
        field(88012; "R2R IC Partner Curr. Code NIQ"; Code[10])
        {
            Caption = 'IC Partner Curr. Code';
            TableRelation = Currency.Code;
        }
    }
    local procedure UpdatePurchaseReasonCode()
    var
        Item: Record Item;
        PurchaseHeader: Record "Purchase Header";
    begin
        if Rec.Type <> Rec.Type::Item then
            exit;
        if Item.Get("No.") then
            if Item."R2R Def. Pur. Reason Code NIQ" <> '' then begin
                //Validate("Reason Code 101FDW", Item."R2R Def. Pur. Reason Code NIQ");
                exit;
            end;
        PurchaseHeader.Get("Document Type", "Document No.");
        //Validate("Reason Code 101FDW", PurchaseHeader."Reason Code");
    end;
}