/// <summary>
/// TableExtension R2R Sales Line NIQ (ID 88007) extends Record Sales Line.
/// </summary>
tableextension 88007 "R2R Sales Line NIQ" extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                UpdateSalesReasonCode();
            end;
        }
        field(88000; "R2R IC Tar. Cmp. Glb. DIM1 NIQ"; Code[20])
        {
            Caption = 'IC Target Company Global DIM1';
            CaptionClass = '1,2,1,IC Target Company ';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1),
                                                          Blocked = const(false));
            ValidateTableRelation = false;
        }
        field(88001; "R2R IC Tar. Cmp. Glb. DIM2 NIQ"; Code[20])
        {
            Caption = 'IC Target Company Global DIM2';
            CaptionClass = '1,2,2,IC Target Company ';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2),
                                                          Blocked = const(false));
            ValidateTableRelation = false;
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
    local procedure UpdateSalesReasonCode()
    var
        Item: Record Item;
        SalesHeader: Record "Sales Header";
    begin
        if Rec.IsTemporary() then
            exit;

        if Rec.Type <> Rec.Type::Item then
            exit;

        if Item.Get("No.") then
            if Item."R2R Def. Sales Reason Code NIQ" <> '' then begin
               // Validate("Reason Code 101FDW", Item."R2R Def. Sales Reason Code NIQ");
                exit;
            end;
        //if SalesHeader.Get("Document Type", "Document No.") then
            //Validate("Reason Code 101FDW", SalesHeader."Reason Code");
    end;
}