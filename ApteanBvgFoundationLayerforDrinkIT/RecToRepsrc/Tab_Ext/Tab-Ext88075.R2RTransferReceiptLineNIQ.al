tableextension 88075 "R2R Transfer Receipt Line NIQ" extends "Transfer Receipt Line"
{
    fields
    {
        field(88000; "R2R UnitPriceTax NIQ"; Decimal)
        {
            Caption = 'Unit Price (Tax)';
            DataClassification = ToBeClassified;
        }
    }
}