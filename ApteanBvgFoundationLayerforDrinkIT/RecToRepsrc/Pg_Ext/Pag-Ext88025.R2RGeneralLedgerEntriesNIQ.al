pageextension 88025 "R2R General Ledger Entries NIQ" extends "General Ledger Entries"
{
    layout
    {
        addafter(Description)
        {
            field("R2R Description 2 NIQ"; Rec."R2R Description 2 NIQ")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the description2 of the entry.';
                Visible = Description2Visible;
            }
            field("R2R Reverse Bal. Date NIQ"; Rec."R2R Reverse Bal. Date NIQ")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the period end date on which a reverse balance posting was made for a customer, vendor or account group.';
                Visible = false;
            }
            field("R2R Add Reporting Dim 1 NIQ"; Rec."R2R Add Reporting Dim 1 NIQ")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Code for the Add. Reporting Dimension 1, which is one of the dimension codes that you can set up in the Record To Report Extensions window.';
            }
            field("R2R Add Reporting Dim 2 NIQ"; Rec."R2R Add Reporting Dim 2 NIQ")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Code for the Add. Reporting Dimension 2, which is one of the dimension codes that you can set up in the Record To Report Extensions window.';
            }
        }
        addlast(Control1)
        {
            field("R2R Prior-Year Period NIQ"; Rec."R2R Prior-Year Period NIQ")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the period of the prior year closing, often referred to as ''13th month'' or ''14th month''.';
                Visible = PriorYearEnabled;
            }
        }
        addbefore("Entry No.")
        {
            field("R2R Reclassified NIQ"; Rec."R2R Reclassified NIQ")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies that the entry is corrected by the reclassify (general/customer/vendor entries) function.';
                Visible = false;
            }
        }
    }

    actions
    {
        modify(ChangeDimensions)
        {
            Visible = DimCorrAllowed;
        }
        addafter(ReverseTransaction)
        {
            action("R2R Modify Description 2 NIQ")
            {
                ApplicationArea = All;
                Caption = 'Modify Description 2';
                Image = Change;
                ToolTip = 'Change Description 2 of selected entry';
                Visible = Description2Visible;
                // trigger OnAction()
                // var
                //     R2RCommonFunctions: Codeunit "R2R Common Functions NIQ";
                // begin
                //     R2RCommonFunctions.ModifyGLEntriesDescription(Rec);
                // end;
            }
        }
        addlast("F&unctions")
        {
            action("R2R ReclassGLEntries NIQ")
            {
                ApplicationArea = All;
                Caption = 'Reclassify G/L Entries';
                Image = ChangeBatch;
                ToolTip = 'Reclassify selected general ledger entries to another G/L account. For selected entries journal lines will be created in the general journal template and batch name selected in the record to report extension setup, from which entries can be reposted to another G/L account.';
                Visible = ReclassGLEntriesVisible;
                // trigger OnAction()
                // var
                //     GLEntry: Record "G/L Entry";
                //     R2RReclassifyGLEntriesNIQ: Report "R2R Reclassify G/L Entries NIQ";
                // begin
                //     CurrPage.SetSelectionFilter(GLEntry);
                //     R2RReclassifyGLEntriesNIQ.SetParams(GLEntry);
                //     R2RReclassifyGLEntriesNIQ.RunModal();
                // end;
            }
            action("R2R ReclassGLFAEntries APT NIQ")
            {
                ApplicationArea = All;
                Caption = 'Reclassify G/L to FA Entries';
                Image = FixedAssetLedger;
                ToolTip = 'Reclassify selected general ledger entries to a Fixed Asset account. For selected entries journal lines will be created in the general journal template and batch name selected in the record to report extension setup, from which entries can be reposted from G/L entries to a Fixed Asset.';
                // trigger OnAction()
                // var
                //     GLEntry: Record "G/L Entry";
                //     R2RReclassifyGLFAEntriesNIQ: Report "R2R Reclassify GL FA Entr. APT";
                // begin
                //     CurrPage.SetSelectionFilter(GLEntry);
                //     R2RReclassifyGLFAEntriesNIQ.SetParams(GLEntry);
                //     R2RReclassifyGLFAEntriesNIQ.RunModal();
                // end;
            }
        }
        addlast(navigation)
        {
            action("R2R Reclassify Jnl. NIQ")
            {
                ApplicationArea = All;
                Caption = 'Reclassify Journal';
                Image = ChangeBatch;
                ToolTip = 'Open the general journal that is setup to reclassify general ledger entries.';
                Visible = ReclassGLEntriesVisible;
                // trigger OnAction()
                // var
                //     R2RCommonFunctionsNIQ: Codeunit "R2R Common Functions NIQ";
                // begin
                //     R2RCommonFunctionsNIQ.ShowGLReclassJnl();
                // end;
            }
        }
    }

    var
        Description2Visible: Boolean;
        DimCorrAllowed: Boolean;
        PriorYearEnabled: Boolean;
        ReclassGLEntriesVisible: Boolean;

    trigger OnOpenPage()
    begin
        UpdateControls();
    end;

    local procedure UpdateControls()
    var
        Setup: Record "R2R Extension Setup NIQ";
        UserSetup: Record "User Setup";
    begin
        if Setup.Get() then;
        PriorYearEnabled := Setup.IsPriorPeriodEnabled(false);
        Description2Visible := Setup."Enable Desc2 in GLEntries";
        ReclassGLEntriesVisible := Setup."Enable Reclass. Ledger Entries";
        DimCorrAllowed := false;
        if Setup."R2R Enable Dim. Enh. NIQ" then
            if UserSetup.Get(UserId()) then
                DimCorrAllowed := UserSetup."R2R Allow Dim. Correction NIQ";
    end;
}
