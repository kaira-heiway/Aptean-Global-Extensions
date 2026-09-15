tableextension 71624808 SalesShipmentHeader100FDW extends "Sales Shipment Header"
{
  fields
  {
    field(71624737; "Route 107FDW"; Code[10])
    {
      Caption = 'Route';
    }
    field(71624738; "Multiple Route Ord. 107FDW"; Boolean)
    {
      Caption = 'Multiple Route Order';
    }
    field(71624739; "Log Driver 107FDW"; Code[10])
    {
      Caption = 'Driver';
    }
    field(71624740; "Key Number 107FDW"; Text[100])
    {
      Caption = 'Key Number';
    }
    field(71624741; "Opening Time 107FDW"; Time)
    {
      Caption = 'Delivery from time';
    }
    field(71624742; "Closing Time 107FDW"; Time)
    {
      Caption = 'Delivery to time';
    }
    field(71624743; "Delivery Type 107FDW"; Code[10])
    {
      Caption = 'Delivery Type';
    }
    field(71624744; "Cue Scan Type 107FDW"; Enum IntlScanType100FDW)
    {
      Caption = 'Cue Scan Type';
    }
    field(71624745; "Key Scan Code 107FDW"; Text[100])
    {
      Caption = 'Key Scan Code';
    }
    field(71624746; "Total Volume 107FDW"; Decimal)
    {
      Caption = 'Total Volume';
    }
    field(71624750; "Delivery Time Code 107FDW"; Code[10])
    {
      Caption = 'Delivery Time Code';
    }
    field(71624756; "Total Gross Weight 107FDW"; Decimal)
    {
      Caption = 'Total Gross Weight';
    }
    field(71624761; "Co-Driver 107FDW"; Code[10])
    {
      Caption = 'Co-Driver';
    }
    field(71624762; "Trailer 107FDW"; Code[10])
    {
      Caption = 'Trailer';
    }
    field(71624763; "Route Planning No. 107FDW"; Code[20])
    {
      Caption = 'Route Planning No.';
    }
    field(71624772; "Customer No. 105FDW"; Code[20])
    {
      Caption = 'Condition Customer No.';
    }
    field(71624779; "Vehicle Code 101FDW"; Code[10])
    {
      Caption = 'Vehicle Code';
    }
    field(71624785; "Blanket Order Type 101FDW"; Enum BlkSalesOrderType100FDW)
    {
      Caption = 'Blanket Sales Order Type';
    }
    field(71624786; "Blanket Order No. 101FDW"; Code[20])
    {
      Caption = 'Blanket Order No.';
    }
    field(71624791; "Loan No. 114FDW"; Code[20])
    {
      Caption = 'Loan No.';
    }
    field(71624792; "Loan Entry Type 114FDW"; Enum IntlLoanEntryType100FDW)
    {
      Caption = 'Loan Entry Type';
    }
    field(71624793; "Day 107FDW"; Enum IntlDays100FDW)
    {
      Caption = 'Day';
    }
    field(71624794; "Tot.Outs.Qty.(Base) 107FDW"; Decimal)
    {
      Caption = 'Total Outstanding Quantity (Base)';
    }
    field(71624804; "Payment-from Cust. No. 106FDW"; Code[20])
    {
      Caption = 'Payment-from Customer No.';
    }
  }
}