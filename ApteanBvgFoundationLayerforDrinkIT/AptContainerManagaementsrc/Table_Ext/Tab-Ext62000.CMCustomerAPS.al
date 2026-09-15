tableextension 62000 "CM Customer APS" extends Customer
{
    fields
    {
        modify("Credit Limit (LCY)")
        {
            trigger OnAfterValidate()
            begin
                if Rec."Credit Limit (LCY)" <> 0 then
                    Rec.Validate("CM Credit Limit (Yes/No) APS", true)
                else
                    if Rec."CM Credit Limit (Yes/No) APS" then
                        Rec.Validate("CM Credit Limit (Yes/No) APS", false);
            end;
        }
        field(62050; "CM Empty Good Limit (LCY) APS"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit (LCY)';
            trigger OnValidate()
            begin
                if Rec."CM Empty Good Limit (LCY) APS" <> 0 then
                    Rec.Validate("CM EG Limit (Yes/No) APS", true)
                else
                    if Rec."CM EG Limit (Yes/No) APS" then
                        Rec.Validate("CM EG Limit (Yes/No) APS", false);
            end;
        }
        field(62051; "CM Excl. Cr. Limit Filter APS"; Boolean)
        {
            Caption = 'Exclude From Credit Limit Check Filter';
            FieldClass = FlowFilter;
        }
        field(62052; "CM Balance (LCY) Cr. Limit APS"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("No."),
                                                                                 "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                "Initial Entry Due Date" = field("CM EG Date Filter APS"),
                                                                                 "Currency Code" = field("Currency Filter"),
                                                                                 "CM Excl. Cred. Lim. Warn APS" = field("CM Excl. Cr. Limit Filter APS"),
                                                                                 "CM Incl. EG. Lim. Warn APS" = field("CM Incl. EG Limit Filter APS")));
            Caption = 'Balance (LCY) - Credit Limit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62053; "CM Outst. Ord. (LCY) CrLim APS"; Decimal)
        {
            AccessByPermission = tabledata "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = sum("Sales Line"."Outstanding Amount (LCY)" where("Document Type" = const(Order),
                                                                             "Bill-to Customer No." = field("No."),
                                                                             "Shortcut Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                                             "Shortcut Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                                             "Currency Code" = field("Currency Filter"),
                                                                             "CM Excl. Cred. Lim. Warn APS" = field("CM Excl. Cr. Limit Filter APS"),
                                                                             "CM Incl. EGs. Lim. Warn APS" = field("CM Incl. EGs Limit Filter APS"),
                                                                             "CM Document EG LimitStatus APS" = field("CM Doc. EG Status Filter APS")));
            Caption = 'Outstanding Orders (LCY) - Credit Limit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62054; "CM ShipNotInvd (LCY) CrLim APS"; Decimal)
        {
            AccessByPermission = tabledata "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = sum("Sales Line"."Shipped Not Invoiced (LCY)" where("Document Type" = const(Order),
                                                                               "Bill-to Customer No." = field("No."),
                                                                               "Shortcut Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                                               "Currency Code" = field("Currency Filter"),
                                                                               "CM Excl. Cred. Lim. Warn APS" = field("CM Excl. Cr. Limit Filter APS"),
                                                                               "CM Incl. EGs. Lim. Warn APS" = field("CM Incl. EGs Limit Filter APS")));
            Caption = 'Shipped Not Invoiced (LCY) - Credit Limit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62055; "CM Outst. Inv. (LCY) CrLim APS"; Decimal)
        {
            AccessByPermission = tabledata "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = sum("Sales Line"."Outstanding Amount (LCY)" where("Document Type" = const(Invoice),
                                                                             "Bill-to Customer No." = field("No."),
                                                                             "Shortcut Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                                             "Shortcut Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                                             "Currency Code" = field("Currency Filter"),
                                                                               "CM Excl. Cred. Lim. Warn APS" = field("CM Excl. Cr. Limit Filter APS")));
            Caption = 'Outstanding Invoices (LCY) - Credit Limit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62056; "CM Incl. EG Limit Filter APS"; Enum "CM ExclEGLimitCheckOptions APS")
        {
            Caption = 'Include In Empty Good Limit Check Filter';
            FieldClass = FlowFilter;
        }
        field(62057; "CM Autosuggest Ret. Ent. APS"; Enum "CM AutoSuggestRetOrderEG APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Autosuggest return entry (sales)';
        }
        field(62058; "CM Incl. EGs Limit Filter APS"; Boolean)
        {
            Caption = 'Include In Empty Good Limit Check Filter (Sales)';
            FieldClass = FlowFilter;
        }
        field(62059; "CM Doc. EG Status Filter APS"; Enum "CM EmptyGoodLimitStatus APS")
        {
            Caption = 'Document Empty Good Limit Status Filter';
            FieldClass = FlowFilter;
        }
        field(62060; "CM EG Date Filter APS"; Date)
        {
            Caption = 'EG Date Filter';
            FieldClass = FlowFilter;
        }
        field(62065; "CM RetRcdNotInvd LCY CrLim APS"; Decimal)
        {
            AccessByPermission = tabledata "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = sum("Sales Line"."Return Rcd. Not Invd. (LCY)" where("Document Type" = const("Return Order"),
                                                                               "Bill-to Customer No." = field("No."),
                                                                               "Shortcut Dimension 1 Code" = field("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = field("Global Dimension 2 Filter"),
                                                                               "Currency Code" = field("Currency Filter"),
                                                                               "CM Excl. Cred. Lim. Warn APS" = field("CM Excl. Cr. Limit Filter APS"),
                                                                               "CM Incl. EGs. Lim. Warn APS" = field("CM Incl. EGs Limit Filter APS")));
            Caption = 'Return Received Not Invoiced (LCY) - Credit Limit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62066; "CM Credit Limit (Yes/No) APS"; Boolean)
        {
            Caption = 'Credit Limit';
            trigger OnValidate()
            begin
                if (not Rec."CM Credit Limit (Yes/No) APS") then
                    if Rec."Credit Limit (LCY)" <> 0 then
                        Rec.Validate("Credit Limit (LCY)", 0);
                if Rec."CM Credit Limit (Yes/No) APS" then
                    if (Rec."Credit Limit (LCY)" = 0) then
                        Rec.Validate("Credit Limit (LCY)", 0.01)
            end;
        }
        field(62067; "CM EG Limit (Yes/No) APS"; Boolean)
        {
            Caption = 'Empty Good Limit';
            trigger OnValidate()
            begin
                if (not Rec."CM EG Limit (Yes/No) APS") then
                    if Rec."CM Empty Good Limit (LCY) APS" <> 0 then
                        Rec.Validate("CM Empty Good Limit (LCY) APS", 0);
                if Rec."CM EG Limit (Yes/No) APS" then
                    if (Rec."CM Empty Good Limit (LCY) APS" = 0) then
                        Rec.Validate("CM Empty Good Limit (LCY) APS", 0.01)
            end;
        }
    }
}
