table 71631886 SourceRelationBuffer105FDW
{
  Caption = 'Condition Source Relation Buffer';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Source Type"; Integer)
    {
      Caption = 'Source Table Type';
    }
    field(3; "Source Subtype"; Option )
    {
      Caption = 'Source Subtype';
      OptionMembers="0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption='"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
    }
    field(4; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(7; "Source Ref. No."; Integer)
    {
      Caption = 'Source Ref. No.';
    }
    field(8; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(10; "Document Type"; Integer)
    {
      Caption = 'Document Type';
    }
    field(11; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(12; "Source Relation Type"; Enum IntlRelationType105FDW)
    {
      Caption = 'Source Relation Type';
    }
    field(13; "Source Relation No."; Code[20])
    {
      Caption = 'Source Relation No.';
    }
    field(14; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(25; "Source Relation No. (Invoice)"; Code[20])
    {
      Caption = 'Source Relation No. (Invoice)';
    }
    field(100; "Document Line No."; Integer)
    {
      Caption = 'Document Line No.';
    }
    field(101; Type; Enum IntlSlsPurchLineType105FDW)
    {
      Caption = 'Type';
    }
    field(102; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(103; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(104; "Description 2"; Text[50])
    {
      Caption = 'Description 2';
    }
    field(200; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(201; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(202; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(203; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(204; "Unit Price-Direct Unit Cost"; Decimal)
    {
      Caption = 'Unit Price/Direct Unit Cost';
    }
    field(205; "Line Amount"; Decimal)
    {
      Caption = 'Line Amount';
    }
    field(300; "Is Line Inbound"; Boolean)
    {
      Caption = 'Is Line Inbound';
    }
    field(302; "Position Level"; Integer)
    {
      Caption = 'Position Level';
    }
    field(410; Amount; Decimal)
    {
      Caption = 'Amount';
    }
    field(411; "Amount Including VAT"; Decimal)
    {
      Caption = 'Amount Including VAT';
    }
    field(412; "VAT Base Amount"; Decimal)
    {
      Caption = 'VAT Base Amount';
    }
    field(4000; "Rule Setup ID"; Guid)
    {
      Caption = 'Rule Setup ID';
    }
    field(4009; "Rule Setup No."; Integer)
    {
      Caption = 'Rule No.';
    }
    field(7000; "Source Header ID"; Guid)
    {
      Caption = 'Source Header ID';
    }
    field(7001; "Source Line ID"; Guid)
    {
      Caption = 'Source Line ID';
    }
    // field(8100; "Attached Line Type (DIT)"; Enum Module100FDW)
    // {
    //   Caption = 'Attached Line Type (DIT)';
    // }
    field(9999; "Entry Line No."; Integer)
    {
      Caption = 'Entry Line No.';
    }
  }
  keys
  {
    key(PK; "Entry No.", "Entry Line No.")
    {
    }
  }
  // var IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  // IntlInventoryHook105FDW: Codeunit IntlInventoryHook105FDW;
}