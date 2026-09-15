namespace TradeCostEnhancement.TradeCostEnhancement;

tableextension 62519 "Posted Trade Cost Order" extends "Posted Trade Cost Order APS"
{
    fields
    {
        field(50100; "Unit Of Measure Code"; Code[10])
        {
            Caption = 'Unit Of Measure Code';
            DataClassification = CustomerContent;
        }

        field(50101; Posted; Boolean)
        {
            Caption = 'Posted';
            DataClassification = CustomerContent;
        }
    }
}
