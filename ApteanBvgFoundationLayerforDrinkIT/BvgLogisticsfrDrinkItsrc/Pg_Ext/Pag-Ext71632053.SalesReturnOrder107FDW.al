// pageextension 71632053 SalesReturnOrder107FDW extends "Sales Return Order"
// {
//   layout
//   {
//     addafter("Foreign Trade")
//     {
//       group("LOG Logistics 107FDW")
//       {
//         Caption = 'Logistics';

//         // field("Route 107FDW"; Rec."Route 107FDW")
//         // {
//         // }
//         field("Route Limit 107FDW"; Rec."Route Limit 107FDW")
//         {
//         }
//         // field("Delivery Sequence 107FDW"; Rec."Delivery Sequence 107FDW")
//         // {
//         //   Visible = false;
//         // }
//         field("Unload Zone Left 107FDW"; Rec."Unload Zone Left 107FDW")
//         {
//         }
//         field("Unload Zone Right 107FDW"; Rec."Unload Zone Right 107FDW")
//         {
//         }
//         field("Unload Zone Back 107FDW"; Rec."Unload Zone Back 107FDW")
//         {
//         }
//         // field("Route Planning No. 107FDW"; Rec."Route Planning No. 107FDW")
//         // {
//         // }
//         // field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
//         // {
//         // }
//         // field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
//         // {
//         // }
//         field("LOG Co-driver 107FDW"; Rec."Co-Driver 107FDW")
//         {
//         }
//         // field("Trailer 107FDW"; Rec."Trailer 107FDW")
//         // {
//         // }
//         field("Delivery Type 107FDW"; Rec."Delivery Type 107FDW")
//         {
//         }
//         field("Delivery Time Code 107FDW"; Rec."Delivery Time Code 107FDW")
//         {
//         }
//         field("Opening Time 107FDW"; Rec."Opening Time 107FDW")
//         {
//         }
//         field("Closing Time 107FDW"; Rec."Closing Time 107FDW")
//         {
//         }
//         field("LOG Non Working 107FDW"; Rec."Nonworking Day 107FDW")
//         {
//         }
//         field("Key Number 107FDW"; Rec."Key Number 107FDW")
//         {
//         }
//         field("Cue Scan Type 107FDW"; Rec."Cue Scan Type 107FDW")
//         {
//         }
//         field("Key Scan Code 107FDW"; Rec."Key Scan Code 107FDW")
//         {
//         }
//         // field("Logistic Status 107FDW"; Rec."Logistic Status 107FDW")
//         // {
//         // }
//       }
//     }
//     modify("Shipping Agent Code")
//     {
//       Editable = EditableShippingAgent;
//     }
//     modify("Shipping Agent Service Code")
//     {
//       Editable = EditableShippingAgentService;
//     }
//     modify("Location Code")
//     {
//       Editable = Editablelocation;
//     }
//     // modify("Shipment Date")
//     // {
//     // }
//     addafter(Control1900316107)
//     {
//     //   part("LOG Transport Unit 107FDW"; SalTransUnitFactbox107FDW)
//     //   {
//     //     Visible = true;
//     //   }
//     }
//   }
//   actions
//   {
//     addafter(DocAttach)
//     {
//       group("LOG Logistic 107FDW")
//       {
//         Caption = 'Logistics';

//         action("LOG Next Shipment Date 107FDW")
//         {
//           Caption = 'Next Shipment Date';
//         }
//         action("LOG Previous Shipment Date 107FDW")
//         {
//           Caption = 'Previous Shipment Date';
//         }
//         action("LOG Next Logistic Status 107FDW")
//         {
//           Caption = 'Update to next Logistic Status';
//         }
//         action("LOG Previous Logistic Status 107FDW")
//         {
//           Caption = 'Update to Previous Logistic Status';
//         }
//       }
//     }
//   }
//   var LOGRoute: Record Route107FDW;
// //   FeatureControlManagement: Codeunit FeatureControlManagement107FDW;
// //   LOGIntlLogisticsHook: Codeunit IntlLogisticsHook107FDW;
// //   LOGIntlSalesRouteRqst: Codeunit IntlSalesRouteRqst107FDW;
//   Editablelocation: Boolean;
//   EditableRouteFields: Boolean;
//   EditableShippingAgent: Boolean;
//   EditableShippingAgentService: Boolean;
//   LogFactboxVisible: Boolean;
//   NewShipmentDate: Date;
//   ShownDriverNotifications: Dictionary of[Text, Boolean];
// }