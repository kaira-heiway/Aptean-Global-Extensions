tableextension 71624805 SalesInvoiceLine100FDW extends "Sales Invoice Line"
{
  fields
  {
    field(71624729; "Cust. Contract No. 114FDW"; Code[20])
    {
      Caption = 'Customer Contract No.';
    }
    field(71624730; "Rental Agrmnt No. 114FDW"; Code[20])
    {
      Caption = 'Rental Agreement No.';
    }
    field(71624731; "Rent Category 114FDW"; Code[20])
    {
      Caption = 'Rent Category';
    }
    field(71624732; "Charge to Cust. % 114FDW"; Decimal)
    {
      Caption = 'Charge to Customer %';
    }
    field(71624733; "Charge to Cust. Amt 114FDW"; Decimal)
    {
      Caption = 'Charge to Customer Amount';
    }
    field(71624734; "Contract Object No. 114FDW"; Code[20])
    {
      Caption = 'Contract Object No.';
    }
    field(71624735; "Rent.Agrmt.Line No. 114FDW"; Integer)
    {
      Caption = 'Rental Agreement Line No.';
    }
    field(71624736; "Next Inv Starting Date 114FDW"; Date)
    {
      Caption = 'Next Invoice Starting Date';
    }
    field(71624737; "Next Inv Ending Date 114FDW"; Date)
    {
      Caption = 'Next Invoice Ending Date';
    }
    field(71624751; "Has Item Charge 101FDW"; Boolean)
    {
      Caption = 'Has Item Charge';
    }
    field(71624752; "Volume 1 101FDW"; Decimal)
    {
      Caption = 'Volume 1';
    }
    field(71624753; "Volume 2 101FDW"; Decimal)
    {
      Caption = 'Volume 2';
    }
    field(71624754; "Strength 1 101FDW"; Decimal)
    {
      Caption = 'Strength 1';
    }
    field(71624755; "Strength 2 101FDW"; Decimal)
    {
      Caption = 'Strength 2';
    }
    field(71624756; "Volume 1 - Strength 1 101FDW"; Decimal)
    {
      Caption = 'Volume 1 - Strength 1';
    }
    field(71624757; "Volume 2 - Strength 1 101FDW"; Decimal)
    {
      Caption = 'Volume 2 - Strength 1';
    }
    field(71624758; "Volume 1 - Strength 2 101FDW"; Decimal)
    {
      Caption = 'Volume 1 - Strength 2';
    }
    field(71624759; "Volume 2 - Strength 2 101FDW"; Decimal)
    {
      Caption = 'Volume 2 - Strength 2';
    }
    field(71624760; "Net Weight 1 101FDW"; Decimal)
    {
      Caption = 'Net Weight 1';
    }
    field(71624761; "Net Weight 2 101FDW"; Decimal)
    {
      Caption = 'Net Weight 2';
    }
    field(71624762; "Gross Weight 1 101FDW"; Decimal)
    {
      Caption = 'Gross Weight 1';
    }
    field(71624763; "Gross Weight 2 101FDW"; Decimal)
    {
      Caption = 'Gross Weight 2';
    }
    field(71624764; "Reason Code 101FDW"; Code[10])
    {
      Caption = 'Reason Code';
    }
    field(71624765; "Strength 3 Code 101FDW"; Code[10])
    {
      Caption = 'Strength 3 Code';
    }
    field(71624766; "Strength 3 Value 101FDW"; Decimal)
    {
      Caption = 'Strength 3 Value';
    }
    field(71624767; "Volume 3 Code 101FDW"; Code[10])
    {
      Caption = 'Volume 3 Code';
    }
    field(71624768; "Volume 3 Value 101FDW"; Decimal)
    {
      Caption = 'Volume 3 Value';
    }
    field(71624769; "Volume 3 - Strength 3 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 3';
    }
    field(71624770; "Strength 3 Code Filter 101FDW"; Code[10])
    {
      Caption = 'Strength 3 Code Filter';
    }
    field(71624771; "Volume 3 Code Filter 101FDW"; Code[10])
    {
      Caption = 'Volume 3 Code Filter';
    }
    field(71624772; "Volume 1 - Strength 3 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 1 - Strength 3';
    }
    field(71624773; "Volume 2 - Strength 3 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 2 - Strength 3';
    }
    field(71624774; "Volume 3 - Strength 1 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 1';
    }
    field(71624775; "Volume 3 - Strength 2 101FDW"; Decimal)
    {
      Caption = 'Tot. Volume 3 - Strength 2';
    }
    field(71624776; "Attached Line Type 101FDW"; Enum Module100FDW)
    {
      Caption = 'Attached Line Type';
    }
    field(71624777; "Attached Qty. Factor 101FDW"; Decimal)
    {
      Caption = 'Attached Qty. Factor';
    }
    field(71624778; "Fixed Price 101FDW"; Boolean)
    {
      Caption = 'Fixed Price';
    }
    field(71624779; "Transport Unit 101FDW"; Code[10])
    {
      Caption = 'Transport Unit';
    }
    field(71624780; "Qty. Base per Trans. 101FDW"; Decimal)
    {
      Caption = 'Qty. Base per Trans.';
    }
    field(71624781; "Qty. Trans. Units In. 101FDW"; Decimal)
    {
      Caption = 'Qty. Transport Units Inbound';
    }
    field(71624782; "Qty. Trans. Units Out. 101FDW"; Decimal)
    {
      Caption = 'Qty. Transport Units Outbound';
    }
    field(71624784; "Qty. Pallet 101FDW"; Decimal)
    {
      Caption = 'Quantity (Pallet)';
    }
    field(71624785; "Consumption UOM 101FDW"; Code[10])
    {
      Caption = 'Consumption Unit of Measure';
    }
    field(71624786; "Quantity (consumption) 101FDW"; Decimal)
    {
      Caption = 'Quantity (consumption)';
    }
    field(71624787; "Special Price 101FDW"; Boolean)
    {
      Caption = 'Special Price';
    }
    field(71624788; "Loan In Use Item Sales 101FDW"; Boolean)
    {
      Caption = 'Loan In Use Item (Sales)';
    }
    field(71624789; "Financial Correction 101FDW"; Boolean)
    {
      Caption = 'Financial Corrective';
    }
    field(71624790; "Is Split EGM Line 104FDW"; Boolean)
    {
      Caption = 'Is Split Empty Goods Line';
    }
    field(71624794; "Qty. Not Fin.Corrected 101FDW"; Decimal)
    {
      Caption = 'Financial Qty. Not Corrected';
    }
    field(71624795; "Qty. Completed Fin.Cor 101FDW"; Boolean)
    {
      Caption = 'Financial Completely Corrected';
    }
    field(71624800; "Excluded for Pay. Disc. 101FDW"; Boolean)
    {
      Caption = 'Excluded for Payment Discount';
    }
  }
}