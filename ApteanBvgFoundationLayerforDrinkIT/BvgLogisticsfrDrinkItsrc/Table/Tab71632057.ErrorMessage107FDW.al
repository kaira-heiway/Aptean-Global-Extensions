table 71632057 ErrorMessage107FDW
{
  Caption = 'Error Message';

  fields
  {
    field(1; ID; Integer)
    {
      Caption = 'ID';
    }
    field(2; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(3; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers= "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption= '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(4; "Source Document Type"; Enum IntlSrcDocumentType107FDW)
    {
      Caption = 'Document Type';
    }
    field(5; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(6; "Source Line No."; Integer)
    {
      Caption = 'Source No.';
    }
    field(7; Inbound; Boolean)
    {
      Caption = 'Inbound';
    }
    field(8; "Drive No."; Integer)
    {
      Caption = 'Drive';
    }
    field(9; "Route Planning No."; Code[20])
    {
      Caption = 'Route Planning No.';
    }
    field(10; "Message Type"; Enum ErrorMessageType107FDW)
    {
      Caption = 'Message Type';
    }
    field(11; Description; Text[250])
    {
      Caption = 'Description';
    }
    field(12; "Additional Information"; Text[250])
    {
      Caption = 'Additional Information';
    }
    field(13; "Error Message Category"; Enum ErrorMessageCategory107FDW)
    {
      Caption = 'Error Message Category';
    }
  }
  keys
  {
    key(Key1; ID, "Source Type", "Source Subtype", "Source No.", Inbound)
    {
    }
    key(Key2; "Route Planning No.")
    {
    }
  }
  //var LOGIntlRoutePlanHook: Codeunit IntlRoutePlanHook107FDW;
}