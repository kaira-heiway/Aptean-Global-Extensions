table 71423185 PostedQCActionHeader92FDW
{
  Caption = 'Posted Quality Control Action Header';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(11; Status; Enum StatusType92FDW)
    {
      Caption = 'Status';
    }
    field(12; "QC Action Plan"; Code[20])
    {
      Caption = 'Action Plan';
    }
    field(13; "Posted QC Check No."; Code[20])
    {
      Caption = 'Posted Check No.';
    }
    field(14; "QC Team"; Code[10])
    {
      Caption = 'Team';
    }
    field(15; "Completion Date"; Date)
    {
      Caption = 'Completion Date';
    }
    field(16; "Completion Time"; Time)
    {
      Caption = 'Completion Time';
    }
    field(17; "Assigned To"; Code[50])
    {
      Caption = 'Assigned To';
    }
    field(18; "Reference Item No."; Code[20])
    {
      Caption = 'Reference Item No.';
    }
    field(19; "Reference Item Description"; Text[250])
    {
      Caption = 'Reference Item Description';
    }
    field(20; "Lot No."; Code[50])
    {
      Caption = 'Lot No.';
    }
    field(21; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(22; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(23; "QC Action No. Series"; Code[20])
    {
      Caption = 'Quality Action No. Series';
    }
    field(24; "QC Action No."; Code[20])
    {
      Caption = 'Quality Action No.';
    }
  }
  keys
  {
    key(Key1; "No.")
    {
    }
    key(Key2; "Assigned To")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "No.", Status)
    {
    }
    fieldgroup(Brick; "No.", Status)
    {
    }
  }
  var QCSetup92FDW: Record QCSetup92FDW;
  // NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
  // TeamManagement92FDW: Codeunit TeamManagement92FDW;
}