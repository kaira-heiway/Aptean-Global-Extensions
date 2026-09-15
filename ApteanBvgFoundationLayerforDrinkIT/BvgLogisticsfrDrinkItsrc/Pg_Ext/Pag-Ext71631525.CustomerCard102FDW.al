// pageextension 71631725 CustomerCard102FDW extends "Customer Card"
// {
//   layout
//   {
//     addafter(General)
//     {
//       group("TAX Management Group 102FDW")
//       {
//         Caption = 'Tax Management';

//         group(Validation102FDW)
//         {
//           Visible = true;

//         //   field("TAX TAXDocumentCalcPointValidation 102FDW"; TaxDocCalcPointValidation)
//         //   {
//         //     Caption = 'Tax Document Calc. Point';
//         //   }
//         }
//         group(Release102FDW)
//         {
//           Visible = true;

//         //   field("TAX TAXDocumentCalcPointRelease 102FDW"; TaxDocCalcPointRelease)
//         //   {
//         //     Caption = 'Tax Document Calc. Point';
//         //   }
//         }
//         // field("Classifications 102FDW"; Rec."Classifications 102FDW")
//         // {
//         // }
//         // field("TAX Default Classification 102FDW"; Rec."Default Class. 102FDW")
//         // {
//         // }
//         // field("Tax Office Code 102FDW"; Rec."Tax Office Code 102FDW")
//         // {
//         // }
//       }
//     }
//   }
//   actions
//   {
//     addbefore(Dimensions)
//     {
//       action("TAX Management 102FDW")
//       {
//         Caption = 'Tax Management';
//       }
//     }
//   }
//   var 
// //   FeatureControlManagement: Codeunit FeatureControlManagement102FDW;
// //   ShowDocCalcDefaultRelease: Boolean;
// //   ShowDocCalcDefaultValidation: Boolean;
// //   TaxDocCalcPointValidation: Enum CustVendCalcPoint100FDW;
// //   TaxDocCalcPointRelease: Enum CustVendCalcPointRel102FDW;
// }