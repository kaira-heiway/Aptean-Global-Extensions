// pageextension 71624845 WarehouseReceipt107FDW extends "Warehouse Receipt"
// {
//   layout
//   {
//     addafter(WhseReceiptLines)
//     {
//       group("LOG Logistics 107FDW")
//       {
//         Caption = 'Logistics';
//          field("LOG Vehicle Code 107FDW"; Rec."Vehicle Code 101FDW")
//         {
//         }
//         field("Log Driver 107FDW"; Rec."Log Driver 107FDW")
//         {
//         }
//         field("Trailer 107FDW"; Rec."Trailer 107FDW")
//         {
//         }
//       }
//     }
//   }
// }
