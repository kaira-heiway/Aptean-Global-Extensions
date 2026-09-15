table 70218890 InspectionTagFDW
{
  Caption = 'Inspection Tag';

  fields
  {
    field(1; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(10; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(11; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(12; "Source Type"; Enum InspectionTagSourceTypeFDW)
    {
      Caption = 'Source Type';
    }
    field(13; "Source No."; Code[50])
    {
      Caption = 'Source No.';
    }
    field(14; Status; Enum InspectionTagStatusFDW)
    {
      Caption = 'Status';
    }
    field(15; Priority; Integer)
    {
      Caption = 'Priority';
    }
    field(16; "No. Series"; Code[20])
    {
      Caption = 'No. Series';
    }
    field(17; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(30; "Inspection Status Comment"; Text[250])
    {
      Caption = 'Inspection Status Comment';
    }
    field(31; "Inspection Status Code"; Code[10])
    {
      Caption = 'Inspection Status Code';
    }
    field(40; "Disposition Code"; Code[20])
    {
      Caption = 'Disposition Code';
    }
    field(41; "Disposition Comment"; Text[250])
    {
      Caption = 'Disposition Comment';
    }
    field(42; "Comment Required"; Boolean)
    {
      Caption = 'Comment Required';
    }
    field(50; "External No."; Code[30])
    {
      Caption = 'External No.';
    }
    field(60; "Next Follow-up Date"; Date)
    {
      Caption = 'Next Follow-up Date';
    }
    field(61; "Follow-up Reason Code"; Code[10])
    {
      Caption = 'Follow-up Reason Code';
    }
    field(62; "Follow-up Date Comment"; Text[250])
    {
      Caption = 'Follow-up Date Comment';
    }
    field(63; "Last Follow-Up Sch. Interval"; DateFormula)
    {
      Caption = 'Last Follow-Up Schedule Interval';
    }
    field(64; "Last Follow-up Schedule"; Code[20])
    {
      Caption = 'Last Follow-up Schedule';
    }
    field(100; "Status By User ID"; Code[50])
    {
      Caption = 'Status By User ID';
    }
    field(101; "Status Date/Time"; DateTime)
    {
      Caption = 'Status Date/Time';
    }
    field(102; "Disposition By User ID"; Code[50])
    {
      Caption = 'Disposition By User ID';
    }
    field(103; "Disposition Date/Time"; DateTime)
    {
      Caption = 'Disposition Date/Time';
    }
    field(110; "QC Check No."; Code[20])
    {
      Caption = 'Quality Check No.';
    }
    field(111; "Status Mgt. Status Code FDW"; Code[20])
    {
      Caption = 'Status Mgt. Status Code';
    }
    field(112; "Status Mgt. Filter Group FDW"; Code[20])
    {
      Caption = 'Status Mgt. Filter Group';
    }
  }
  keys
  {
    key(PK; "No.")
    {
    }
    key(Key1; "Item No.", "Variant Code", "Source Type", "Source No.")
    {
    }
    key(Key2; "Item No.", "Variant Code", "Source Type", "Source No.", "Inspection Status Code", Status)
    {
    }
    key(Key3; "Item No.", "Variant Code", "Source Type", "Source No.", Priority)
    {
    }
  }
  var InspectionStatusSetup: Record InspectionStatusSetupFDW;
  //NoSeries: Codeunit Microsoft.Foundation.NoSeries."No. Series";
}