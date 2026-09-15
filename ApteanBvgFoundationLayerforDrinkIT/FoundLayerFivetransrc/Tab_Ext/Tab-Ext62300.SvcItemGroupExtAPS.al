tableextension 62300 "Svc. Item Group Ext. APS" extends "Service Item Group"
{
    fields
    {
        field(62300; "Create Fixed Asset APS"; Boolean)
        {
            Caption = 'Create Fixed Asset';
            DataClassification = CustomerContent;
        }
        field(62301; "FA Template Code APS"; Code[20])
        {
            Caption = 'FA Template Code';
            DataClassification = CustomerContent;
            //TableRelation = "FA Template APS";

            trigger OnValidate()
            begin
                if "FA Template Code APS" <> '' then
                    "Create Fixed Asset APS" := true;
            end;
        }
        field(62302; "Create FA GL Journal APS"; Boolean)
        {
            Caption = 'Create FA G/L Journal';
            DataClassification = CustomerContent;
        }
        field(62303; "Reuse Service Item APS"; Boolean)
        {
            Caption = 'Reuse Service Item';
            DataClassification = CustomerContent;
        }
        field(62304; "Create On APS"; Option)
        {
            Caption = 'Create On';
            DataClassification = CustomerContent;
            OptionMembers = Sales,Purchase;
            OptionCaption = 'Sales,Purchase';
        }
    }
}
