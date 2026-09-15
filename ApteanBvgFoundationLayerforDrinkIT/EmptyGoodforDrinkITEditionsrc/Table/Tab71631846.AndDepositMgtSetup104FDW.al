table 71631846 AndDepositMgtSetup104FDW
{
  Caption = 'Empty Goods & Deposit Management Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Deposit Warnings104FDW"; Enum IntlDepositWarnings104FDW)
    {
      Caption = 'Deposit Warnings';
    }
    field(3; "Sales Document Calc. Point"; Enum IntlDocumentCalcPoint104FDW)
    {
      Caption = 'Sales Document Calc. Point';
    }
    field(4; "Purchase Doc. Calc. Point"; Enum IntlDocumentCalcPoint104FDW)
    {
      Caption = 'Purchase Document Calc. Point';
    }
    field(5; "Empty Goods Value Account"; Code[20])
    {
      Caption = 'Empty Goods Value Account';
    }
    field(6; "Empty Goods Value Bal. Account"; Code[20])
    {
      Caption = 'Empty Goods Value Balancing Account';
    }
    field(7; "Skip S.O Approval on R. Entry"; Boolean)
    {
      Caption = 'Skip Sales Order Approval Workflow on Return Entry';
    }
    field(8; "Skip P.O Approval on R. Entry"; Boolean)
    {
      Caption = 'Skip Purchase Order Approval Workflow on Return Entry';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}