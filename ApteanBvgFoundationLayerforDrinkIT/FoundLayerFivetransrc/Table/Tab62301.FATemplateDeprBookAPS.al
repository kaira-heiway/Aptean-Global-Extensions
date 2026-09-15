table 62301 "FA Template Depr. Book APS"
{
    Caption = 'FA Template Depreciation Book';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "FA Template No."; Code[20])
        {
            Caption = 'FA Template No.';
            TableRelation = "FA Template APS";
        }
        field(2; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            //TableRelation = "Depreciation Book";
        }
        // field(3; "Depreciation Method"; Enum "FA Depreciation Method")
        // {
        //     Caption = 'Depreciation Method';
        // }
        field(4; "No. of Depreciation Years"; Decimal)
        {
            Caption = 'No. of Depreciation Years';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5; "FA Posting Group"; Code[20])
        {
            Caption = 'FA Posting Group';
            //TableRelation = "FA Posting Group";
        }
        field(6; Description; Text[100])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "FA Template No.", "Depreciation Book Code")
        {
            Clustered = true;
        }
        key(Key2; "FA Template No.") { }
    }
}
