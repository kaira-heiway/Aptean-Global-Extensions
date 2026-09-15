/// <summary>
/// TableExtension R2R Sales Setup NIQ (ID 88008) extends Record Sales and Receivables Setup.
/// </summary>
tableextension 88008 "R2R Sales Setup NIQ" extends "Sales & Receivables Setup"
{
    fields
    {
        field(88000; "R2R Upde VAT Reg No. in SO NIQ"; Boolean)
        {
            Caption = 'Update VAT Registration No. in Sales Order';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
        }
    }
}