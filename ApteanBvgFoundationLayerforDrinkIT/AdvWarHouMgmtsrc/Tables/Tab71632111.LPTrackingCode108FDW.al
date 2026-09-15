table 71632111 LPTrackingCode108FDW
{
  Caption = 'LP Tracking Code';

  fields
  {
    field(1; Type; Enum LPTrackingType108FDW)
    {
      Caption = 'Type';
    }
    field(2; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(3; Description; Text[50])
    {
      Caption = 'Description';
    }
    field(4; "Inbound Rules"; Integer)
    {
      Caption = 'Inbound Rules';
    }
    field(5; "Outbound Rules"; Integer)
    {
      Caption = 'Outbound Rules';
    }
    field(6; "Block Dbl. LPN On Prod. Outp."; Boolean)
    {
      Caption = 'Block Double LPN On Prod. Output Posting';
    }
    field(7; "Block Dbl. LPN On Purch. Ord."; Boolean)
    {
      Caption = 'Block double LPN on Warehouse Receipt';
    }
    field(8; "Skip Item LPN Track. for Cust."; Boolean)
    {
      Caption = 'Skip Item LPN Tracking for Customer';
    }
    field(9; "Skip Item LPN Track for Vendor"; Boolean)
    {
      Caption = 'Skip Item LPN Tracking for Vendor';
    }
  }
  keys
  {
    key(PK; Type, Code)
    {
    }
  }
  //var LicenseManagement: Codeunit LicenseManagement108FDW;
}