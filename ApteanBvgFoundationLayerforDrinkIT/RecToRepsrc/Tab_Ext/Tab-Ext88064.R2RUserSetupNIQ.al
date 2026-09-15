tableextension 88064 "R2R User Setup NIQ" extends "User Setup"
{
    fields
    {
        field(88000; "R2R Allow Delete BankStat NIQ"; Boolean)
        {
            Caption = 'Allow Delete Bank Acc. Statement';
        }
        field(88001; "R2R Allow Dim. Correction NIQ"; Boolean)
        {
            Caption = 'Allow Dimension Correction';
        }
    }
}
