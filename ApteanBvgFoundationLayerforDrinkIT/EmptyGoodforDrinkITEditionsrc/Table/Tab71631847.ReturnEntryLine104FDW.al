table 71631847 ReturnEntryLine104FDW
{
  Caption = 'Return Entry Line';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    // field(5; Type; Enum Microsoft.Sales.Document."Sales Line Type")
    // {
    //   Caption = 'Type';
    // }
    field(6; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(7; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(15; Quantity; Decimal)
    {
      Caption = 'Quantity';
    }
    field(16; "Is Empty Good"; Boolean)
    {
      Caption = 'Is Empty Good';
    }
    field(22; "Unit Price"; Decimal)
    {
      Caption = 'Unit Price';
    }
    field(27; "Line Discount %"; Decimal)
    {
      Caption = 'Line Discount %';
    }
    field(28; "Line Discount Amount"; Decimal)
    {
      Caption = 'Line Discount Amount';
    }
    field(80; "Attached to Line No."; Integer)
    {
      Caption = 'Attached to Line No.';
    }
    field(103; "Line Amount"; Decimal)
    {
      Caption = 'Line Amount';
    }
    field(5404; "Qty. per Unit of Measure"; Decimal)
    {
      Caption = 'Qty. per Unit of Measure';
    }
    field(5407; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(5415; "Quantity (Base)"; Decimal)
    {
      Caption = 'Quantity (Base)';
    }
    field(6608; "Return Reason Code"; Code[10])
    {
      Caption = 'Return Reason Code';
    }
    field(5709; "Item Category Code"; Code[20])
    {
      Caption = 'Item Category Code';
    }
    field(5402; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(71631830; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(71631831; "Source Subtype"; Integer)
    {
      Caption = 'Source Subtype';
    }
    field(71631832; "Source ID"; Code[20])
    {
      Caption = 'Source ID';
    }
    field(71631833; "Source Line No."; Integer)
    {
      Caption = 'Source Line No.';
    }
    field(71631834; "Standard Sales Code"; Code[10])
    {
      Caption = 'Standard Sales Code';
    }
    field(71631835; "Standard Purchase Code"; Code[10])
    {
      Caption = 'Standard Purchase Code';
    }
    field(71631836; "Created on Date/Time"; DateTime)
    {
      Caption = 'Created on Date/Time';
    }
    field(71631837; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(71631838; "Source Line Qty. (Base)"; Decimal)
    {
      Caption = 'Source Line Qty. (Base)';
    }
    field(71631839; "Reason Code"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(71631840; "Updated Unit Price"; Boolean)
    {
      Caption = 'Updated Unit Price';
    }
    field(71631841; "Blanket Order No."; Code[20])
    {
      Caption = 'Blanket Order No.';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(SourceFields; "Source Type", "Source Subtype", "Source ID", "Source Line No.")
    {
    }
  }
//   var PurchaseHeader: Record "Purchase Header";
//   SalesHeader: Record "Sales Header";
}