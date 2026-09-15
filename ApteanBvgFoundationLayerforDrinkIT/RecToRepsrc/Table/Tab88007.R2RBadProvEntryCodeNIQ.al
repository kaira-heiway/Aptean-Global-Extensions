table 88007 "R2R Bad Prov. Entry Code NIQ"
{
    Caption = 'Bad Provision Entry Code';
    DataClassification = CustomerContent;
    // DrillDownPageId = "R2R Bad Prov. Entry Codes NIQ";
    // LookupPageId = "R2R Bad Prov. Entry Codes NIQ";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'code';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimMgt.DeleteDefaultDim(Database::"R2R Bad Prov. Entry Code NIQ", Code);
    end;
}