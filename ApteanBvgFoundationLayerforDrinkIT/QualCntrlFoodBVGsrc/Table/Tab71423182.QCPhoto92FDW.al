table 71423182 QCPhoto92FDW
{
  Caption = 'Quality Control Photo';

  fields
  {
    field(1; "Document Type"; Enum DocumentQCType92FDW)
    {
      Caption = 'Quality Control Document Type';
    }
    field(2; "Document No."; Code[20])
    {
      Caption = 'Quality Control Check No.';
    }
    field(3; "Line No."; Integer)
    {
      Caption = 'Quality Control Check Line No.';
    }
    field(4; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(12; Image; Media)
    {
      Caption = 'Image';
    }
  }
  keys
  {
    key(Key1; "Document Type", "Document No.", "Line No.", "Entry No.")
    {
    }
  }
  // var Camera: Codeunit System.Device.Camera;
  // DeletePostedPhotoErr: Label;
  // InvalidImageFileErr: Label;
  // OverwriteImageQstLbl: Label;
}