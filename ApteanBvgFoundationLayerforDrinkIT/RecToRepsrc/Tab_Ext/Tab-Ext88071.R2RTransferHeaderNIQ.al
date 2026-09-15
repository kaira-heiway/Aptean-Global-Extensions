tableextension 88071 "R2R Transfer Header NIQ" extends "Transfer Header"
{
    fields
    {
        modify("Transfer-from Code")
        {
            trigger OnAfterValidate()
            var
                Location: Record Location;
                TransferRoute: Record "Transfer Route";
            begin
                if Rec."Transfer-from Code" <> '' then begin
                    Location.SetLoadFields("R2R CustPriceGroupTax NIQ");
                    Location.Get(Rec."Transfer-from Code");
                    Rec."R2R CustPriceGroupTax NIQ" := Location."R2R CustPriceGroupTax NIQ";
                end else
                    Rec."R2R CustPriceGroupTax NIQ" := '';

                if TransferRoute.Get(Rec."Transfer-from Code", Rec."Transfer-to Code") then
                    Rec."R2R Transfer-To Bin Code NIQ" := TransferRoute."R2R Transfer-To Bin Code NIQ"
                else
                    Rec."R2R Transfer-To Bin Code NIQ" := '';
            end;
        }
        modify("Transfer-to Code")
        {
            trigger OnAfterValidate()
            var
                TransferRoute: Record "Transfer Route";
            begin
                if TransferRoute.Get(Rec."Transfer-from Code", Rec."Transfer-to Code") then
                    Rec."R2R Transfer-To Bin Code NIQ" := TransferRoute."R2R Transfer-To Bin Code NIQ"
                else
                    Rec."R2R Transfer-To Bin Code NIQ" := '';
            end;
        }
        field(88000; "R2R CustPriceGroupTax NIQ"; Code[10])
        {
            Caption = 'Customer Price Group (Tax)';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Price Group".Code;
        }
        field(88001; "R2R Transfer-To Bin Code NIQ"; Code[20])
        {
            Caption = 'Transfer-To Bin Code';
            DataClassification = ToBeClassified;
            TableRelation = Bin.Code;
            trigger OnLookup()
            var
                Bin: Record Bin;
                Location: Record Location;
            begin
                // Get the Transfer-to Location
                if Rec."Transfer-to Code" = '' then
                    exit;

                if not Location.Get(Rec."Transfer-to Code") then
                    exit;

                // Only show bins if location meets criteria: Excise Type = mixed AND Require Put-away = off
                // if (Location."Excise Type 102FDW" <> Location."Excise Type 102FDW"::"Mixed 102FDW") or
                //    (Location."Require Put-away") then
                //     exit;

                // Filter and show bins from the Transfer-to Location
                Bin.Reset();
                Bin.FilterGroup(2);
                Bin.SetRange("Location Code", Rec."Transfer-to Code");
                Bin.FilterGroup(0);
                if Page.RunModal(Page::"Bin List", Bin) = Action::LookupOK then
                    Rec."R2R Transfer-To Bin Code NIQ" := Bin.Code;
            end;
        }
    }
}