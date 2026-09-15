table 71632102 WhseStatBlockRule108FDW
{
  Caption = 'Logistics Status Block Rule';

  fields
  {
    field(1; Type; Enum LogisticsStatusType108FDW)
    {
      Caption = 'Type';
    }
    field(2; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(3; Direction; Option )
    {
      Caption = 'Direction';
      OptionMembers = Inbound, Outbound;
      OptionCaption = 'Inbound, Outbound';
    }
    field(4; "Entry Type"; Option )
    {
      Caption = 'Entry Type';
      OptionMembers = "Negative Adjmt.", "Positive Adjmt.", Movement;
      OptionCaption = '"Negative Adjmt.", "Positive Adjmt.", Movement';
    }
    field(5; "Whse. Document Type"; Option )
    {
      Caption = 'Whse. Document Type';
      OptionMembers = "Whse. Journal", Receipt, Shipment, "Internal Put-away", "Internal Pick", Production, "Whse. Phys. Inventory", " ", Assembly;
      OptionCaption = '"Whse. Journal", Receipt, Shipment, "Internal Put-away", "Internal Pick", Production, "Whse. Phys. Inventory", " ", Assembly';
    }
    field(6; "Reference Document"; Option )
    {
      Caption = 'Reference Document';
      OptionMembers = " ", "Posted Rcpt.", "Posted P. Inv.", "Posted Rtrn. Rcpt.", "Posted P. Cr. Memo", "Posted Shipment", "Posted S. Inv.", "Posted Rtrn. Shipment", "Posted S. Cr. Memo", "Posted T. Receipt", "Posted T. Shipment", "Item Journal", "Prod.", "Put-away", Pick, Movement, "BOM Journal", "Job Journal", Assembly;
      OptionCaption = ', "Posted Rcpt.", "Posted P. Inv.", "Posted Rtrn. Rcpt.", "Posted P. Cr. Memo", "Posted Shipment", "Posted S. Inv.", "Posted Rtrn. Shipment", "Posted S. Cr. Memo", "Posted T. Receipt", "Posted T. Shipment", "Item Journal", "Prod.", "Put-away", Pick, Movement, "BOM Journal", "Job Journal", Assembly';
    }
  }
  keys
  {
    key(PK; Type, Code, Direction, "Entry Type", "Whse. Document Type", "Reference Document")
    {
    }
  }
}