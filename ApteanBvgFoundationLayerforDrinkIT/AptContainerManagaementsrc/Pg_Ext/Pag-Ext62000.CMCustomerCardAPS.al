pageextension 62000 "CM Customer Card APS" extends "Customer Card"
{
    layout
    {
        addafter(Invoicing)
        {
            group("CM Container Management APS")
            {
                Caption = 'Container Management';
                Visible = EGFastTabVisible;
                field("CM Empty Good Limit (LCY) APS"; Rec."CM Empty Good Limit (LCY) APS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the empty good limit balance in local currency that a customer is allowed to exceed. Determine in record to report extension setup when the value of this field should be included in empty good limit checks.', Comment = '%';
                }
                field("CM EG Limit (Yes/No) APS"; Rec."CM EG Limit (Yes/No) APS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that Empty Good limit is checked for the customer. A zero value will be changed into 0,01, so that it will be recognized it as a limit.', Comment = '%';
                }
                field("CM Autosuggest RetEnt. Yes APS"; Rec."CM Autosuggest Ret. Ent. APS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that return entry is suggested and applied immediately when a sales order is released that contains empty good document lines. Lines for the return of the empty good items will be created.', Comment = '%';
                    //OptionCaption = 'Default (Yes),Yes,No';
                    Visible = ShowAutosuggestRetEntryDefaultYes;
                }
                field("CM Autosuggest RetEnt. No APS"; Rec."CM Autosuggest Ret. Ent. APS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that return entry is suggested and applied immediately when a sales order is released that contains empty good document lines. Lines for the return of the empty good items will be created.', Comment = '%';
                    //OptionCaption = 'Default (No),Yes,No';
                    Visible = ShowAutosuggestRetEntryDefaultNo;
                }
            }
        }
        addafter("Credit Limit (LCY)")
        {
            field("CM Credit Limit (Yes/No) APS"; Rec."CM Credit Limit (Yes/No) APS")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies that Credit limit is checked for the customer. A zero value will be changed into 0,01, so that it will be recognized as a limit', Comment = '%';
            }
        }
    }
    actions
    {
        addlast(reporting)
        {
            action("CM Empty Good Statement APS")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Customized Empty Goods Statement';
                Image = "Report";
                Promoted = false;
                Visible = EGFastTabVisible;
                ToolTip = 'View, print or save a detailed list that shows starting balances, increases, decreases and ending balances of empty goods for a customer.';

                // trigger OnAction()
                // begin
                //     RunReport(CMSetupMgt.GetEGStatementReportID(), Rec."No.");
                // end;
            }
        }
    }
    // trigger OnOpenPage()
    // begin
    //     EGFastTabVisible := CMSetupMgt.IsCMEmptyGoodLimEnhancementEnabled();
    //     EnableShowAutosuggestRetEntry();
    // end;

    local procedure EnableShowAutosuggestRetEntry()
    var
        ContainerMgtSetup: Record "CM Container Mgt Setup APS";
    begin
        if not ContainerMgtSetup.Get() then
            ContainerMgtSetup.Init();
        ShowAutosuggestRetEntryDefaultYes := ContainerMgtSetup."Autosuggest Ret. Entry (sales)";
        ShowAutosuggestRetEntryDefaultNo := not ShowAutosuggestRetEntryDefaultYes;
    end;

    var
        //CMSetupMgt: Codeunit "CM Setup Mgt APS";
        EGFastTabVisible: Boolean;
        ShowAutosuggestRetEntryDefaultNo: Boolean;
        ShowAutosuggestRetEntryDefaultYes: Boolean;
}
