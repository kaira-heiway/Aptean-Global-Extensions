table 71423188 CheckManagementParamsTemp92FDW
{
  Caption = 'Check Management Parametrs';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(11; "Document Type"; Enum DocumentType92FDW)
    {
      Caption = 'Document Type';
    }
    field(12; "Document Action Type"; Enum DocumentActionType92FDW)
    {
      Caption = 'Document Action Type';
    }
    field(13; "Item No."; Code[20])
    {
      Caption = 'Document Action Caption';
    }
    field(14; "Source Type"; Enum SourceType92FDW)
    {
      Caption = 'Source Type';
    }
    field(15; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(16; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(17; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(18; Location; Code[10])
    {
      Caption = 'Location';
    }
    field(19; "Inspection Status"; Code[20])
    {
      Caption = 'Inspection Status';
    }
    field(20; "Lot No"; Code[50])
    {
      Caption = 'Lot No';
    }
    field(21; "Quality Check Type"; Enum QualityCheckType92FDW)
    {
      Caption = 'Quality Check Type';
    }
    field(22; "Apply QualityCheckType Filter"; Boolean)
    {
      Caption = 'Apply Quality Check Type Filter';
    }
    field(23; "Posted Source No."; Code[20])
    {
      Caption = 'Posted Document No.';
    }
    field(24; VariantCode; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(25; "Non-Conformance No."; Code[20])
    {
      Caption = 'Non-Conformance No.';
    }
    field(26; "Non-Conformance Type"; Integer)
    {
      Caption = 'Non-Conformance Type';
    }
    field(27; "Lot Location Filter"; Code[50])
    {
      Caption = 'Lot Location Filter';
      ObsoleteReason = 'This field will be removed. Use the Lot Location Filters field instead as the datatype is changed.';
      ObsoleteState = Pending;
      ObsoleteTag = '27.0';
    }
    field(28; "Lot Location Filters"; Text[2048])
    {
      Caption = 'Lot Location Filter';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
  }
}