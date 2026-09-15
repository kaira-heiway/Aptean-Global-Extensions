page 62321 "FA Template List APS"
{
    Caption = 'FA Template List';
    PageType = List;
    SourceTable = "FA Template APS";
    UsageCategory = Administration;
    ApplicationArea = FixedAssets;
    //CardPageId = "FA Template Card APS";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the FA template number.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the description of the FA template.';
                }
                field("FA Class Code"; Rec."FA Class Code")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the fixed asset class.';
                    trigger OnValidate()
                    begin
                        if Rec."FA Class Code" = '' then
                            Rec.Validate("FA Subclass Code", '');
                    end;
                }
                field("FA Subclass Code"; Rec."FA Subclass Code")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the fixed asset subclass.';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        FASubclass: Record "FA Subclass";
                    begin
                        if Rec."FA Class Code" <> '' then
                            FASubclass.SetFilter("FA Class Code", '%1|%2', '', Rec."FA Class Code");

                        if FASubclass.Get(Rec."FA Subclass Code") then;
                        if PAGE.RunModal(0, FASubclass) = ACTION::LookupOK then begin
                            Text := FASubclass.Code;
                            exit(true);
                        end;
                    end;
                }

                field("FA Location Code"; Rec."FA Location Code")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the FA location code.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the vendor number.';
                }
                field("Responsible Employee"; Rec."Responsible Employee")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the responsible employee.';
                }
                field("FA Posting Group"; Rec."FA Posting Group")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the FA posting group.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = FixedAssets;
                    ToolTip = 'Specifies the number series used when creating fixed assets from this template.';
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NewTemplate)
            {
                ApplicationArea = FixedAssets;
                Caption = 'New';
                Image = New;
                //RunObject = page "FA Template Card APS";
                RunPageMode = Create;
                ToolTip = 'Create a new FA template.';
            }
        }
        area(Promoted)
        {
            actionref(NewTemplate_Promoted; NewTemplate) { }
        }
    }
}