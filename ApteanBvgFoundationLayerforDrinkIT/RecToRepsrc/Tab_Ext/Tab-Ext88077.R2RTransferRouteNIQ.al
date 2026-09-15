tableextension 88077 "R2R Transfer Route NIQ" extends "Transfer Route"
{
    fields
    {
        field(88000; "R2R Transfer-To Bin Code NIQ"; Code[20])
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