tableextension 88074 "R2R Transfer Line NIQ" extends "Transfer Line"
{
    fields
    {
        modify("Item No.")
        {
            trigger OnAfterValidate()
            var
                TransferHeader: Record "Transfer Header";
            begin
                TransferHeader.Get("Document No.");
                if TransferHeader."R2R CustPriceGroupTax NIQ" <> '' then
                    "R2R UnitPriceTax NIQ" := GetUnitPrice(TransferHeader);
            end;
        }
        field(88000; "R2R UnitPriceTax NIQ"; Decimal)
        {
            Caption = 'Unit Price (Tax)';
            DataClassification = ToBeClassified;
        }
    }

    local procedure GetUnitPrice(TransferHeader: Record "Transfer Header"): Decimal
    var
        Item: Record Item;
        PriceListLine: Record "Price List Line";
    begin
        // Try Price List Lines (BC v15+)
        PriceListLine.SetRange("Asset Type", PriceListLine."Asset Type"::Item);
        PriceListLine.SetRange("Asset No.", "Item No.");
        PriceListLine.SetRange("Source Type", PriceListLine."Source Type"::"Customer Price Group");
        PriceListLine.SetRange("Source No.", TransferHeader."R2R CustPriceGroupTax NIQ");
        PriceListLine.SetFilter("Starting Date", '%1|<=%2', 0D, "Shipment Date");
        PriceListLine.SetFilter("Ending Date", '%1|>=%2', 0D, "Shipment Date");
        PriceListLine.SetRange("Unit of Measure Code", "Unit of Measure Code");
        PriceListLine.SetRange("Variant Code", "Variant Code");
        if PriceListLine.FindFirst() then
            exit(PriceListLine."Unit Price");

        // Try with blank variant and UOM
        PriceListLine.SetRange("Unit of Measure Code");
        PriceListLine.SetRange("Variant Code");
        if PriceListLine.FindFirst() then
            exit(PriceListLine."Unit Price");

        // Fallback to item unit price if no sales price found
        if Item.Get("Item No.") then
            exit(Item."Unit Price");

        exit(0);
    end;
}