/// <summary>
/// TableExtension R2R Purchase Setup NIQ (ID 88009) extends Record Purchases and Payables Setup.
/// </summary>
tableextension 88009 "R2R Purchase Setup NIQ" extends "Purchases & Payables Setup"
{
    fields
    {
        field(88000; "R2R Upde VAT Reg No. in PO NIQ"; Boolean)
        {
            Caption = 'Update VAT Registration No. in Purchase Order';
            DataClassification = CustomerContent;
            ObsoleteReason = 'not needed';
            ObsoleteState = Removed;
            ObsoleteTag = '20';
        }
    }
}