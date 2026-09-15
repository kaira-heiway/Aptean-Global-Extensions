table 88009 "R2R Dim. Corr. Buffer NIQ"
{
    Caption = 'Dimension Correction Buffer';
    DataClassification = CustomerContent;
    TableType = Temporary;

    fields
    {
        field(1; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(2; "Dimension Name"; Text[30])
        {
            Caption = 'Dimension Name';
        }
        field(3; "Current Value Code"; Code[20])
        {
            Caption = 'Current Value';
            TableRelation = "Dimension Value".Code where("Dimension Code" = field("Dimension Code"));
        }
        field(4; "Current Value Name"; Text[50])
        {
            Caption = 'Current Value Name';
        }
        field(5; "New Value Code"; Code[20])
        {
            Caption = 'New Value';
            TableRelation = "Dimension Value".Code where("Dimension Code" = field("Dimension Code"));
        }
        field(6; "New Value Name"; Text[50])
        {
            Caption = 'New Value Name';
        }
    }

    keys
    {
        key(PK; "Dimension Code")
        {
            Clustered = true;
        }
    }
}