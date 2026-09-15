tableextension 62007 "CM Sales Header APS" extends "Sales Header"
{
    fields
    {
        field(62050; "CM Empty Good Limit Status APS"; Enum "CM EmptyGoodLimitStatus APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit Status';
            Editable = false;
            trigger OnValidate()
            begin
                if Rec."CM Empty Good Limit Status APS" = Rec."CM Empty Good Limit Status APS"::"Released EG" then begin
                    Rec.Validate("CM EG Limit Approved by APS", UserId);
                    Rec.Validate("CM EG Limit Approved on APS", CurrentDateTime);
                end else begin
                    Rec.Validate("CM EG Limit Approved by APS", '');
                    Rec.Validate("CM EG Limit Approved on APS", 0DT);
                end;
            end;
        }
        field(62051; "CM EG Limit Approved by APS"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit Approved by';
            Editable = false;
        }
        field(62052; "CM EG Limit Approved on APS"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Empty Good Limit Approved on by';
            Editable = false;
        }
        field(62053; "CM RetOrd. Automat. Creat. APS"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Automatic Return Order Created';
            Editable = false;
        }
        field(62065; "CM Shipment Type APS"; Enum "CM ShipmentMethodType APS")
        {
            DataClassification = CustomerContent;
            Caption = 'Shipment Type';
            Editable = false;
            trigger OnValidate()
            begin
                // if CMSetupMgt.IsCMEmptyGoodLimEnhancementEnabled() then
                //     if not StatusCheckSuspended then
                //         if Rec."CM Shipment Type APS" <> xRec."CM Shipment Type APS" then
                //             Rec.TestField("CM Empty Good Limit Status APS", Rec."CM Empty Good Limit Status APS"::Open);

                // if Rec."CM Shipment Type APS" <> xRec."CM Shipment Type APS" then begin
                //     Rec.Validate("Shipping Agent Code", '');
                //     Rec.Validate("Shipping Agent Service Code", '');
                // end;
            end;
        }
    }
    procedure GetEGStatusStyleText() EGStatusStyleText: Text
    begin
        if "CM Empty Good Limit Status APS" = "CM Empty Good Limit Status APS"::"Released EG" then
            EGStatusStyleText := 'Strong'
        else
            EGStatusStyleText := 'Unfavorable';
    end;

    var
        //CMSetupMgt: Codeunit "CM Setup Mgt APS";
}
