table 71632103 AdvancedWarehouseSetup108FDW
{
  Caption = 'Adv. Warehouse Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "License Plate Nos."; Code[20])
    {
      Caption = 'License Plate Nos.';
    }
    field(3; "Mix. Lic. Plate Nos."; Code[20])
    {
      Caption = 'Mix License Plate Nos.';
    }
    field(4; "Stat New LicPlate"; Code[20])
    {
      Caption = 'Status New License Plate';
    }
    field(5; "Stat Loaded LicPlate"; Code[20])
    {
      Caption = 'Status Loaded License Plate';
    }
    field(6; "Stat Cancel LicPlate"; Code[20])
    {
      Caption = 'Status Canceled License Plate';
    }
    field(7; Destination; Enum Destination108FDW)
    {
      Caption = 'Destination';
    }
    field(8; "Stat Shipped LicPlate"; Code[20])
    {
      Caption = 'Status Shipped License Plate';
    }
    field(9; "Default Pallet UOM"; Code[20])
    {
      Caption = 'Default Pallet UoM';
    }
    field(10; "LPN Qty. Inb. Restr."; Enum InbRestriction108FDW)
    {
      Caption = 'LPN Quantity Inbound Restriction';
    }
    field(11; "Def. Break Bulk Filter"; Option )
    {
      Caption = 'Default Break Bulk Filter';
      OptionMembers = "Not enabled (Default)", "True", "False";
      OptionCaption = '"Not enabled (Default)", "True", "False"';
    }
    field(12; "Whse. Shpt. Bin Upd."; Enum WhseDocBinUpdate108FDW)
    {
      Caption = 'Whse. Shipment Bin Code Update';
    }
    field(13; "Stat Picked LicPlate"; Code[20])
    {
      Caption = 'Status Picked License Plate';
    }
    field(14; "Stat Sealed LicPlate"; Code[20])
    {
      Caption = 'Status Sealed License Plate';
    }
    field(15; "Stat PartCanc LicPlate"; Code[20])
    {
      Caption = 'Status Partial Canceled License Plate';
    }
    field(16; "Full LPN Bal.Check on PickReg."; Boolean)
    {
      Caption = 'Full LPN Balance Check On Pick Registration';
    }
    field(17; "Stat Loading LicPlate"; Code[20])
    {
      Caption = 'Status Loading License Plate';
    }
    field(18; "Ret.Itm Vend. View Code"; Code[20])
    {
      Caption = 'Ret. Item - Vendor View Code';
    }
    field(19; "Ret.Itm Item. View Code"; Code[20])
    {
      Caption = 'Ret. Item - Item View Code';
    }
    field(20; "Ret.Itm Calc. Period"; DateFormula)
    {
      Caption = 'Document Lookup Period';
    }
    field(21; "Stat Undone LicPlate"; Code[20])
    {
      Caption = 'Status Undone License Plate';
    }
    field(22; "LP Archive Retention Period"; DateFormula)
    {
      Caption = 'License Plate Archive Retention Period';
    }
    field(23; "LP Archive Delete Empty"; Boolean)
    {
      Caption = 'License Plate Archive Delete Empties';
    }
    field(24; "LP Delete Retention Period"; DateFormula)
    {
      Caption = 'License Plate Delete Empty Retention Period';
    }
    field(25; "DetWhseEnt. Retention Period"; DateFormula)
    {
      Caption = 'Detailed Whse. Empty Retention Period';
    }
    field(26; "DetWhseEnt.Ship.Retent. Period"; DateFormula)
    {
      Caption = 'Detailed Whse. Shipment Retention Period';
    }
    field(27; "Stat Resche. LicPlate"; Code[20])
    {
      Caption = 'Status Reschedule License Plate';
    }
    field(28; "Stat Resche. Picked LP"; Code[20])
    {
      Caption = 'Status Auto Picked License Plate after reschedule';
    }
    field(29; "Allow 1 LPN On Multiple Bins"; Boolean)
    {
      Caption = 'Allow 1 LPN On Multiple Bins';
    }
    field(30; "Default Layer UOM"; Code[10])
    {
      Caption = 'Default Layer UoM';
    }
    field(31; "Delete Empty Whse Put-Away"; Boolean)
    {
      Caption = 'Delete Empty Whse Put-Away';
    }
    field(32; "Allow Expired Lots (FEFO)"; Boolean)
    {
      Caption = 'Allow Expired Lots (FEFO)';
    }
    field(33; "Item Reclass. Jnl Templ. Name"; Code[10])
    {
      Caption = 'Item Reclassification Journal Template Name';
    }
    field(34; "Whse Recl. Journal Templ. Name"; Code[10])
    {
      Caption = 'Warehouse Reclassification Journal Template Name';
    }
    field(35; "License Plate Movement Nos"; Code[10])
    {
      Caption = 'License Plate Movement Nos';
    }
  }
  keys
  {
    key(Key1; "Primary Key")
    {
    }
  }
 // var IntlLicPlateMgt: Codeunit IntlLicPlateMgt108FDW;
 // GotOnce: Boolean;
}