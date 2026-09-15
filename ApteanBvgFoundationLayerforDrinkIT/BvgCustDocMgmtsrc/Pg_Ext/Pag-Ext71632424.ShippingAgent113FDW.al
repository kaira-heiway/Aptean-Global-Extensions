pageextension 71632424 ShippingAgent113FDW extends "Shipping Agents"
{
  layout
  {
    addafter(Name)
    {
      // field("Address 113FDW"; Rec."Address 113FDW")
      // {
      // }
      // field("City 113FDW"; Rec."City 113FDW")
      // {
      // }
      // field("Post Code 113FDW"; Rec."Post Code 113FDW")
      // {
      // }
      // field("Country/Region 113FDW"; Rec."Country/Region 113FDW")
      // {
      // }
      // field("Transport Method 113FDW"; Rec."Transport Method 113FDW")
      // {
      // }
      field("Transport Arrangement 113FDW"; Rec."Transport Arrangement 113FDW")
      {
      }
      // field("First Transp. Trader 113FDW"; Rec."First Transp. Trader 113FDW")
      // {
      // }
      field("Guarantor Type 113FDW"; Rec."Guarantor Type 113FDW")
      {
      }
      // field("Journey Time 113FDW"; Rec."Journey Time 113FDW")
      // {
      // }
      // field("VAT Registration No. 113FDW"; Rec."VAT Registration No. 113FDW")
      // {
      // }
    }
  }
  actions
  {
    addfirst(navigation)
    {
      action("Card 113FDW")
      {
        Caption = 'Card';
      }
    }
    addlast(Category_New)
    {
    }
  }
}