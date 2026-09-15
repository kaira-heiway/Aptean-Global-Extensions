tableextension 71624813 ShippingAgent100FDW extends "Shipping Agent"
{
  fields
  {
    field(71624729; "Address 113FDW"; Text[100])
    {
      Caption = 'Address';
    }
    field(71624730; "City 113FDW"; Text[30])
    {
      Caption = 'City';
    }
    field(71624731; "Post Code 113FDW"; Code[20])
    {
      Caption = 'Post Code';
    }
    field(71624732; "Country/Region 113FDW"; Code[10])
    {
      Caption = 'Country/Region Code';
    }
    field(71624733; "Transport Arrangement 113FDW"; Enum TransportArrangement100FDW)
    {
      Caption = 'Transport Arrangement';
    }
    field(71624734; "Consignor Guarantee 113FDW"; Boolean)
    {
      Caption = 'Consignor Guarantee';
    }
    field(71624735; "Journey Time 113FDW"; DateFormula)
    {
      Caption = 'Journey Time';
    }
    field(71624736; "First Transp. Trader 113FDW"; Code[20])
    {
      Caption = 'First Transporter Trader';
    }
    field(71624737; "VAT Registration No. 113FDW"; Code[20])
    {
      Caption = 'VAT Registration No.';
    }
    field(71624738; "Transport Method 113FDW"; Code[10])
    {
      Caption = 'Transport Method';
    }
    // field(71624739; "Guarantor Type 113FDW"; Enum GuarantorType100FDW)
    // {
    //   Caption = 'Guarantor Type';
    // }
  }
}