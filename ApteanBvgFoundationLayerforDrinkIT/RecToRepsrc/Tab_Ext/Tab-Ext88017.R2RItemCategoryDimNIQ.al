tableextension 88017 "R2R Item Category Dim NIQ" extends "Item Category"
{
    fields
    {
        field(88001; "R2R Autocreate Item Dim. NIQ"; Boolean)
        {
            Caption = 'Autocreate Item Dimension';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                DefaultDim: Record "Default Dimension";
                R2RSetup: Record "R2R Extension Setup NIQ";
                ErrInfo: ErrorInfo;
            begin
                if not "R2R Autocreate Item Dim. NIQ" then
                    exit;

                R2RSetup.SetLoadFields("R2R Enable Auto Dim. Item NIQ", "R2R Auto Dim. Code Item NIQ");
                R2RSetup.Get();

                if R2RSetup."R2R Auto Dim. Code Item NIQ" = '' then
                    exit;

                DefaultDim.SetLoadFields("Table ID", "No.", "Dimension Code");
                DefaultDim.SetRange("Table ID", Database::"Item Category");
                DefaultDim.SetRange("No.", Rec.Code);
                DefaultDim.SetRange("Dimension Code", R2RSetup."R2R Auto Dim. Code Item NIQ");
                if not DefaultDim.IsEmpty() then begin
                    ErrInfo.Title := AutocreateConflictTitleLbl;
                    ErrInfo.Message := AutocreateConflictMsgLbl;
                    ErrInfo.DetailedMessage := StrSubstNo(AutocreateConflictDetailLbl,
                                                          R2RSetup."R2R Auto Dim. Code Item NIQ");
                    Error(ErrInfo);
                end;
            end;
        }
    }

    var
        AutocreateConflictDetailLbl: Label 'Remove the default dimension for dimension code %1 from this item category first, or disable the Auto Dimension Item feature in Record To Report Extension Setup.', Comment = '%1 = dimension code configured as Auto Dimension Code (Item) in Record To Report Extension Setup';
        AutocreateConflictMsgLbl: Label 'Autocreate Item Dimension cannot be enabled when a default dimension for the Auto Dimension Code (Item) is already assigned to this item category.';
        AutocreateConflictTitleLbl: Label 'Autocreate Item Dimension Conflict';
}