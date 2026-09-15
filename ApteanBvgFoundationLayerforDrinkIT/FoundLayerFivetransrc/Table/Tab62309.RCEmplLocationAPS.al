table 62309 "RC Empl. Location APS"
{
    Caption = 'Responsibility Center Employee Location';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            //TableRelation = User."User Name";
           // ValidateTableRelation = false;
        }
        field(2; "RC Type APS"; Enum "RC Employee Type APS")
        {
            Caption = 'Type';
        }
        field(3; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
           // TableRelation = Location;
        }
        field(4; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
            //TableRelation = "Responsibility Center";
        }
    }
    keys
    {
        key(PK; "User ID", "RC Type APS", "Location Code", "Responsibility Center")
        {
            Clustered = true;
        }
    }
}