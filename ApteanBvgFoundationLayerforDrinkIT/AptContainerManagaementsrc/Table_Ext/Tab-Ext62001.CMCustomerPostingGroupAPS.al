tableextension 62001 "CM Customer Posting Group APS" extends "Customer Posting Group"
{
    fields
    {
        field(62050; "CM Excl. Cred. Lim. Warn APS"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Exclude From Credit Limit Warnings';
        }
        field(62051; "CM Incl. EG. Lim. Warn APS"; Enum "CM ExclEGLimitCheckOptions APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Include In Empty Good Limit Warnings';
        }
    }
}
