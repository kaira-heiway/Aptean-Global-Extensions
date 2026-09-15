tableextension 70218825 CustomerExtensionFDW extends Customer
{
  fields
  {
    field(70218825; "Item Catalog Mandatory 01 FDW"; Boolean)
    {
      Caption = 'Item Catalog Mandatory';
    }
    field(70218826; SalesPriceReferenceDate29FDW; Integer)
    {
      Caption = 'Sales Price Reference Date';
    }
    field(70218827; "Logistical Time 12 FDW"; Time)
    {
      Caption = 'Logistical Time';
    }
    field(70218828; "Underdelivery Allowed 24 FDW"; Boolean)
    {
      Caption = 'Underdelivery Allowed';
    }
    field(70218829; "Overdelivery Allowed 24 FDW"; Boolean)
    {
      Caption = 'Overdelivery Allowed';
    }
    field(70218830; SalesPriceRefCustomer29FDW; Code[20])
    {
      Caption = 'Sales Price Reference Customer';
    }
    field(70218831; "Status Mgt. Status Code 33FDW"; Code[20])
    {
      Caption = 'Status Management Status Code';
    }
    field(70218832; "Status Mgt. Filter Group 33FDW"; Code[20])
    {
      Caption = 'Status Management Filter Group Code';
    }
    field(70218833; "Trade Business Group 34 FDW"; Code[20])
    {
      Caption = 'Trade Business Group';
    }
    field(70218834; "DsblExtDocNoChk 60FDW"; Boolean)
    {
      Caption = 'Disable External Document Number Check';
    }
    field(70218835; "ExtDocNoReuseDateCalc 60FDW"; DateFormula)
    {
      Caption = 'External Doc. No. Reuse Date Calc';
    }
    field(70218836; InsideSalespersonCode59FDW; Code[20])
    {
      Caption = 'Inside Salesperson Code';
    }
    field(70218837; ReqUnderDeliveryReasonCod24FDW; Boolean)
    {
      Caption = 'Requires Underdelivery Reason Code';
    }
    field(70218838; ReqOverDeliveryReasonCode24FDW; Boolean)
    {
      Caption = 'Requires Overdelivery Reason Code';
    }
    field(70218839; "Bus. Posting Type Code 66FDW"; Code[20])
    {
      Caption = 'Business Posting Type Code';
    }
    // field(70218840; CombineShipReturnBy95FDW; Enum CombineShipReturnBy95FDW)
    // {
    //   Caption = 'Combine Shipment & Returns By';
    // }
    // field(70218841; CombineShipReturnSOW95FDW; Enum CombineShipReturnSOW95FDW)
    // {
    //   Caption = 'Combine Shipment & Returns Start Of Week';
    // }
    field(70218842; PriceBasis134FDW; Code[20])
    {
      Caption = 'Price Basis';
    }
    field(70218843; PickMethodCode75FDW; Code[10])
    {
      Caption = 'Pick Method Code';
    }
    // field(70218844; CombineShipmentPer95FDW; Enum CombineShipmentPer95FDW)
    // {
    //   Caption = 'Combine Shipment Per';
    // }
    field(70218845; TradeBusinessGroup234FDW; Code[20])
    {
      Caption = 'Trade Business Group 2';
    }
    field(70218846; TradeBusinessGroup334FDW; Code[20])
    {
      Caption = 'Trade Business Group 3';
    }
    field(70218847; "Freight Region 34FDW"; Code[20])
    {
      Caption = 'Freight Region';
    }
    field(70218848; DeliveryStartingTime20FDW; Time)
    {
      Caption = 'Delivery Starting Time';
    }
    field(70218849; DeliveryEndingTime20FDW; Time)
    {
      Caption = 'Delivery Ending Time';
    }
    field(70218850; DeliveryAppointmentTime20FDW; Time)
    {
      Caption = 'Delivery Appointment Time';
    }
    field(70218851; BracketPricingGroupCode29FDW; Code[10])
    {
      Caption = 'Bracket Pricing Group Code';
    }
    field(70218852; RequireShipToCodeEcom160FDW; Boolean)
    {
      Caption = 'Require Ship-to Code for eCommerce Orders';
    }
    // field(70218853; AllowCancelRelOrders160FDW; Enum EcomFeatureEnabled160FDW)
    // {
    //   Caption = 'Allow Cancelling Released Orders';
    // }
    // field(70218854; RestrictEcomToCatalog160FDW; Enum EcomFeatureEnabled160FDW)
    // {
    //   Caption = 'Restrict E-Commerce to Catalog';
    // }
    field(70218855; ConfigurableCode01137FDW; Code[10])
    {
      Caption = 'Configurable Code 01';
    }
    field(70218856; ConfigurableCode02137FDW; Code[10])
    {
      Caption = 'Configurable Code 02';
    }
    field(70218857; ConfigurableCode03137FDW; Code[10])
    {
      Caption = 'Configurable Code 03';
    }
    field(70218858; ConfigurableCode04137FDW; Code[10])
    {
      Caption = 'Configurable Code 04';
    }
    field(70218859; ConfigurableCode05137FDW; Code[10])
    {
      Caption = 'Configurable Code 05';
    }
    // field(70218860; RepriceOrders29FDW; Enum RepriceOrdersFDW)
    // {
    //   Caption = 'Reprice Sales Orders';
    // }
    field(70218861; SurchargeBusinessGroup200FDW; Code[20])
    {
      Caption = 'Surcharge Business Group';
    }
    field(70218862; "Allowed % Underdelivery 24 FDW"; Integer)
    {
      Caption = 'Allowed % Underdelivery';
    }
    field(70218863; "Allowed % Overdelivery 24 FDW"; Integer)
    {
      Caption = 'Allowed % Overdelivery';
    }
  }
}