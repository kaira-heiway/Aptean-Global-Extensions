table 88006 "R2R Extension Setup NIQ"
{
    Caption = 'Record To Report Extension Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(2; "Bad Debt Usage Source Code"; Code[10])
        {
            Caption = 'Bad Debt Usage Source Code';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
        }
        field(3; "Automatic BDP to G/L"; Boolean)
        {
            Caption = 'Bad Debt Provision to G/L';
            DataClassification = CustomerContent;
        }
        field(4; "Bad Debt Provision Dim Code"; Code[20])
        {
            Caption = 'Bad Debt Provision Dimension Code';
            DataClassification = CustomerContent;
        }
        field(5; "Bad Debt Prov. Dim. Increase"; Code[20])
        {
            Caption = 'Bad Debt prov. Dim. (Increase)';
            DataClassification = CustomerContent;
            TableRelation = "R2R Bad Prov. Entry Code NIQ".Code;
        }
        field(6; "Bad Debt Prov. Dim. Decrease"; Code[20])
        {
            Caption = 'Bad Debt prov. Dim. (Decrease)';
            DataClassification = CustomerContent;
            TableRelation = "R2R Bad Prov. Entry Code NIQ".Code;
        }
        field(7; "Bad Debt prov. Dim. Usage"; Code[20])
        {
            Caption = 'Bad Debt prov. Dim. (Usage)';
            DataClassification = CustomerContent;
            TableRelation = "R2R Bad Prov. Entry Code NIQ".Code;
        }
        field(8; "Bad Debt Usage Jnl Template"; Code[10])
        {
            Caption = 'Write Off Gen. Jnl Template';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Journal Template";
        }
        field(9; "Bad Debt Usage Jnl Batch Name"; Code[10])
        {
            Caption = 'Write Off Gen. Journal Batch Name';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Bad Debt Usage Jnl Template"));
        }
        field(10; "Bad Debt Usage No. Series"; Code[20])
        {
            Caption = 'Bad Debt usage No. Series Code';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(11; "En. Item Val. Enhancements"; Boolean)
        {
            Caption = 'Enable Item Valuation Enhancements';
            DataClassification = CustomerContent;
        }
        field(12; "Enable Bal. Filt. Cust/Vend."; Boolean)
        {
            Caption = 'Enable Advanced Customer and Vendor Reporting';
            DataClassification = CustomerContent;
        }
        field(13; "Enable Fixed Asset Extension"; Boolean)
        {
            Caption = 'Enable Fixed Asset Extension';
            DataClassification = CustomerContent;
        }
        field(14; "Enable Contract Mgt. Enhancem."; Boolean)
        {
            Caption = 'Enable Contract Management Enhancements';
            DataClassification = CustomerContent;
        }
        field(15; "Enable Bad Debt Provision"; Boolean)
        {
            Caption = 'Enable Bad Debt Provision';
            DataClassification = CustomerContent;
        }
        field(16; "Loan Statement Cust. Report"; Integer)
        {
            BlankZero = true;
            Caption = 'Loan Statement (Customers) Report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(17; "Loan Statement Vend. Report"; Integer)
        {
            BlankZero = true;
            Caption = 'Loan Statement (Vendors) Report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(18; "Aged Acc. Rec. by Posting Grp"; Integer)
        {
            BlankZero = true;
            Caption = 'Aged Acc. Rec. by Posting group Report';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(19; "Aged Acc. Pay. by Posting Grp"; Integer)
        {
            BlankZero = true;
            Caption = 'Aged Acc. Pay. by Posting Group Report';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(20; "Enable Send IC Doc. per Doc."; Boolean)
        {
            Caption = 'Enable Send IC Document per Document';
            DataClassification = CustomerContent;
        }
        field(21; "Enable Desc2 in GLEntries"; Boolean)
        {
            Caption = 'Enable Description2 in General Ledger Entries';
            DataClassification = CustomerContent;
        }
        field(22; "Enable Reclass. Ledger Entries"; Boolean)
        {
            Caption = 'Enable Reclassify GL/Cust./Vend. Ledger Entries';
        }
        field(23; "G/L Reclass. Jnl. Template"; Code[10])
        {
            Caption = 'G/L Reclassification Gen. Jnl. Template';
            TableRelation = "Gen. Journal Template".Name;
            trigger OnValidate()
            begin
                if Rec."G/L Reclass. Jnl. Template" <> xRec."G/L Reclass. Jnl. Template" then
                    "G/L Reclass. Jnl. Batch" := '';
            end;
        }
        field(24; "G/L Reclass. Jnl. Batch"; Code[10])
        {
            Caption = 'G/L Reclassification Gen. Jnl. Batch Name';
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("G/L Reclass. Jnl. Template"));
        }
        field(25; "Enable Cust/Vendor with sign"; Boolean)
        {
            Caption = 'Enable Customer/Vendor Application with same sign';
            DataClassification = CustomerContent;
        }
        field(26; "Enable Rev Balance Adjustments"; Boolean)
        {
            Caption = 'Enable Reverse Balance Adjustments';
            DataClassification = CustomerContent;
        }
        field(27; "Create Loan Interest Report"; Integer)
        {
            BlankZero = true;
            Caption = 'Create Loan Interest Invoices Report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(28; "Add. Rep. Dimension Code1"; Code[20])
        {
            Caption = 'Add. Rep. Dimension Code1';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
        }
        field(29; "Add. Rep. Dimension Code2"; Code[20])
        {
            Caption = 'Add. Rep. Dimension Code1';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
        }
        field(30; "Enable Prior-Year Period"; Boolean)
        {
            Caption = 'Enable Advanced Financial Reporting';
            DataClassification = CustomerContent;
        }
        field(31; "Enable Tax Enhancements"; Boolean)
        {
            Caption = 'Enable Tax Enhancements';
            DataClassification = CustomerContent;
        }
        field(32; "Tax Destruction (beer) Report"; Integer)
        {
            Caption = 'Tax Destruction (beer) Report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(33; "Tax Destruction Volume (Base)"; Enum "R2R Tax Destruction Volume NIQ")
        {
            Caption = 'Tax Destruction Volume (Base)';
            DataClassification = CustomerContent;
        }
        field(34; "Tax Dest Strength (Base)"; Enum "R2R Tax Dest Strength NIQ")
        {
            Caption = 'Tax Destruction Strength (Base)';
            DataClassification = CustomerContent;
        }
        field(35; "Enable Reminder Enhancements"; Boolean)
        {
            Caption = 'Enable Reminder Enhancements';
            DataClassification = CustomerContent;
        }
        field(36; "Tax declaration (beer) Report"; Integer)
        {
            Caption = 'Tax declaration (beer) Report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(37; "Tax Warehouse Book Report"; Integer)
        {
            Caption = 'Tax Warehouse book for beer Report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(38; "Tax Code for Beer"; Code[20])
        {
            Caption = 'Tax Code for Beer';
            DataClassification = CustomerContent;
            // TableRelation = Tax102FDW.Code;
        }
        field(39; "Company Name (Tax)"; Text[100])
        {
            Caption = 'Company Name (Tax)';
            DataClassification = CustomerContent;
        }
        field(40; "Company Street (Tax)"; Text[100])
        {
            Caption = 'Company Street (Tax)';
            DataClassification = CustomerContent;
        }
        field(41; "Company House No. (Tax)"; Text[100])
        {
            Caption = 'Company House No. (Tax)';
            DataClassification = CustomerContent;
        }
        field(42; "Company Address2 (Tax)"; Text[100])
        {
            Caption = 'Company Address2 (Tax)';
            DataClassification = CustomerContent;
        }
        field(43; "Company Post Code (Tax)"; Code[20])
        {
            Caption = 'Company Post Code (Tax)';
            DataClassification = CustomerContent;
        }
        field(44; "Company City (Tax)"; Text[30])
        {
            Caption = 'Company City (Tax)';
            DataClassification = CustomerContent;
        }
        field(45; "Company City Area (Tax)"; Text[30])
        {
            Caption = 'Company City Area (Tax)';
            DataClassification = CustomerContent;
        }
        field(46; "Company Country (Tax)"; Code[10])
        {
            Caption = 'Company Country (Tax)';
            DataClassification = CustomerContent;
        }
        field(47; "Company Legal Type (Tax)"; Text[100])
        {
            Caption = 'Company Legal Type (Tax)';
            DataClassification = CustomerContent;
        }
        field(48; "Company Founded On (Tax)"; Text[100])
        {
            Caption = 'Company Founded On (Tax)';
            DataClassification = CustomerContent;
        }
        field(49; "Inv. Bal. Qty. and Vol. Report"; Integer)
        {
            Caption = 'Inventory Balance in Qty. and Volume report';
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Report));
        }
        field(50; "Cust. Reclass. Jnl. Template"; Code[10])
        {
            Caption = 'Cust. Reclassification Gen. Jnl. Template';
            TableRelation = "Gen. Journal Template".Name;
            trigger OnValidate()
            begin
                if Rec."Cust. Reclass. Jnl. Template" <> xRec."Cust. Reclass. Jnl. Template" then
                    "Cust. Reclass. Jnl. Batch" := '';
            end;
        }
        field(51; "Loan Statement Footer Text1"; Text[100])
        {
            Caption = 'Loan Statement Footer Text1';
            DataClassification = CustomerContent;
        }
        field(52; "Loan Statement Footer Text2"; Text[100])
        {
            Caption = 'Loan Statement Footer Text2';
            DataClassification = CustomerContent;
        }
        field(53; "Tax Office (Tax Decl.)"; Code[20])
        {
            Caption = 'Tax Office (Tax Decl.)';
            DataClassification = CustomerContent;
            // TableRelation = TaxOffice102FDW."No.";
            // ValidateTableRelation = false;
        }
        field(54; "Tax Responsible Contact"; Code[20])
        {
            Caption = 'Tax Responsible Contact (Tax Decl.)';
            DataClassification = CustomerContent;
            TableRelation = Contact."No.";
        }
        field(55; "Show Desc & Desc2 in GL"; Boolean)
        {
            Caption = 'Show Description,Description2 and Reason Code in GL entries for all line types (Purchase)';
            DataClassification = CustomerContent;
        }
        field(56; "Get Desc2 from Purch.Rcpt.Line"; Boolean)
        {
            Caption = 'Get Description2 from Purchase Receipt Line';
            DataClassification = CustomerContent;
        }
        field(57; "Enable TaxUnitAmounts on Item"; Boolean)
        {
            Caption = 'Enable Tax Unit Amount 1 and 2 on Item';
            DataClassification = CustomerContent;
        }
        field(58; "Enable Treasury Enhancements"; Boolean)
        {
            Caption = 'Enable Treasury Enhancements';
            DataClassification = CustomerContent;
        }
        field(59; "Enable Intercomp Enhancements"; Boolean)
        {
            Caption = 'Enable Intercompany Enhancements';
            DataClassification = CustomerContent;
        }
        field(60; "Cust. Reclass. Jnl. Batch"; Code[10])
        {
            Caption = 'Cust. Reclassification Gen. Jnl. Batch Name';
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Cust. Reclass. Jnl. Template"));
        }
        field(61; "Enable IC Partner Price"; Boolean)
        {
            Caption = 'Enable IC Partner Price';
            DataClassification = CustomerContent;
        }
        field(62; "Enable EmptyGoodOrder tracking"; Boolean)
        {
            Caption = 'Enable Empty Good Order tracking';
            DataClassification = CustomerContent;
        }
        field(63; "EGC CustPostingGroup Filter"; Text[250])
        {
            Caption = 'EGC Customer Posting Group Filter';
            DataClassification = CustomerContent;
        }
        field(64; "EGC VendorPostingGroup Filter"; Text[250])
        {
            Caption = 'EGC Vendor Posting Group Filter';
            DataClassification = CustomerContent;
        }
        field(65; "Enable Auto CV Appl. by order"; Boolean)
        {
            Caption = 'Enable Automatic CV Application by order';
            DataClassification = CustomerContent;
        }
        field(66; "Enable Update Amt to Tax Line"; Boolean)
        {
            Caption = 'Enable Update Tax charge amount back to Doc. Tax Line';
            DataClassification = CustomerContent;
        }
        field(67; "Show Desc & Desc2 in GL(Sales)"; Boolean)
        {
            Caption = 'Show Description,Description2 and Reason Code in GL entries for all line types (Sales)';
            DataClassification = CustomerContent;
        }
        field(68; "Enable TransferTax SalesPrice"; Boolean)
        {
            Caption = 'Enable Transfer Tax based on sales price';
            DataClassification = CustomerContent;
        }
        field(70; "Vend. Reclass. Jnl. Template"; Code[10])
        {
            Caption = 'Vend. Reclassification Gen. Jnl. Template';
            TableRelation = "Gen. Journal Template".Name;
            trigger OnValidate()
            begin
                if Rec."Vend. Reclass. Jnl. Template" <> xRec."Vend. Reclass. Jnl. Template" then
                    "Vend. Reclass. Jnl. Batch" := '';
            end;
        }
        field(71; "Registration Court"; Text[100]) { Caption = 'Registration Court'; }
        field(72; "Personally liable Partner"; Text[100]) { Caption = 'Personally liable Partner'; }
        field(80; "Vend. Reclass. Jnl. Batch"; Code[10])
        {
            Caption = 'Vend. Reclassification Gen. Jnl. Batch Name';
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Vend. Reclass. Jnl. Template"));
        }
        field(90; "Enable Invoicing By Inv. Group"; Boolean)
        {
            Caption = 'Enable Invoicing Enhancements';
        }
        field(91; "Split invoice groups"; Enum "R2R Split Inv. Groups By NIQ")
        {
            Caption = 'Split invoice groups';
        }
        field(92; "Apply By Posting Group Filter"; Boolean)
        {
            Caption = 'Apply by Posting Group Filter';
        }
        field(100; "En. Dflt R.Code on Mast. Data"; Boolean)
        {
            Caption = 'Enable Default Reason Codes on Master Data';
            DataClassification = CustomerContent;
        }
        field(105; "Enable Sales Doc. Print. Ext."; Boolean)
        {
            Caption = 'Enable Document Printing Extension (Sales)';
            DataClassification = CustomerContent;
        }
        field(110; "Enable Empty Goods Extensions"; Boolean)
        {
            Caption = 'Enable Empty Goods Extensions';
            DataClassification = CustomerContent;
        }
        field(120; "G/L FA Reclass. Jnl. Template"; Code[10])
        {
            Caption = 'G/L Fixed Asstes Reclassification Gen. Jnl. Template';
            TableRelation = "Gen. Journal Template".Name where(Type = const("Gen. Journal Template Type"::Assets));
            trigger OnValidate()
            begin
                if Rec."G/L FA Reclass. Jnl. Template" <> xRec."G/L FA Reclass. Jnl. Template" then
                    "G/L FA Reclass. Jnl. Batch" := '';
            end;
        }
        field(121; "G/L FA Reclass. Jnl. Batch"; Code[10])
        {
            Caption = 'G/L Fixed Assets Reclassification Gen. Jnl. Batch Name';
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("G/L FA Reclass. Jnl. Template"));
        }
        field(122; "Enable Adv. Employee Reporting"; Boolean)
        {
            Caption = 'Enable Advance Employee Reporting';
            DataClassification = CustomerContent;
        }
        field(130; "Enable SP Conditions Enh."; Boolean)
        {
            Caption = 'Enable SP Conditions Enhancements';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies that periodic condition ledger entry amounts can be checked and adjusted.';
        }
        field(131; "R2R Enable Dim. Enh. NIQ"; Boolean)
        {
            Caption = 'Enable Dimension Enhancements';
            DataClassification = CustomerContent;
        }
        field(132; "R2R Enable ILE Dim. Corr. NIQ"; Boolean)
        {
            Caption = 'Enable Dimension Correction (Item Ledger Entry)';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "R2R Enable ILE Dim. Corr. NIQ" then
                    TestField("R2R Enable Dim. Enh. NIQ");
            end;
        }
        field(133; "R2R Sales Dims From NIQ"; Option)
        {
            Caption = 'Sales Dimensions From';
            DataClassification = CustomerContent;
            OptionCaption = 'Bill-to Customer,Sell-to Customer';
            OptionMembers = "Bill-to Customer","Sell-to Customer";
        }
        field(134; "R2R Purch. Dims From NIQ"; Option)
        {
            Caption = 'Purchase Dimensions From';
            DataClassification = CustomerContent;
            OptionCaption = 'Pay-to Vendor,Buy-from Vendor';
            OptionMembers = "Pay-to Vendor","Buy-from Vendor";
        }
        field(135; "R2R Salesperson From NIQ"; Option)
        {
            Caption = 'Salesperson From';
            DataClassification = CustomerContent;
            OptionCaption = 'Bill-to Customer,Sell-to Customer';
            OptionMembers = "Bill-to Customer","Sell-to Customer";
        }
        field(136; "R2R Purchaser From NIQ"; Option)
        {
            Caption = 'Purchaser From';
            DataClassification = CustomerContent;
            OptionCaption = 'Pay-to Vendor,Buy-from Vendor';
            OptionMembers = "Pay-to Vendor","Buy-from Vendor";
        }
        field(137; "R2R Enable Auto Dim. Cust. NIQ"; Boolean)
        {
            Caption = 'Enable Auto Dimension Customer';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "R2R Enable Auto Dim. Cust. NIQ" then
                    TestField("R2R Enable Dim. Enh. NIQ");
                if not "R2R Enable Auto Dim. Cust. NIQ" then
                    "R2R Auto Dim. Code Cust. NIQ" := '';
            end;
        }
        field(138; "R2R Auto Dim. Code Cust. NIQ"; Code[20])
        {
            Caption = 'Auto Dimension Code (Customer)';
            DataClassification = CustomerContent;
            TableRelation = Dimension;
        }
        field(139; "R2R Enable Auto Dim. Vend. NIQ"; Boolean)
        {
            Caption = 'Enable Auto Dimension Vendor';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "R2R Enable Auto Dim. Vend. NIQ" then
                    TestField("R2R Enable Dim. Enh. NIQ");
                if not "R2R Enable Auto Dim. Vend. NIQ" then
                    "R2R Auto Dim. Code Vend. NIQ" := '';
            end;
        }
        field(140; "R2R Auto Dim. Code Vend. NIQ"; Code[20])
        {
            Caption = 'Auto Dimension Code (Vendor)';
            DataClassification = CustomerContent;
            TableRelation = Dimension;
        }
        field(141; "R2R Enable Auto Dim. Item NIQ"; Boolean)
        {
            Caption = 'Enable Auto Dimension Item';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "R2R Enable Auto Dim. Item NIQ" then
                    TestField("R2R Enable Dim. Enh. NIQ");
                if not "R2R Enable Auto Dim. Item NIQ" then
                    "R2R Auto Dim. Code Item NIQ" := '';
            end;
        }
        field(142; "R2R Auto Dim. Code Item NIQ"; Code[20])
        {
            Caption = 'Auto Dimension Code (Item)';
            DataClassification = CustomerContent;
            TableRelation = Dimension;
        }
        field(143; "Enable Attribute Enhancements"; Boolean)
        {
            Caption = 'Enable Attribute Enhancements';
            ToolTip = 'Specifies that you can define up to 10 global attributes for customer, vendor and item. Global attributes can be filled in on the card, synching with the tables behind.';
        }
        field(144; "R2R Correction Dim. Code 1 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 1';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 1 NIQ");
            end;
        }
        field(145; "R2R Correction Dim. Code 2 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 2';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 2 NIQ");
            end;
        }
        field(146; "R2R Correction Dim. Code 3 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 3';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 3 NIQ");
            end;
        }
        field(147; "R2R Correction Dim. Code 4 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 4';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 4 NIQ");
            end;
        }
        field(148; "R2R Correction Dim. Code 5 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 5';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 5 NIQ");
            end;
        }
        field(149; "R2R Correction Dim. Code 6 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 6';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 6 NIQ");
            end;
        }
        field(150; "R2R Correction Dim. Code 7 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 7';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 7 NIQ");
            end;
        }
        field(151; "R2R Correction Dim. Code 8 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 8';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 8 NIQ");
            end;
        }
        field(152; "R2R Correction Dim. Code 9 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 9';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correction Dim. Code 9 NIQ");
            end;
        }
        field(153; "R2R Correct Dim. Code 10 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 10';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correct Dim. Code 10 NIQ");
            end;
        }
        field(154; "R2R Correct Dim. Code 11 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 11';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correct Dim. Code 11 NIQ");
            end;
        }
        field(155; "R2R Correct Dim. Code 12 NIQ"; Code[20])
        {
            Caption = 'Correction Dimension Code 12';
            DataClassification = CustomerContent;
            TableRelation = Dimension.Code;
            trigger OnValidate()
            begin
                CheckDimCodeNotReserved(Rec."R2R Correct Dim. Code 12 NIQ");
            end;
        }
        field(156; "R2R En. Dims for R.Code NIQ"; Boolean)
        {
            Caption = 'Enable Dimensions for Reason Codes';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies whether you can define default dimensions for reason codes, to be copied to sales, purchase, transfer documents, general journals and item journals.';
            trigger OnValidate()
            begin
                if not "R2R En. Dims for R.Code NIQ" then begin
                    "R2R Dflt R.Code Cst. From NIQ" := "R2R Dflt R.Code Cst. From NIQ"::"Sell-to Customer";
                    "R2R Dflt R.Code Vnd. From NIQ" := "R2R Dflt R.Code Vnd. From NIQ"::"Buy-from Vendor";
                end;
            end;
        }
        field(157; "R2R Dflt R.Code Cst. From NIQ"; Option)
        {
            Caption = 'Default Reason Code (Customer) from';
            DataClassification = CustomerContent;
            OptionCaption = 'Sell-to Customer,Bill-to Customer';
            OptionMembers = "Sell-to Customer","Bill-to Customer";
            ToolTip = 'Specifies whether the reason code in a sales document is copied from the sell-to or the bill-to customer. Only applies when Enable Default Reason Codes on Master Data is set to Yes.';
        }
        field(158; "R2R Dflt R.Code Vnd. From NIQ"; Option)
        {
            Caption = 'Default Reason Code (Vendor) from';
            DataClassification = CustomerContent;
            OptionCaption = 'Buy-from Vendor,Pay-to Vendor';
            OptionMembers = "Buy-from Vendor","Pay-to Vendor";
            ToolTip = 'Specifies whether the reason code in a purchase document is copied from the buy-from or the pay-to vendor. Only applies when Enable Default Reason Codes on Master Data is set to Yes.';
        }
        field(159; "R2R En. EG Bal. Factbox NIQ"; Boolean)
        {
            Caption = 'Enable EG Balance Factbox for Bill-to/Pay-to';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies that an Empty Goods Balance factbox is available on the customer and vendor card and list pages, filtered by the Bill-to Customer or Pay-to Vendor number.';
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    local procedure CheckDimCodeNotReserved(DimCode: Code[20])
    var
        GLSetup: Record "General Ledger Setup";
        DimAlreadyUsedErr: Label 'Dimension code %1 is already used as a shortcut or reserved dimension and cannot be selected here.', Comment = '%1 = Dimension Code';
    begin
        if DimCode = '' then
            exit;
        GLSetup.SetLoadFields(
            GLSetup."Shortcut Dimension 1 Code", GLSetup."Shortcut Dimension 2 Code",
            GLSetup."Shortcut Dimension 3 Code", GLSetup."Shortcut Dimension 4 Code",
            GLSetup."Shortcut Dimension 5 Code", GLSetup."Shortcut Dimension 6 Code",
            GLSetup."Shortcut Dimension 7 Code", GLSetup."Shortcut Dimension 8 Code");
        GLSetup.Get();
        if DimCode in [GLSetup."Shortcut Dimension 1 Code", GLSetup."Shortcut Dimension 2 Code",
                       GLSetup."Shortcut Dimension 3 Code", GLSetup."Shortcut Dimension 4 Code",
                       GLSetup."Shortcut Dimension 5 Code", GLSetup."Shortcut Dimension 6 Code",
                       GLSetup."Shortcut Dimension 7 Code", GLSetup."Shortcut Dimension 8 Code"
                       ] then
            Error(DimAlreadyUsedErr, DimCode);
    end;

    var
        MustBeEnabledErr: Label '%1 must be set to Yes in %2', Comment = '%1 field name, %2 table name';

    internal procedure IsBadDebtEnabled(ShowError: Boolean): Boolean
    begin
        if IsNullGuid(SystemId) then
            if not Rec.Get() then
                Rec.Init();
        if not ShowError then
            exit(Rec."Enable Bad Debt Provision");
        if Rec."Enable Bad Debt Provision" then
            exit(true);
        Error(MustBeEnabledErr, Rec.FieldCaption("Enable Bad Debt Provision"), Rec.TableCaption());
    end;

    internal procedure IsPriorPeriodEnabled(ShowError: Boolean): Boolean
    begin
        if IsNullGuid(SystemId) then
            if not Rec.Get() then
                Rec.Init();
        if not ShowError then
            exit(Rec."Enable Prior-Year Period");
        if Rec."Enable Prior-Year Period" then
            exit(true);
        Error(MustBeEnabledErr, Rec.FieldCaption("Enable Prior-Year Period"), Rec.TableCaption());
    end;
}