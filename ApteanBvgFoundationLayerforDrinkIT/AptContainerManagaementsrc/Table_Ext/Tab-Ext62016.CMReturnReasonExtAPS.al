tableextension 62016 "CM Return Reason Ext. APS" extends "Return Reason"
{
    fields
    {
        field(62050; "CM Exclude from Empty good APS"; Boolean)
        {
            Caption = 'Exclude from Empty good limit checks';
            DataClassification = CustomerContent;
        }
    }
}
