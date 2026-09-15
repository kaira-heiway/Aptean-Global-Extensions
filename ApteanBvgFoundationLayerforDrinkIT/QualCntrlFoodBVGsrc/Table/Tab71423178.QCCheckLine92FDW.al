table 71423178 QCCheckLine92FDW
{
  Caption = 'Quality Control Check Line';

  fields
  {
    field(1; "QC Check No."; Code[20])
    {
      Caption = 'Quality Control Check No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(11; "QC Question Sequence"; Integer)
    {
      Caption = 'Sequence';
    }
    field(12; "QC Question Code"; Code[20])
    {
      Caption = 'Question';
    }
    field(13; "Answer Integer"; Integer)
    {
      Caption = 'Answer Integer';
    }
    field(14; "Answer Decimal"; Decimal)
    {
      Caption = 'Answer Decimal';
    }
    field(15; "Answer Option"; Integer)
    {
      Caption = 'Answer Option';
    }
    field(16; "Answer Text"; Text[100])
    {
      Caption = 'Answer Text';
    }
    field(17; "Answer Date/Time"; DateTime)
    {
      Caption = 'Answer Date/Time';
    }
    field(18; "Answer Lot Attribute"; Integer)
    {
      Caption = 'Answer Lot Attribute';
    }
    field(19; "Answer Photo"; Text[100])
    {
      Caption = 'Answer Photo';
    }
    field(20; "QC Unit of Measure"; Code[10])
    {
      Caption = 'Unit of Measure';
    }
    field(21; Mandatory; Boolean)
    {
      Caption = 'Mandatory';
    }
    field(22; Result; Enum Result92FDW)
    {
      Caption = 'Result';
    }
    field(23; "Sample Size"; Integer)
    {
      Caption = 'Sample Size';
    }
    field(24; "Target Lower Limit Option"; Integer)
    {
      Caption = 'Target Lower Limit Option';
    }
    field(25; "Target Lower Warning Option"; Integer)
    {
      Caption = 'Target Lower Warning Option';
    }
    field(26; "Target Option"; Integer)
    {
      Caption = 'Target Option';
    }
    field(27; "Target Upper Warning Option"; Integer)
    {
      Caption = 'Target Upper Warning Option';
    }
    field(28; "Target Upper Limit Option"; Integer)
    {
      Caption = 'Target Upper Limit Option';
    }
    field(29; "Target Lower Limit Value"; Decimal)
    {
      Caption = 'Target Lower Limit Value';
    }
    field(30; "Target Lower Warning Value"; Decimal)
    {
      Caption = 'Target Lower Warning Value';
    }
    field(31; "Target Value"; Decimal)
    {
      Caption = 'Target Value';
    }
    field(32; "Target Upper Warning Value"; Decimal)
    {
      Caption = 'Target Upper Warning Value';
    }
    field(33; "Target Upper Limit Value"; Decimal)
    {
      Caption = 'Target Upper Limit Value';
    }
    field(34; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(35; "QC Option Header Code Filter"; Code[20])
    {
      Caption = 'QC Option Header Code Filter';
    }
    field(36; "QC Plan Code"; Code[20])
    {
      Caption = 'Quality Control Plan';
    }
    field(37; Answer; Text[100])
    {
      Caption = 'Answer';
    }
    field(38; Target; Text[100])
    {
      Caption = 'Target';
    }
    field(39; "Target Lower Warning"; Text[100])
    {
      Caption = 'Target Lower Warning';
    }
    field(40; "Target Upper Warning"; Text[100])
    {
      Caption = 'Target Upper Warning';
    }
    field(41; "Target Lower Limit"; Text[100])
    {
      Caption = 'Target Lower Limit';
    }
    field(42; "Target Upper Limit"; Text[100])
    {
      Caption = 'Target Upper Limit';
    }
    field(43; "Frequency Type"; Enum FrequencyType92FDW)
    {
      Caption = 'Frequency Type';
    }
    field(44; "Failure Action Plan"; Code[20])
    {
      Caption = 'Failure Action Plan';
    }
    field(45; "Sample Description Question"; Text[100])
    {
      Caption = 'Sample Description Question';
    }
    field(46; "Sample Size Question"; Integer)
    {
      Caption = 'Sample Size Question';
    }
    field(47; "QC Option Comment"; Text[250])
    {
      Caption = 'Comment';
    }
    field(49; "QC Equipment Code"; Code[20])
    {
      Caption = 'Equipment';
    }
    field(50; "QC Plan Comment"; Text[100])
    {
      Caption = 'QC Plan Comment';
    }
    field(51; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(52; "Is Calculated Formula"; Boolean)
    {
      Caption = 'Is Calculated Formula';
    }
    field(53; "Formula Text"; Text[250])
    {
      Caption = 'Formula';
    }
    field(54; "Formula Symbol"; Text[20])
    {
      Caption = 'Formula Symbol';
    }
  }
  keys
  {
    key(Key1; "QC Check No.", "Line No.")
    {
    }
    key(Key2; "QC Question Sequence")
    {
    }
    key(Key3; "Frequency Type")
    {
    }
  }
  // var Label92FDW: Codeunit Label92FDW;
  // TeamManagement92FDW: Codeunit TeamManagement92FDW;
}