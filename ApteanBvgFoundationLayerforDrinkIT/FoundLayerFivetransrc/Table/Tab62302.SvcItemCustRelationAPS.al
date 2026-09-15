table 62302 "Svc. Item Cust. Relation APS"
{
    Caption = 'Service Item Customer Relation';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            //TableRelation = "Service Item";
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            // TableRelation = Customer;

            // trigger OnValidate()
            // var
            //     Cust: Record Customer;
            // begin
            //     if "Customer No." = '' then begin
            //         "Customer Name" := '';
            //         exit;
            //     end;
            //     Cust.SetLoadFields(Name);
            //     Cust.Get("Customer No.");
            //     "Customer Name" := CopyStr(Cust.Name, 1, MaxStrLen("Customer Name"));
            // end;
        }
        field(3; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(4; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Active,Inactive;
            OptionCaption = 'Active,Inactive';
        }
        field(5; "Service Item Name"; Text[50])
        {
            Caption = 'Service Item Name';
        }
        field(6; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
        }
        field(7; "Inactive Date"; Date)
        {
            Caption = 'Inactive Date';
        }
        field(8; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Service Item No.", "Customer No.", "Employment Date")
        {
            Clustered = true;
        }
        key(Key2; "Service Item No.", Status) { }
        key(Key3; "Customer No.", Status) { }
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
