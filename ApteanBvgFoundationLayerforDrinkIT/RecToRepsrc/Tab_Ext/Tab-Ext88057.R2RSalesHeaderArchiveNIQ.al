tableextension 88057 "R2R Sales Header Archive NIQ" extends "Sales Header Archive"
{
    fields
    {
        field(88001; "R2R Invoice Group NIQ"; Code[10])
        {
            Caption = 'Invoice Group';
            DataClassification = CustomerContent;
            TableRelation = "R2R Invoice Group NIQ".Code;
        }
        field(88015; "R2R Suppress Invoice Print NIQ"; Boolean)
        {
            Caption = 'Suppress Invoice Print ';
            DataClassification = CustomerContent;
        }
        field(88020; "R2R Payment Reference NIQ"; Code[50])
        {
            Caption = 'Payment Reference';
            DataClassification = CustomerContent;
        }
        field(88031; "R2R Invoice Operation ID NIQ"; Guid)
        {
            Caption = 'Invoice Operation ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(88032; "R2R PayBackExcl.VATSales NIQ"; Boolean)
        {
            Caption = 'Pay back excl. VAT (Sales)';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies that when a loan number is selected in a sales document with loan entry type set to pay back cap., the document will post and possibly apply the amount excluding VAT to the loan. In addition it will post a second entry on the regular customer posting group for the VAT amount.';
        }
    }
}