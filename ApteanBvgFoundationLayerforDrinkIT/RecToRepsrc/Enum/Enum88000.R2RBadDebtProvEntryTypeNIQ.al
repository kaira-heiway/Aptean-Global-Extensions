enum 88000 "R2R BadDebtProv Entry Type NIQ"
{
    Caption = 'Bad Debt Provision Entry Type';
    Extensible = true;

    value(0; Increase)
    {
        Caption = 'Increase';
    }
    value(1; Decrease)
    {
        Caption = 'Decrease';
    }
    value(2; Usage)
    {
        Caption = 'Usage';
    }
}