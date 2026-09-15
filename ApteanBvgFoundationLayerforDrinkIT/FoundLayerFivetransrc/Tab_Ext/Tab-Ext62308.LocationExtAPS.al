tableextension 62308 "Location Ext. APS" extends Location
{
    fields
    {
        field(62308; "Responsibility Center APS"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
          //  TableRelation = "Responsibility Center";
            ToolTip = 'Specifies the responsibility center associated with this location.';
        }
    }
    fieldgroups
    {
        addlast(DropDown; "Responsibility Center APS")
        { }
    }
}