table 71631905 ItemMixMatchBuffer105FDW
{
  Caption = 'Condition Promotion Item Mix & Match';
  // ObsoleteReason = 'redesign on the needs: replaced by "Item MixMatch Doc. Line" table';
  // ObsoleteState = Pending;
  // ObsoleteTag = '22.0';

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
      OptionMembers = "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10";
      OptionCaption = '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"';
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
    field(20; "Item No."; Code[20])
    {
      Caption = 'Item No.';
    }
    field(21; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(22; "Description 2"; Text[50])
    {
      Caption = 'Description 2';
    }
    field(23; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(24; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(30; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(31; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(40; "Qty. to Handle"; Decimal)
    {
      Caption = 'Qty. to Handle';
    }
    field(41; "Qty. to Handle (Base)"; Decimal)
    {
      Caption = 'Qty. to Handle (Base)';
    }
    field(50; "Free Quantity"; Decimal)
    {
      Caption = 'Free Quantity';
    }
    field(51; "Free Quantity (Base)"; Decimal)
    {
      Caption = 'Free Quantity (Base)';
    }
    field(3000; "Rate ID"; Guid)
    {
      Caption = 'Condition Rate system ID';
    }
    field(3001; "Rate Free MixMatch Line ID"; Integer)
    {
      Caption = 'Free Item Mix & Match Line ID';
    }
    field(3200; "Rate MixMatch Line sID"; Guid)
    {
      Caption = 'Rate Mix & Match Line system ID';
    }
    field(3201; "Rate Qty. per Unit of Item"; Decimal)
    {
      Caption = 'Rate Free Item Quantity per (relative weight)';
    }
    field(4000; "Rule Setup ID"; Guid)
    {
      Caption = 'Rule system ID';
    }
    field(4099; "Rule Setup No."; Integer)
    {
      Caption = 'Rule No.';
    }
  }
  keys
  {
    key(PK; "Entry No.", "Rule Setup No.", "Rate Free MixMatch Line ID", "Item No.", "Unit of Measure Code")
    {
    }
  }
}