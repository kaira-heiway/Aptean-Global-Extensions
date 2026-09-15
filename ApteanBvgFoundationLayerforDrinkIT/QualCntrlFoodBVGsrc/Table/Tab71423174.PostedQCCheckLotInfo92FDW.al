table 71423174 PostedQCCheckLotInfo92FDW
{
  Caption = 'Posted Quality Control Lot Information';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(11; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(12; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(13; "Source Document Type"; Enum DocumentType92FDW)
    {
      Caption = 'Source Document Type';
    }
    field(14; "Source Document No."; Code[20])
    {
      Caption = 'Source Document No.';
    }
    field(15; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(16; "QCCheck No."; Code[20])
    {
      Caption = 'QC Check No.';
    }
    field(17; VariantCode; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(18; "QC Action Type"; Enum DocumentActionType92FDW)
    {
      Caption = 'QC Action Type';
    }
    field(19; "Posted QC Check No."; Code[20])
    {
      Caption = 'Posted QC Check No.';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
    key(Key2; "Lot No.", "Item No.", "Source Document Type", "Source Document No.", "Source Line No.")
    {
    }
    key(Key3; "QCCheck No.", "Posted QC Check No.")
    {
    }
    key(Key4; "Posted QC Check No.")
    {
    }
  }
}