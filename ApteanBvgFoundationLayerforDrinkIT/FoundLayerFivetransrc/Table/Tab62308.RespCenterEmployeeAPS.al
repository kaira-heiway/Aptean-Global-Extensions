table 62308 "Resp. Center Employee APS"
{
    Caption = 'Responsibility Center Employee';
    DataClassification = CustomerContent;
    //LookupPageId = "Resp. Center Employees APS";
    //DrillDownPageId = "Resp. Center Employees APS";

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            //TableRelation = User."User Name";
           // ValidateTableRelation = false;
        }
        field(2; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            //TableRelation = "Responsibility Center";
        }
        field(3; Type; Enum "RC Employee Type APS")
        {
            Caption = 'Type';
        }
        field(4; "Default Resp. Center"; Boolean)
        {
            Caption = 'Default Resp. Center';
            DataClassification = SystemMetadata;
            InitValue = false;

            trigger OnValidate()
            var
                RespCenterEmployee: Record "Resp. Center Employee APS";
            begin
                if Rec."Default Resp. Center" then begin
                    RespCenterEmployee.SetFilter("Responsibility Center", '<>%1', Rec."Responsibility Center");
                    RespCenterEmployee.SetRange(Type, Rec.Type);
                    RespCenterEmployee.SetRange("Default Resp. Center", true);
                    RespCenterEmployee.SetFilter("User ID", Rec."User ID");
                    if RespCenterEmployee.FindSet() then
                        repeat
                            RespCenterEmployee."Default Resp. Center" := false;
                            RespCenterEmployee.Modify(false);
                        until RespCenterEmployee.Next() = 0;
                end;
            end;
        }
    }
    keys
    {
        key(PK; "User ID", "Responsibility Center", Type)
        {
            Clustered = true;
        }
    }
}