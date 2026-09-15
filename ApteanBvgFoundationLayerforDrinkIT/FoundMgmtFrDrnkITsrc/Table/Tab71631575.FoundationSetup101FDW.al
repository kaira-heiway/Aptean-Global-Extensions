table 71631575 FoundationSetup101FDW
{
  Caption = 'Foundation Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Unit Volume UOM"; Code[10])
    {
      Caption = 'Unit Volume UOM';
    }
    field(3; "Add. Rep. Unit Volume UOM"; Code[10])
    {
      Caption = 'Add. Rep. Unit Volume UOM';
    }
    field(6; "Volume Ratio"; Decimal)
    {
      Caption = 'Volume Ratio';
    }
    field(7; "Net Weight UOM101FDW"; Code[10])
    {
      Caption = 'Net Weight UOM';
    }
    field(8; "Add. Rep. Net Weight UOM"; Code[10])
    {
      Caption = 'Add. Rep. Net Weight UOM';
    }
    field(9; "Gross Weight UOM101FDW"; Code[10])
    {
      Caption = 'Gross Weight UOM';
    }
    field(10; "Add. Rep. Gross Weight UOM"; Code[10])
    {
      Caption = 'Add. Rep. Gross Weight UOM';
    }
    field(11; "Net Weight Ratio"; Decimal)
    {
      Caption = 'Net Weight Ratio';
    }
    field(12; "Gross Weight Ratio"; Decimal)
    {
      Caption = 'Gross Weight Ratio';
    }
    field(13; "Strength 1 Unit of Measure"; Code[10])
    {
      Caption = 'Strength 1 Unit of Measure';
    }
    field(14; "Strength 2 Unit of Measure"; Code[10])
    {
      Caption = 'Strength 2 Unit of Measure';
    }
    field(18; "Sales Quote Reason Code"; Code[10])
    {
      Caption = 'Sales Quote Reason Code';
    }
    field(19; "Sales Blank. Order Reason Code"; Code[10])
    {
      Caption = 'Sales Blanket Order Reason Code';
    }
    field(20; "Sales Order Reason Code"; Code[10])
    {
      Caption = 'Sales Order Reason Code';
    }
    field(21; "Sales Return Reason Code"; Code[10])
    {
      Caption = 'Sales Return Reason Code';
    }
    field(22; "Sales Invoice Reason Code"; Code[10])
    {
      Caption = 'Sales Invoice Reason Code';
    }
    field(23; "Sales Cr.Memo Reason Code"; Code[10])
    {
      Caption = 'Sales Cr.Memo Reason Code';
    }
    field(30; "Purch. Order Reason Code"; Code[10])
    {
      Caption = 'Purch. Order Reason Code';
    }
    field(31; "Purch. Return Reason Code"; Code[10])
    {
      Caption = 'Purch. Return Reason Code';
    }
    field(32; "Purch. Invoice Reason Code"; Code[10])
    {
      Caption = 'Purch. Invoice Reason Code';
    }
    field(33; "Purch. Cr.Memo Reason Code"; Code[10])
    {
      Caption = 'Purch. Cr.Memo Reason Code';
    }
    field(34; "Purch. Quote Reason Code"; Code[10])
    {
      Caption = 'Purchase Quote Reason Code';
    }
    field(35; "Purch. Blnk. Order Reason Code"; Code[10])
    {
      Caption = 'Purchase Blanket Order Reason Code';
    }
    field(40; "Apply Per Posting Group"; Boolean)
    {
      Caption = 'Apply Per Posting Group';
    }
    field(41; "Pallet Unit Of Measure"; Code[10])
    {
      Caption = 'Pallet Place Unit of Measure';
    }
    field(45; "Sync Weight to Item UOM"; Enum WeightType101FDW)
    {
      Caption = 'Sync Weight to Item UOM';
    }
    field(50; "Publish Pr in Cons UM101FDW"; Boolean)
    {
      Caption = 'Publish Prices in Consumption Unit of Measure';
    }
    field(55; "Publish Pr in Tr UM101FDW"; Boolean)
    {
      Caption = 'Publish Prices in Transport Unit of Measure';
    }
    field(60; "Allow DIT Lines Recalculation"; Enum AllowLineRecalc101FDW)
    {
      Caption = 'Allow DIT Lines recalculation on released orders';
    }
    field(61; "Item Dimension 1 Code"; Code[20])
    {
      Caption = 'Item Dimension 1 Code';
    }
    field(62; "Item Dimension 2 Code"; Code[20])
    {
      Caption = 'Item Dimension 2 Code';
    }
    field(63; "Item Dimension 3 Code"; Code[20])
    {
      Caption = 'Item Dimension 3 Code';
    }
    field(64; "Default Expected Receipt Date"; Enum IntlDefExpRcpt101FDW)
    {
      Caption = 'Default Expected Receipt Date';
    }
    field(70; "Sync. Ship. to Post. Date"; Boolean)
    {
      Caption = 'Sync. Sales Shipment Date to Posting Date';
    }
    field(71; "Sync. Purch. Rcpt to Post Date"; Boolean)
    {
      Caption = 'Sync. Purchase Receipt Date to Posting Date';
    }
    field(80; "Prevent Inv from Comb Shpt Ord"; Boolean)
    {
      Caption = 'Prevent Invoice from Combine Shpt. Sales Order';
    }
    field(81; "Reason Code Sales101FDW"; Code[10])
    {
      Caption = 'Sales Blanket Order (Event) Reason Code';
    }
    field(82; "Reason Code Purch101FDW"; Code[10])
    {
      Caption = 'Purchase Blanket Order (Event) Reason Code';
    }
    field(83; "Default Location"; Code[10])
    {
      Caption = 'Default Location';
    }
    field(100; "Skip S.Amount Approval LowEq"; Boolean)
    {
      Caption = 'Skip Sales Approved Amounts Approval Requests';
    }
    field(101; "Consumption Rounding Type"; Enum Rounding101FDW)
    {
      Caption = 'Consumption Rounding Type';
    }
    field(102; "Consumption Rounding Precision"; Decimal)
    {
      Caption = 'Consumption Rounding Precision';
    }
    field(103; "Sync Tariff UOM to Item101FDW"; Boolean)
    {
      Caption = 'Sync Tariff UOM to Item';
      ObsoleteState = Pending;
      ObsoleteTag = '26.0';
      ObsoleteReason = 'Field has been obsoleted and is no longer used.';
    }
    field(110; "Max Parallel Sessions101FDW"; Integer)
    {
      Caption = 'Maximum Parallel Price Sessions';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
  //var IntlGeneralHook101FDW: Codeunit IntlGeneralHook101FDW;
}