tableextension 62515 "User Setup Ext APS" extends "User Setup"
{
    fields
    {
        field(62500; "Allow Change Trade Plans APS"; Boolean)
        {
            Caption = 'Allow Change Trade Plans';
            DataClassification = CustomerContent;
        }
        field(62501; "Allow Edit PTCO APS"; Boolean)
        {
            Caption = 'Allow Edit Posted Trade Cost Order';
            DataClassification = CustomerContent;
        }
    }
}
