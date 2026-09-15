tableextension 71624754 ItemLedgerEntry100FDW extends "Item Ledger Entry"
{
  fields
  {
    field(71624729; "S.Gross Amt.(Act.) 105FDW"; Decimal)
    {
      Caption = 'Sales Gross Amount (Actual)';
    }
    field(71624730; "P.Gross Amt.(Act.) 105FDW"; Decimal)
    {
      Caption = 'Purchase Gross Amount (Actual)';
    }
    field(71624731; "C.Gross Amt.(Act.) 105FDW"; Decimal)
    {
      Caption = 'Cost Gross Amount (Actual)';
    }
    field(71624732; "Volume 1 101FDW"; Decimal)
    {
      Caption = 'Volume 1';
    }
    field(71624733; "Volume 2 101FDW"; Decimal)
    {
      Caption = 'Volume 2';
    }
    field(71624734; "Strength 1 101FDW"; Decimal)
    {
      Caption = 'Strength 1';
    }
    field(71624735; "Strength 2 101FDW"; Decimal)
    {
      Caption = 'Strength 2';
    }
    field(71624736; "Volume 1 - Strength 1 101FDW"; Decimal)
    {
      Caption = 'Volume 1 - Strength 1';
    }
    field(71624737; "Volume 2 - Strength 1 101FDW"; Decimal)
    {
      Caption = 'Volume 2 - Strength 1';
    }
    field(71624738; "Volume 1 - Strength 2 101FDW"; Decimal)
    {
      Caption = 'Volume 1 - Strength 2';
    }
    field(71624739; "Volume 2 - Strength 2 101FDW"; Decimal)
    {
      Caption = 'Volume 2 - Strength 2';
    }
    field(71624740; "Net Weight 1 101FDW"; Decimal)
    {
      Caption = 'Net Weight 1';
    }
    field(71624741; "Net Weight 2 101FDW"; Decimal)
    {
      Caption = 'Net Weight 2';
    }
    field(71624742; "Gross Weight 1 101FDW"; Decimal)
    {
      Caption = 'Gross Weight 1';
    }
    field(71624743; "Gross Weight 2 101FDW"; Decimal)
    {
      Caption = 'Gross Weight 2';
    }
    field(71624744; "Reason Code 101FDW"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(71624745; "Strength 3 Code 101FDW"; Code[10])
    {
      Caption = 'Strength 3 Code';
    }
    field(71624746; "Strength 3 Value 101FDW"; Decimal)
    {
      Caption = 'Strength 3 Value';
    }
    field(71624747; "Volume 3 Code 101FDW"; Code[10])
    {
      Caption = 'Volume 3 Code';
    }
    field(71624748; "Volume 3 Value 101FDW"; Decimal)
    {
      Caption = 'Volume 3 Value';
    }
    field(71624749; "Volume 3 - Strength 3 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 3';
    }
    field(71624750; "Strength 3 Code Filter 101FDW"; Code[10])
    {
      Caption = 'Strength 3 Code Filter';
    }
    field(71624751; "Volume 3 Code Filter 101FDW"; Code[10])
    {
      Caption = 'Volume 3 Code Filter';
    }
    field(71624752; "Volume 1 - Strength 3 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 1 - Strength 3';
    }
    field(71624753; "Volume 2 - Strength 3 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 2 - Strength 3';
    }
    field(71624754; "Volume 3 - Strength 1 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 1';
    }
    field(71624755; "Volume 3 - Strength 2 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 2';
    }
    field(71624756; "Remaining Volume 1 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 1';
    }
    field(71624757; "Remaining Volume 2 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 2';
    }
    field(71624758; "Remaining Volume 3 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 3';
    }
    field(71624759; "Remaining Vol1 - Str1 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 1 - Strength 1';
    }
    field(71624760; "Remaining Vol1 - Str2 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 1 - Strength 2';
    }
    field(71624761; "Remaining Vol1 - Str3 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 1 - Strength 3';
    }
    field(71624762; "Remaining Vol2 - Str1 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 2 - Strength 1';
    }
    field(71624763; "Remaining Vol2 - Str2 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 2 - Strength 2';
    }
    field(71624764; "Remaining Vol2 - Str3 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 2 - Strength 3';
    }
    field(71624765; "Remaining Vol3 - Str1 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 3 - Strength 1';
    }
    field(71624766; "Remaining Vol3 - Str2 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 3 - Strength 2';
    }
    field(71624767; "Remaining Vol3 - Str3 101FDW"; Decimal)
    {
      Caption = 'Remaining Volume 3 - Strength 3';
    }
    field(71624768; "Consumption UOM 101FDW"; Code[10])
    {
      Caption = 'Consumption Unit of Measure';
    }
    field(71624769; "Quantity (consumption) 101FDW"; Decimal)
    {
      Caption = 'Quantity (consumption)';
    }
    field(71624770; "Transport Unit 101FDW"; Code[10])
    {
      Caption = 'Transport Unit';
    }
    field(71624771; "Qty. Transport Unit 101FDW"; Decimal)
    {
      Caption = 'Qyt. Transport Unit';
    }
    field(71624772; "Qty. Pallet 101FDW"; Decimal)
    {
      Caption = 'Quantity (Pallet)';
    }
    field(71624773; "Special Price 101FDW"; Boolean)
    {
      Caption = 'Special Price';
    }
    field(71624774; "Loan In Use 101FDW"; Boolean)
    {
      Caption = 'Loan In Use Item';
    }
    field(71624775; "Blanket Order No. 101FDW"; Code[20])
    {
      Caption = 'Blanket Order No.';
    }
    field(71624776; "Blanket Order Line No. 101FDW"; Integer)
    {
      Caption = 'Blanket Order Line No.';
    }
    field(71624777; "Item Dimension 1 Code 101FDW"; Code[20])
    {
      Caption = 'Item Dimension 1 Code';
    }
    field(71624778; "Item Dimension 2 Code 101FDW"; Code[20])
    {
      Caption = 'Item Dimension 2 Code';
    }
    field(71624779; "Item Dimension 3 Code 101FDW"; Code[20])
    {
      Caption = 'Item Dimension 3 Code';
    }
    field(71624780; "Finished Date 111FDW"; Date)
    {
      Caption = 'Finished Date';
    }
    field(71624781; "Cask No. 111FDW"; Code[20])
    {
      Caption = 'Cask No.';
    }
    field(71624782; "Alc. Aging Adjustment 111FDW"; Boolean)
    {
      Caption = 'Alcohol Aging Adjustment';
    }
  }
  keys
  {
    key(ALCRemainingQtyLotItem111FDW; "Lot No.", "Item No.", Open)
    {
    }
    key(ALCCaskNo111FDW; "Cask No. 111FDW")
    {
    }
  }
}