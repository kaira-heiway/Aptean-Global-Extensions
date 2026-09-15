tableextension 71624806 SalesLine100FDW extends "Sales Line"
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
    field(71624736; "Next Inv Start.Date 114FDW"; Date)
    {
      Caption = 'Next Invoice Starting Date';
    }
    field(71624737; "Next Inv End. Date 114FDW"; Date)
    {
      Caption = 'Next Invoice Ending Date';
    }
    field(71624738; "EMCS Mandatory 113FDW"; Boolean)
    {
      Caption = 'EMCS Mandatory';
    }
    field(71624739; "Selected Quantity 106FDW"; Decimal)
    {
      Caption = 'Selected Quantity';
    }
    field(71624740; "Backorder Type 106FDW"; Enum IntlBackorderType100FDW)
    {
      Caption = 'Backorder Type';
    }
    field(71624741; "Salesperson Code 106FDW"; Code[20])
    {
      Caption = 'Salesperson Code';
    }
    field(71624742; "Original Quantity 106FDW"; Decimal)
    {
      Caption = 'Original Quantity';
    }
    field(71624743; "Backorder Processed 106FDW"; Boolean)
    {
      Caption = 'Backorder Processed';
    }
    field(71624744; "Original Docum. No. 106FDW"; Code[20])
    {
      Caption = 'Original Document No.';
    }
    field(71624745; "Original Line No. 106FDW"; Integer)
    {
      Caption = 'Original Line No.';
    }
    field(71624746; "Whse. Qty. to Ship 106FDW"; Decimal)
    {
      Caption = 'Whse. Qty. to Ship';
    }
    field(71624747; "Volume Out. 107FDW"; Decimal)
    {
      Caption = 'Volume Outstanding';
    }
    field(71624748; "Gross Weight Out. 107FDW"; Decimal)
    {
      Caption = 'Gross Weight Outstanding';
    }
    field(71624749; "Route planning No. 107FDW"; Code[20])
    {
      Caption = 'Route planning No.';
    }
    field(71624750; "Sales Excise Type 102FDW"; Enum ExciseType100FDW)
    {
      Caption = 'Sales Excise Type (Outbound)';
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
    field(71624783; "Is Inbound 101FDW"; Boolean)
    {
      Caption = ' Is Inbound';
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
      Caption = 'Financial Document Correction';
    }
    field(71624792; "Item Shpt. Entry No. 101FDW"; Integer)
    {
      Caption = 'Item Shpt. Entry No.';
    }
    field(71624793; "Item Type 106FDW"; Enum Microsoft.Inventory.Item."Item Type")
    {
      Caption = 'Item Type';
    }
    field(71624800; "Excluded for Pay. Disc. 101FDW"; Boolean)
    {
      Caption = 'Excluded for Payment Discount';
    }
    field(71624801; "Paym. Disc. Amnt. Excl. 101FDW"; Decimal)
    {
      Caption = 'Payment Discount Amount Excluded';
    }
    field(71624802; "Recalc. Attached Lines 101FDW"; Boolean)
    {
      Caption = 'Recalculate Attached Lines';
    }
  }
}