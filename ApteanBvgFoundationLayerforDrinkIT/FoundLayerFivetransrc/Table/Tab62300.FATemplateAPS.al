table 62300 "FA Template APS"
{
    Caption = 'FA Template';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
        }
        field(4; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(5; "FA Class Code"; Code[10])
        {
            Caption = 'FA Class Code';
           // TableRelation = "FA Class";
        }
        field(6; "FA Subclass Code"; Code[10])
        {
            Caption = 'FA Subclass Code';
            // TableRelation = "FA Subclass".Code;
            // trigger OnValidate()
            // var
            //     fsubclass: Record "FA Subclass";
            // begin
            //     if fsubclass.Get("FA Subclass Code") then
            //         "FA Posting Group" := fsubclass."Default FA Posting Group"
            //     else
            //         "FA Posting Group" := '';
            // end;
        }
        field(7; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            CaptionClass = '1,1,1';
            //TableRelation = "Dimension Value".Code where(
                //"Global Dimension No." = const(1),
               // Blocked = const(false));
            // trigger OnValidate()
            // var
            //     DimMgt: Codeunit DimensionManagement;
            //     OldDimSetID: Integer;
            // begin
            //     OldDimSetID := 0;
            //     DimMgt.ValidateShortcutDimValues(1, "Global Dimension 1 Code", OldDimSetID);
            // end;
        }
        field(8; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            CaptionClass = '1,1,2';
            //TableRelation = "Dimension Value".Code where(
               // "Global Dimension No." = const(2),
                //Blocked = const(false));
            // trigger OnValidate()
            // var
            //     DimMgt: Codeunit DimensionManagement;
            //     OldDimSetID: Integer;
            // begin
            //     OldDimSetID := 0;
            //     DimMgt.ValidateShortcutDimValues(2, "Global Dimension 2 Code", OldDimSetID);
            // end;
        }
        field(9; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
           // TableRelation = Location;
        }
        field(10; "FA Location Code"; Code[10])
        {
            Caption = 'FA Location Code';
            //TableRelation = "FA Location";
        }
        field(11; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            //TableRelation = Vendor;
        }
        field(14; "Budgeted Asset"; Boolean)
        {
            Caption = 'Budgeted Asset';
        }
        field(16; "Responsible Employee"; Code[20])
        {
            Caption = 'Responsible Employee';
            //TableRelation = Employee;
        }
        field(18; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(23; "Maintenance Vendor No."; Code[20])
        {
            Caption = 'Maintenance Vendor No.';
            //TableRelation = Vendor;
        }
        field(28; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            //TableRelation = "No. Series";
        }
        field(29; "FA Posting Group"; Code[20])
        {
            Caption = 'FA Posting Group';
            //TableRelation = "FA Posting Group";
        }
        field(30; "Auto Dim Fixed Asset"; Code[20])
        {
            Caption = 'Auto Dim Fixed Asset';
            ToolTip = 'Specifies the dimension code where fixed asset individual values are created on.';
            //TableRelation = Dimension;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Last Date Modified" := Today();
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := Today();
    end;
}
