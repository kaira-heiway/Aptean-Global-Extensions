tableextension 71624759 Location100FDW extends Location
{
  fields
  {
    field(71624729; "Tax Registration No. 113FDW"; Text[20])
    {
      Caption = 'Tax Registration No.';
    }
    field(71624730; "Tax Warehouse Ref. 113FDW"; Code[20])
    {
      Caption = 'Tax Warehouse Reference';
    }
    field(71624731; "Type of Origin 113FDW"; Enum TypeofOrigin100FDW)
    {
      Caption = 'Type of Origin';
    }
    field(71624732; "Exclude from EMCS 113FDW"; Boolean)
    {
      Caption = 'Exclude from EMCS';
    }
    field(71624733; "Destination Type 113FDW"; Enum EMCSDestinationType100FDW)
    {
      Caption = 'Destination Type';
    }
    field(71624734; "Fiscal Rep. No. 113FDW"; Code[20])
    {
      Caption = 'Fiscal Representative';
    }
    field(71624735; "Competent Auth. Disp. 113FDW"; Code[20])
    {
      Caption = 'Competent Authority Dispatch';
    }
    // field(71624736; "Create IE815 TO Rel 113FDW"; Enum Create815TORelYes100FDW)
    // {
    //   Caption = 'Create IE815 on Transfer Order Release';
    // }
    // field(71624737; "Create IE815 Tr Shpt 113FDW"; Enum Create815TrShpYes100FDW)
    // {
    //   Caption = 'Create IE815 from Posted Transfer Shpt. Automatically';
    // }
    field(71624743; "Location Group 104FDW"; Code[20])
    {
      Caption = 'Empty Goods Location Group';
    }
    field(71624744; "Location Code 104FDW"; Code[10])
    {
      Caption = 'Empty Goods Location Code';
    }
    field(71624745; "Location Ref. 1 102FDW"; Text[20])
    {
      Caption = 'Location Tax Ref. 1';
    }
    field(71624746; "Location Ref. 2 102FDW"; Text[20])
    {
      Caption = 'Location Tax Ref. 2';
    }
    field(71624747; "Default Class. 102FDW"; Code[20])
    {
      Caption = 'Default Tax Classification';
    }
    field(71624748; "Excise Type 102FDW"; Enum ExciseType100FDW)
    {
      Caption = 'Excise Type';
    }
    field(71624749; "Bnd. Ship. Bin Code 102FDW"; Code[20])
    {
      Caption = 'Shipment Bin Code (Bonded)';
    }
    field(71624750; "Bnd. Rec. Bin Code 102FDW"; Code[20])
    {
      Caption = 'Receipt Bin Code (Bonded)';
    }
    field(71624751; "Tax Office Code 102FDW"; Code[20])
    {
      Caption = 'Tax Office Code';
    }
    field(71624752; "Sales Excise Type 102FDW"; Enum ExciseType100FDW)
    {
      Caption = 'Sales Excise Type (Outbound)';
    }
    field(71624753; "Brew No. Series 112FDW"; Code[20])
    {
      Caption = 'Brew No. Series';
    }
    field(71624754; "Bnd. Cancel Bin Code 125FDW"; Code[20])
    {
      Caption = 'Cancel Bin Code (Bonded)';
    }
    field(71624755; "Bnd. Resch. Bin Code 125FDW"; Code[20])
    {
      Caption = 'Reschedule Bin Code (Bonded)';
    }
    field(71624756; "Trans. Excise Type Out. 102FDW"; Enum ExciseType100FDW)
    {
      Caption = 'Transfer Excise Type (Outbound)';
    }
    field(71624757; "Purchase Excise Type 102FDW"; Enum ExciseType100FDW)
    {
      Caption = 'Purchase Excise Type (Outbound)';
    }
  }
}