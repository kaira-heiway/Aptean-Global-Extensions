tableextension 71624789 ReasonCode100FDW extends "Reason Code"
{
  fields
  {
    field(71624729; "Backorder Type 106FDW"; Enum IntlBackorderType100FDW)
    {
      Caption = 'Backorder Type';
    }
    field(71624730; "Free Line Discount 105FDW"; Enum IntlFreeMovementType100FDW)
    {
      Caption = 'Allow Free (Line Discount)';
    }
    // field(71624731; "Allow Price Change 105FDW"; Enum IntlDocPriceChngType100FDW)
    // {
    //   Caption = 'Allow Price Change';
    // }
    field(71624732; "Ignore Deposits 104FDW"; Boolean)
    {
      Caption = 'Ignore Deposits';
    }
    field(71624733; "Ignore Tax Charges 102FDW"; Boolean)
    {
      Caption = 'Ignore Tax Charges';
    }
    field(71624734; "Gen. Bus. Posting Grp 101FDW"; Code[20])
    {
      Caption = 'Gen. Bus. Posting Group';
    }
    field(71624735; "Gen. Prod. Posting Grp 101FDW"; Code[20])
    {
      Caption = 'Gen. Prod. Posting Group';
    }
    field(71624736; "VAT Bus. Posting Grp 101FDW"; Code[20])
    {
      Caption = 'VAT Bus. Posting Group';
    }
    field(71624737; "VAT Prod. Posting Grp 101FDW"; Code[20])
    {
      Caption = 'VAT Prod. Posting Group';
    }
    field(71624738; "Sales 101FDW"; Boolean)
    {
      Caption = 'Sales';
    }
    field(71624739; "Purchase 101FDW"; Boolean)
    {
      Caption = 'Purchase';
    }
    field(71624740; "Transfer 101FDW"; Boolean)
    {
      Caption = 'Transfer';
    }
    field(71624741; "Assembly 101FDW"; Boolean)
    {
      Caption = 'Assembly';
    }
    field(71624742; "Production 101FDW"; Boolean)
    {
      Caption = 'Production';
    }
    field(71624743; "Item journal 101FDW"; Boolean)
    {
      Caption = 'Item journal';
    }
    field(71624744; "General journal 101FDW"; Boolean)
    {
      Caption = 'General journal';
    }
    field(71624745; "Losses 101FDW"; Boolean)
    {
      Caption = 'Losses';
    }
    field(71624746; "Sales Tax Charge OnFree 102FDW"; Boolean)
    {
      Caption = 'Sales Tax Charge with 100% line discount';
    }
    field(71624747; "Warehouse Item Journal 101FDW"; Boolean)
    {
      Caption = 'Warehouse Item Journal';
    }
  }
}