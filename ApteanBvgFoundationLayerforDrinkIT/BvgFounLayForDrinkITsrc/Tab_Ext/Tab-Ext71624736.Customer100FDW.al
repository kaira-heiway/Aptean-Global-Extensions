tableextension 71624736 Customer100FDW extends Customer
{
  fields
  {
    field(71624731; "Suppr. Bill-to Wrng 114FDW"; Boolean)
    {
      Caption = 'Suppress Bill-to Warning';
    }
    field(71624732; "Tax Registration No. 113FDW"; Text[20])
    {
      Caption = 'Tax Registration No.';
    }
    field(71624733; "Tax Warehouse Ref. 113FDW"; Code[20])
    {
      Caption = 'Tax Warehouse Reference';
    }
    field(71624734; "Transport Method Code 113FDW"; Code[10])
    {
      Caption = 'Transport Method';
    }
    field(71624735; "Destination Type 113FDW"; Enum EMCSDestinationType100FDW)
    {
      Caption = 'Destination Type';
    }
    field(71624736; "Fiscal Rep. No. 113FDW"; Code[20])
    {
      Caption = 'Fiscal Representative No.';
    }
    // field(71624737; "Send 815 on Sales Ord 113FDW"; Option Default, No, Yes)
    // {
    //   Caption = 'Allow Send IE815 on Sales Order';
    // }
    field(71624738; "Transaction Spec. 113FDW"; Code[10])
    {
      Caption = 'Transaction Specification';
      ObsoleteState = Pending;
      ObsoleteTag = '21.0';
      ObsoleteReason = 'Field Not Used';
    }
    field(71624739; "Transaction Type 113FDW"; Code[10])
    {
      Caption = 'Transaction Type';
      ObsoleteState = Pending;
      ObsoleteTag = '21.0';
      ObsoleteReason = 'Field Not Used';
    }
    field(71624740; "Exit Point 113FDW"; Code[10])
    {
      Caption = 'Entry/Exit Point';
    }
    field(71624741; "Area 113FDW"; Code[10])
    {
      Caption = 'Area';
      ObsoleteState = Pending;
      ObsoleteTag = '21.0';
      ObsoleteReason = 'Field Not Used';
    }
    field(71624742; "Transport Arrangement 113FDW"; Enum TransportArrangement100FDW)
    {
      Caption = 'Transport Arrangement';
    }
    field(71624743; "Create 815 on S.O Rel. 113FDW"; Enum Create815SORelYes100FDW)
    {
      Caption = 'Create IE815 on Sales Order Release';
    }
    field(71624744; "Create 815 Ptd. Shpt. 113FDW"; Enum Create815PstShpYes100FDW)
    {
      Caption = 'Create IE815 from Posted Shpt. Automatically';
    }
    field(71624745; "Exclusivity Cust. 106FDW"; Boolean)
    {
      Caption = 'Exclusivity Customer';
    }
    // field(71624746; "Add Sold Itms Sal C 106FDW"; Enum IntlAddSoldItemsSalC100FDW)
    // {
    //   Caption = 'Add New Sold Items to Sales Code';
    // }
    // field(71624747; "Customer Type 106FDW"; Enum IntlCustomerType100FDW)
    // {
    //   Caption = 'Customer Type';
    // }
    field(71624748; "Del.-by Cust. No. 106FDW"; Code[20])
    {
      Caption = 'Delivered-by Customer No.';
    }
    field(71624749; "Customer Relations 106FDW"; Boolean)
    {
      Caption = 'Customer Relations';
    }
    field(71624750; "Ind. Sales Contact 106FDW"; Code[20])
    {
      Caption = 'Indirect Sales Contact';
    }
    field(71624751; "Call Entry Contact 106FDW"; Code[20])
    {
      Caption = 'Call Entry Contact';
    }
    field(71624752; "Contact Name 106FDW"; Text[100])
    {
      Caption = 'Contact Name';
    }
    field(71624753; "Call Entry Group 106FDW"; Code[10])
    {
      Caption = 'Call Entry Group';
    }
    field(71624754; "Ext.Doc. No. mand. 106FDW"; Enum IntlExtDocMandatYES100FDW)
    {
      Caption = 'Ext. Document No. on Release mandatory';
    }
    // field(71624755; "Item Reference On 106FDW"; Enum ItemRefCustomer100FDW)
    // {
    //   Caption = 'Item Reference On';
    // }
    field(71624756; "Item Ref. Cust. No. 106FDW"; Code[20])
    {
      Caption = 'Item Reference Customer No.';
    }
    // field(71624757; "Default Route 107FDW"; Code[10])
    // {
    //   Caption = 'Default Route';
    // }
    // field(71624758; "Two Drivers Req. 107FDW"; Boolean)
    // {
    //   Caption = 'Two Drivers Required';
    // }
    field(71624759; "Key Number 107FDW"; Text[100])
    {
      Caption = 'Key Number';
    }
    field(71624760; "Cue Scan Type 107FDW"; Enum IntlScanType100FDW)
    {
      Caption = 'Cue Scan Type';
    }
    field(71624761; "Key Scan Code 107FDW"; Text[100])
    {
      Caption = 'Key Scan Code';
    }
    field(71624762; "Delivery Type 107FDW"; Code[10])
    {
      Caption = 'Delivery Type';
    }
    field(71624763; "Unload Zone Left 107FDW"; Boolean)
    {
      Caption = 'Unload Zone Left';
    }
    field(71624764; "Unload Zone Right 107FDW"; Boolean)
    {
      Caption = 'Unload Zone Right';
    }
    field(71624765; "Unload Zone Back 107FDW"; Boolean)
    {
      Caption = 'Unload Zone Back';
    }
    field(71624766; "Route Limit 107FDW"; Boolean)
    {
      Caption = 'Route Limit';
    }
    // field(71624770; "Customer Type 105FDW"; Enum InlBilltoSelltoType100FDW)
    // {
    //   Caption = 'Condition Customer Type';
    // }
    field(71624771; "Customer No. 105FDW"; Code[20])
    {
      Caption = 'Condition Customer No.';
    }
    field(71624772; "Business Group 104FDW"; Code[20])
    {
      Caption = 'Empty Goods Business Group';
    }
    field(71624773; "Payment Terms Code 104FDW"; Code[10])
    {
      Caption = 'Empty Goods Payment Terms Code';
    }
    field(71624774; "Payment Method Code 104FDW"; Code[10])
    {
      Caption = 'Empty Goods Payment Method Code';
    }
    field(71624775; "Cust. Posting Group 104FDW"; Code[20])
    {
      Caption = 'Empty Goods Customer Posting Group';
    }
    field(71624776; "Deposit Bal. (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Balance (LCY)';
    }
    field(71624777; "Dep. Bal. Due (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Balance Due (LCY)';
    }
    field(71624778; "Deposit Limit (LCY) 104FDW"; Decimal)
    {
      Caption = 'Deposit Limit (LCY)';
    }
    field(71624779; "Docum. Calc. Point 104FDW"; Enum IntlCustVendCalcPoint100FDW)
    {
      Caption = 'Empty Goods Document Calc. Point';
    }
    field(71624780; "Allow Neg.Val.Inv. 104FDW"; Boolean)
    {
      Caption = 'Allow Negative Value Invoices';
    }
    field(71624781; "Statement On 104FDW"; Enum IntlStatementType100FDW)
    {
      Caption = 'Empty Goods Statement On';
    }
    field(71624782; "Dep. Amounts Stat. 104FDW"; Boolean)
    {
      Caption = 'Deposit Amounts On Statement';
    }
    field(71624783; "Ret. Entry to ROrd. 104FDW"; Boolean)
    {
      Caption = 'Empty Good Return Entry to Return Order';
    }
    field(71624784; "Doc. Calc. Point 102FDW"; Enum CustVendCalcPoint100FDW)
    {
      Caption = 'Tax Document Calc. Point';
    }
    // field(71624785; "Default Class. 102FDW"; Code[20])
    // {
    //   Caption = 'Default Tax Classification';
    // }
    field(71624786; "Tax Office Code 102FDW"; Code[20])
    {
      Caption = 'Tax Office Code';
    }
    field(71624787; "Prices Inc. Tax 101FDW"; Boolean)
    {
      Caption = 'Prices Inc. Tax Charges';
    }
    field(71624788; "Prices Inc. Deposit 101FDW"; Boolean)
    {
      Caption = 'Prices Inc. Deposit Charges';
    }
    field(71624789; "Prices Inc. Conditions 101FDW"; Boolean)
    {
      Caption = 'Prices Inc. Condition Charges';
    }
    field(71624790; "Volume 1 101FDW"; Decimal)
    {
      Caption = 'Volume 1';
    }
    field(71624791; "Volume 2 101FDW"; Decimal)
    {
      Caption = 'Volume 2';
    }
    // field(71624792; "Publish Pr in Cons UOM 101FDW"; Enum PublPricesByUOM100FDW)
    // {
    //   Caption = 'Publish Prices in Consumption Unit of Measure';
    // }
    field(71624793; "Document Type Filter 101FDW"; Integer)
    {
      Caption = 'Document Type Filter';
    }
    // field(71624794; "Publish Pr in Tr UOM 101FDW"; Enum PublPricesByUOM100FDW)
    // {
    //   Caption = 'Publish Prices in Transport Unit of Measure';
    // }
    field(71624795; "Document No. Filter 101FDW"; Code[20])
    {
      Caption = 'Document No. Filter';
    }
    field(71624796; "Invoice Period 101FDW"; Enum InvoicePeriod100FDW)
    {
      Caption = 'Invoice Period';
    }
    field(71624797; "Period Length 101FDW"; DateFormula)
    {
      Caption = 'Period Length';
    }
    field(71624798; "Full Ret.Entry to ROrd. 104FDW"; Boolean)
    {
      Caption = 'Full Good Return Entry to Return Order';
    }
    field(71624800; "Price Calc Meth v15 105FDW"; Enum Microsoft.Pricing.Calculation."Price Calculation Method")
    {
      Caption = 'Price Calculation Method';
    }
    field(71624801; "Minimum Order Amount 106FDW"; Decimal)
    {
      Caption = 'Minimum Order Amount Excl. VAT';
    }
    field(71624802; "Event Invoice Period 115FDW"; Enum InvoicePeriod100FDW)
    {
      Caption = 'Event Invoice Period';
    }
    field(71624803; "Event Period Length 115FDW"; DateFormula)
    {
      Caption = 'Event Period Length';
    }
    field(71624804; "Cond. Cust. Date Type 105FDW"; Enum IntlSalesCondDateType100FDW)
    {
      Caption = 'Condition Customer Date Type';
    }
    field(71624805; "Payment Customer 106FDW"; Boolean)
    {
      Caption = 'Payment Customer';
    }
    field(71624806; "Payment-from Cust. No. 106FDW"; Code[20])
    {
      Caption = 'Payment-from Customer No.';
    }
  }
  keys
  {
    key(FiscalRepNo113FDW; "Fiscal Rep. No. 113FDW")
    {
    }
  }
}