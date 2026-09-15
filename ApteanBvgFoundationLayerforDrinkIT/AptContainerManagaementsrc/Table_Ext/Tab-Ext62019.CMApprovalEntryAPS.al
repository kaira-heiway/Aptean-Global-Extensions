tableextension 62019 "CM Approval Entry APS" extends "Approval Entry"
{
    fields
    {
        field(62050; "CM Av. EG Limit Amt (LCY) APS"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Available Empty Goods Limit Amount (LCY)';
            DataClassification = CustomerContent;
        }
        field(62051; "CM EG Limit Amt (LCY) APS"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Empty Goods Limit Amount (LCY)';
            DataClassification = CustomerContent;
        }
    }
}