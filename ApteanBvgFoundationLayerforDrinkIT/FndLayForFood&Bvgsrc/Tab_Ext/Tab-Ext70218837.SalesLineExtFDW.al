tableextension 70218837 SalesLineExtFDW extends "Sales Line"
{
  fields
  {
    field(70218825; "Automated Packaging 05 FDW"; Boolean)
    {
      Caption = 'Automated Packaging';
    }
    field(70218826; TransportFloorSpaceType20FDW; Code[20])
    {
      Caption = 'Transport Floor Space Type';
    }
    field(70218827; CalcTranspFloorSpaceType20FDW; Decimal)
    {
      Caption = 'Calculated Transport Floor Space Type';
    }
    field(70218828; LineAmountPriceDiscount19FDW; Decimal)
    {
      Caption = 'Line Amount Price Discount';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218829; UnitPriceIncLineDiscount19FDW; Decimal)
    {
      Caption = 'Unit Price Including Line Discount';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218830; PriceDiscRoundingLine19FDW; Boolean)
    {
      Caption = 'Price Discount Rounding Line';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218831; VATBaseAmountPriceDisc19FDW; Decimal)
    {
      Caption = 'VAT Base Amount Price Discount';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218832; InvoiceDiscPriceDisc19FDW; Decimal)
    {
      Caption = 'Invoice Discount Price Discount';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218833; IdentificationCode19FDW; Code[20])
    {
      Caption = 'Allowance or Charge Identification Code';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218834; "Package Type 19 FDW"; Code[20])
    {
      Caption = 'Package Type';
      ObsoleteReason = 'This field is not needed and it should not be used.';
      ObsoleteState = Removed;
    }
    field(70218835; "Shipment Variance 24 FDW"; Decimal)
    {
      Caption = 'Shipment Variance';
    }
    field(70218836; "Shipment Variance (Base) 24FDW"; Decimal)
    {
      Caption = 'Shipment Variance (Base)';
    }
    field(70218837; "Underdelivery 24 FDW"; Boolean)
    {
      Caption = 'Underdelivery';
    }
    field(70218838; "Allowed Underdelivery % 24 FDW"; Integer)
    {
      Caption = 'Allowed Underdelivery %';
    }
    field(70218839; "Allowed Overdelivery % 24 FDW"; Integer)
    {
      Caption = 'Allowed Overdelivery %';
    }
    field(70218840; "Trade Product Group 34 FDW"; Code[20])
    {
      Caption = 'Trade Product Group';
    }
    field(70218841; OverUnderDelivReasonCode24FDW; Code[10])
    {
      Caption = 'Over & Underdelivery Reason Code';
    }
    field(70218842; "Check Shipment Variance 24 FDW"; Boolean)
    {
      Caption = 'Check Shipment Variance';
    }
    field(70218843; ContractStartDate131FDW; Date)
    {
      Caption = 'Contract Start Date';
    }
    field(70218844; ContractEndDate131FDW; Date)
    {
      Caption = 'Contract End Date';
    }
    field(70218845; ContractClosed131FDW; Boolean)
    {
      Caption = 'Contract Closed';
    }
    field(70218846; ContractNo131FDW; Code[20])
    {
      Caption = 'Contract No.';
    }
    field(70218847; ContractLineNo131FDW; Integer)
    {
      Caption = 'Contract Line No.';
    }
    field(70218848; ContractExist131FDW; Boolean)
    {
      Caption = 'Contract Exist';
    }
    field(70218850; GlobalLotAttrValueID0102FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 1';
    }
    field(70218851; GlobalLotAttrValueID0202FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 2';
    }
    field(70218852; GlobalLotAttrValueID0302FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 3';
    }
    field(70218853; GlobalLotAttrValueID0402FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 4';
    }
    field(70218854; GlobalLotAttrValueID0502FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 5';
    }
    field(70218855; GlobalLotAttrValueID0602FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 6';
    }
    field(70218856; GlobalLotAttrValueID0702FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 7';
    }
    field(70218857; GlobalLotAttrValueID0802FDW; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 8';
    }
    field(70218858; "Update Item Catalog 01FDW"; Boolean)
    {
      Caption = 'Update Item Catalog';
    }
    field(70218859; Backorder73FDW; Boolean)
    {
      Caption = 'Backorder';
    }
    field(70218860; BackOrderMovedTo73FDW; Code[20])
    {
      Caption = 'Backorder Moved To Sales Order No.';
    }
    field(70218861; BackOrderFrom73FDW; Code[20])
    {
      Caption = 'Backorder Moved From Sales Order No.';
    }
    field(70218862; TripNo20FDW; Code[3])
    {
      Caption = 'Trip No.';
    }
    field(70218866; ContractQtyOutstanding131FDW; Decimal)
    {
      Caption = 'Contract Qty Outstanding';
    }
    field(70218872; TradeProductGroup234FDW; Code[20])
    {
      Caption = 'Trade Product Group 2';
    }
    field(70218873; TradeProductGroup334FDW; Code[20])
    {
      Caption = 'Trade Product Group 3';
    }
    field(70218880; "Applied Currency Code 29FDW"; Code[10])
    {
      Caption = 'Applied Currency Code';
    }
    field(70218881; "Claims No. 93FDW"; Code[20])
    {
      Caption = 'Claims No.';
    }
    field(70218882; "Claims Line No. 93FDW"; Integer)
    {
      Caption = 'Claims Line No.';
    }
    field(70218883; DocumentPriceUOM93FDW; Code[10])
    {
      Caption = 'Document Price Unit Of Measure';
    }
    field(70218884; DocumentPriceUnitPrice93FDW; Decimal)
    {
      Caption = 'Document Price Unit Price';
    }
    field(70218885; OriginalItemNo93FDW; Code[20])
    {
      Caption = 'Original Item No.';
    }
    field(70218886; OriginalItemDescription93FDW; Text[100])
    {
      Caption = 'Original Item Description';
    }
    field(70218887; "Applied Price UOM Code FDW"; Code[10])
    {
      Caption = 'Applied Price Unit of Measure Code';
    }
    field(70218888; "Applied Unit Price FDW"; Decimal)
    {
      Caption = 'Applied Unit Price';
    }
    field(70218889; "Applied Discount Method FDW"; Integer)
    {
      Caption = 'Applied Discount Method';
    }
    field(70218890; "Applied Discount Value FDW"; Decimal)
    {
      Caption = 'Applied Discount Value';
    }
    field(70218891; "Applied Discount UOM Code FDW"; Code[10])
    {
      Caption = 'Applied Discount UOM Code';
    }
    field(70218892; "Post Via Container 89FDW"; Boolean)
    {
      Caption = 'Post Via Container';
    }
    field(70218893; UnitPriceFromPriceMatrix134FDW; Decimal)
    {
      Caption = 'Unit Price From Price Matrix';
    }
    field(70218894; "Original Order Qty. 65FDW"; Decimal)
    {
      Caption = 'Original Order Qty.';
    }
    field(70218895; "Cut Reason Code 65FDW"; Code[20])
    {
      Caption = 'Cut Reason Code';
    }
    field(70218896; PickMethodCode75FDW; Code[10])
    {
      Caption = 'Pick Method Code';
    }
    field(70218897; DropShipmentVendorNo147FDW; Code[20])
    {
      Caption = 'Drop Shipment Vendor No.';
    }
    field(70218849; ContractQtyOnOrders131FDW; Decimal)
    {
      Caption = 'Contract Qty On Orders';
      ObsoleteReason = 'This field is replaced by the field ContractQtyOnOrderBase131FDW';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(70218863; ContractQtyOnOrdersBase131FDW; Decimal)
    {
      Caption = 'Contract Qty On Orders (Base)';
      ObsoleteReason = 'This field is replaced by the field ContractQtyOnOrderBase131FDW';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(70218864; ContractQtyShipped131FDW; Decimal)
    {
      Caption = 'Contract Qty Shipped';
      ObsoleteReason = 'This field is replaced by the field ContractQtyShippedBase131FDW';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(70218865; ContractQtyInvoiced131FDW; Decimal)
    {
      Caption = 'Contract Qty Invoiced';
      ObsoleteReason = 'This field is replaced by the field ContractQtyInvoicedBase131FDW';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(70218867; ContractQtyReturned131FDW; Decimal)
    {
      Caption = 'Contract Qty Returned';
      ObsoleteReason = 'This field is replaced by the field ContractQtyReturnedBase131FDW';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(70218868; ContractQtyCredited131FDW; Decimal)
    {
      Caption = 'Contract Qty Credited';
      ObsoleteReason = 'This field is replaced by the field ContractQtyCreditedBase131FDW';
      ObsoleteState = Pending;
      ObsoleteTag = '24.0';
    }
    field(70218869; ContractAltItemExists131FDW; Boolean)
    {
      Caption = 'Contract Alternate Item Exists';
    }
    // field(70218870; "Item Usage Type 142FDW"; Enum ItemUsageTypeFDW)
    // {
    //   Caption = 'Item Usage Type';
    // }
    field(70218871; "Transport Cost Doc. No. 20FDW"; Code[20])
    {
      Caption = 'Transport Cost Document No.';
    }
    field(70218898; PackagingCalculated05FDW; Boolean)
    {
      Caption = 'Packaging Calculated';
    }
    field(70218899; AllowReCalcPackaging05FDW; Boolean)
    {
      Caption = 'Allow Recalculate Packaging';
    }
    // field(70218900; PackagingTransactionType05FDW; Enum PackagingTransactionType05FDW)
    // {
    //   Caption = 'Packaging Transaction Type';
    // }
    field(70218901; NonPckgItemRefLineNo05FDW; Integer)
    {
      Caption = 'Non Packaging Item Ref. Line No.';
    }
    field(70218879; DocumentTypeFilter131FDW; Enum Microsoft.Sales.Document."Sales Document Type")
    {
      Caption = 'Document Type Filter';
    }
    field(70218874; ContractQtyOnOrderBase131FDW; Decimal)
    {
      Caption = 'Contract Qty On Open Sales Documents (Base)';
    }
    field(70218875; ContractQtyShippedBase131FDW; Decimal)
    {
      Caption = 'Contract Qty Shipped (Base)';
    }
    field(70218876; ContractQtyInvoicedBase131FDW; Decimal)
    {
      Caption = 'Contract Qty Invoiced (Base)';
    }
    field(70218877; ContractQtyReturnedBase131FDW; Decimal)
    {
      Caption = 'Contract Qty Returned (Base)';
    }
    field(70218878; ContractQtyCreditedBase131FDW; Decimal)
    {
      Caption = 'Contract Qty Credited (Base)';
    }
    field(70218902; CreatedBySalesPriceAPI29FDW; Boolean)
    {
      Caption = 'Created by Sales Price API';
    }
    field(70218903; ItemChrgAssignByWeightQty58FDW; Boolean)
    {
      Caption = 'Item Charge Assigned By Weight Quantity';
    }
    field(70218904; ItemPurchaser137FDW; Code[20])
    {
      Caption = 'Item Purchaser';
    }
    field(70218905; BackorderFromLineNo73FDW; Integer)
    {
      Caption = 'Backorder Moved from Sales Line No.';
    }
    field(70218906; "No. of Backorders 73FDW"; Integer)
    {
      Caption = 'No. of Backorders';
    }
    // field(70218907; HoldStatus29FDW; Enum SalesLineHoldStatusFDW)
    // {
    //   Caption = 'Invoice Hold Status';
    // }
    field(70218908; SurchargeCode200FDW; Code[20])
    {
      Caption = 'Surcharge Code';
    }
    field(70218909; ExcludeFromSurcharge200FDW; Boolean)
    {
      Caption = 'Exclude from Surcharge';
    }
    field(70218910; ExcludeFromBracketPricing29FDW; Boolean)
    {
      Caption = 'Exclude From Bracket Pricing';
    }
    field(70218911; RecalculatePrepmtAmount58FDW; Boolean)
    {
      Caption = 'Recalculate Prepayment Amount';
    }
    field(70218912; ContractQtyRetOrdBase131FDW; Decimal)
    {
      Caption = 'Contract Qty on Open Sales Return Documents (Base)';
    }
    field(70218913; ItemConfigCode01137FDW; Code[10])
    {
      Caption = 'Item Configurable Code 01';
    }
    field(70218914; ItemConfigCode02137FDW; Code[10])
    {
      Caption = 'Item Configurable Code 02';
    }
    field(70218915; ItemConfigCode03137FDW; Code[10])
    {
      Caption = 'Item Configurable Code 03';
    }
    field(70218916; ItemConfigCode04137FDW; Code[10])
    {
      Caption = 'Item Configurable Code 04';
    }
    field(70218917; ItemConfigCode05137FDW; Code[10])
    {
      Caption = 'Item Configurable Code 05';
    }
    field(70218918; SurchargeLineNo200FDW; Integer)
    {
      Caption = 'Surcharge Line No.';
    }
    field(70218919; SurchargeParentLineNo200FDW; Integer)
    {
      Caption = 'Surcharge Parent Line No.';
    }
    field(70218920; SalesSurchProdGroup200FDW; Code[20])
    {
      Caption = 'Surcharge Product Group';
    }
  }
}