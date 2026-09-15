table 71423177 QCCheckHeader92FDW
{
  Caption = 'Quality Control Check Header';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(11; Status; Enum StatusType92FDW)
    {
      Caption = 'QC Status';
    }
    field(12; "Document Type"; Enum DocumentType92FDW)
    {
      Caption = 'Document Type';
    }
    field(13; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(14; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(15; "Source Type"; Enum SourceType92FDW)
    {
      Caption = 'Source Type';
    }
    field(16; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(17; "Source Name"; Text[250])
    {
      Caption = 'Source Name';
    }
    field(18; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(19; "Item Description"; Text[100])
    {
      Caption = 'Item Description';
    }
    field(20; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(21; "QC Plan Code"; Code[20])
    {
      Caption = 'Quality Control Plan';
    }
    field(22; Result; Enum Result92FDW)
    {
      Caption = 'Result';
    }
    field(23; "Required Samples"; Integer)
    {
      Caption = 'Required Samples';
    }
    field(24; "QC Check Date"; Date)
    {
      Caption = 'Quality Check Date';
    }
    field(25; "QC Check Time"; Time)
    {
      Caption = 'Quality Check Time';
    }
    field(26; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(27; "Completion Date"; Date)
    {
      Caption = 'Completion Date';
    }
    field(28; "Completion Time"; Time)
    {
      Caption = 'Completion Time';
    }
    field(29; "QC Team"; Code[10])
    {
      Caption = 'Quality Control Team';
    }
    field(30; "Assigned To"; Code[50])
    {
      Caption = 'Assigned To';
    }
    field(31; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(32; "Document Action"; Enum DocumentActionType92FDW)
    {
      Caption = 'Document Action';
    }
    field(35; "Document Quantity"; Decimal)
    {
      Caption = 'Document Quantity';
    }
    field(36; "Salesperson/Purchaser"; Code[20])
    {
      Caption = 'Document Quantity';
    }
    field(37; "QC Check Type"; Enum QCCheckType92FDW)
    {
      Caption = 'Quality Control Check Type';
    }
    field(38; "Finished Before Posting Doc"; Boolean)
    {
      Caption = 'Finished Before Posting Document';
    }
    field(39; "Work Center"; Code[20])
    {
      Caption = 'Work Center';
    }
    field(40; "Create Date"; Date)
    {
      Caption = 'Creation Date';
    }
    field(41; "Create Time"; Time)
    {
      Caption = 'Creation Time';
    }
    field(42; "QC Score"; Code[50])
    {
      Caption = 'Score';
    }
    field(43; VariantCode; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(44; "QC Trigger Entry No."; Integer)
    {
      Caption = 'Quality Control Trigger Entry No.';
    }
    field(45; "Status Mgt. Status Code FDW"; Code[20])
    {
      Caption = 'Status Mgt. Status Code';
    }
    field(46; "Status Mgt. Filter Group FDW"; Code[20])
    {
      Caption = 'Status Mgt. Filter Group';
    }
    field(47; Status92FDW; Enum QCCheckStatus92FDW)
    {
      Caption = 'Status';
    }
    field(51; "Failure QC Plan"; Code[20])
    {
      Caption = 'Failure QC Plan';
    }
    field(52; "Failure QC Team"; Code[10])
    {
      Caption = 'Failure QC Team';
    }
    field(53; "Original Failed QC No."; Code[20])
    {
      Caption = 'Original Failed QC No.';
    }
    field(55; "Posted Document Type"; Enum PostedDocumentType92FDW)
    {
      Caption = 'Posted Document Type';
    }
    field(56; "Posted Document No."; Code[20])
    {
      Caption = 'Posted Document No.';
    }
    field(57; "Per Lot"; Boolean)
    {
      Caption = 'Per Lot';
    }
    field(58; "Order Document Type"; Enum DocumentType92FDW)
    {
      Caption = 'Order Document Type';
    }
    field(59; "Order No."; Code[20])
    {
      Caption = 'Order No.';
    }
  }
  keys
  {
    key(Key1; "No.")
    {
    }
    key(Key2; "Document Type", "Document Action", "Document No.", "Item No.", "Source Type", "Source No.", "Location Code", "Lot No.")
    {
    }
    key(Key3; "Assigned To")
    {
    }
    key(Key4; "Document Type", "Document No.", "Document Line No.")
    {
    }
    key(Key5; "Order Document Type", "Order No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "No.", Status, "Document Type")
    {
    }
    fieldgroup(Brick; "No.", Status, "Document Type")
    {
    }
  }
  var QCSetup: Record QCSetup92FDW;
  // DYCIntegrationImpl: Codeunit DYCIntegrationImpl92FDW;
  // InspectionStatusManagemen92FDW: Codeunit InspectionStatusManagemen92FDW;
  // NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  // TeamManagement92FDW: Codeunit TeamManagement92FDW;
  SkipDeleteNonCorformanceLink: Boolean;
}