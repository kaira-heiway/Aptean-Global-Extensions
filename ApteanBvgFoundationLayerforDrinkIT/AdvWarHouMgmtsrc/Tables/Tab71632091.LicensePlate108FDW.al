table 71632091 LicensePlate108FDW
{
  Caption = 'License Plate';

  fields
  {
    field(1; "No."; Code[50])
    {
      Caption = 'No.';
    }
    field(2; "Mixed pallet"; Boolean)
    {
      Caption = 'Mixed pallet';
    }
    field(3; "Location Code"; Code[10])
    {
      Caption = 'Location Code';
    }
    field(4; Status; Code[20])
    {
      Caption = 'Status';
    }
    field(5; Type; Code[20])
    {
      Caption = 'Type';
    }
    field(6; "Shipment Date"; Date)
    {
      Caption = 'Shipment Date';
    }
    field(7; Weight; Decimal)
    {
      Caption = 'Weight';
    }
    field(8; "Ship-to Type";Option)
    {
      Caption = 'Ship-to Type';
      OptionMembers = " ", Customer, Vendor, Location;
      OptionCaption = ', Customer, Vendor, Location';
    }
    field(9; "Ship-to No."; Code[20])
    {
      Caption = 'Ship-to No.';
    }
    field(10; "Ship-to Address Code"; Code[10])
    {
      Caption = 'Ship-to Address Code';
    }
    field(11; "Ship-to Name"; Text[100])
    {
      Caption = 'Ship-to Name';
    }
    field(12; "Ship-to Name 2"; Text[50])
    {
      Caption = 'Ship-to Name 2';
    }
    field(13; "Ship-to Address"; Text[100])
    {
      Caption = 'Ship-to Address';
    }
    field(14; "Ship-to Address 2"; Text[50])
    {
      Caption = 'Ship-to Address 2';
    }
    field(15; "Ship-to City"; Text[30])
    {
      Caption = 'Ship-to City';
    }
    field(16; "Ship-to Contact"; Text[100])
    {
      Caption = 'Ship-to Contact';
    }
    field(17; "Ship-to Post Code"; Code[20])
    {
      Caption = 'Ship-to Post Code';
    }
    field(18; "Ship-to County"; Text[30])
    {
      Caption = 'Ship-to County';
    }
    field(19; "Ship-to Country/Region Code"; Code[10])
    {
      Caption = 'Ship-to Country/Region Code';
    }
    field(20; Length; Decimal)
    {
      Caption = 'Length';
    }
    field(21; Width; Decimal)
    {
      Caption = 'Width';
    }
    field(22; Height; Decimal)
    {
      Caption = 'Height';
    }
    field(23; "Max. Height"; Decimal)
    {
      Caption = 'Max. Height';
    }
    field(24; Stackable; Boolean)
    {
      Caption = 'Stackable';
    }
    field(25; "Warehouse Status"; Option)
    {
      Caption = 'Warehouse Status';
      OptionMembers = Inventory, Order;
      OptionCaption = 'Inventory, Order';
    }
    field(26; "Whse. Document No."; Code[20])
    {
      Caption = 'Whse. Document No.';
    }
    field(27; "Whse. Document Type"; Enum Microsoft.Warehouse.Journal."Warehouse Journal Document Type")
    {
      Caption = 'Whse. Document Type';
    }
    field(28; "Created On"; DateTime)
    {
      Caption = 'Created On';
    }
    field(29; "Document No."; Code[20])
    {
      Caption = 'Document No.';
    }
    field(30; "Pallet No."; Integer)
    {
      Caption = 'Pallet No.';
    }
    field(31; "Last Update On"; DateTime)
    {
      Caption = 'Last Update On';
    }
    field(33; "Content Weight"; Decimal)
    {
      Caption = 'Content Weight';
    }
    field(34; "License Plate UOM"; Code[10])
    {
      Caption = 'License Plate Unit of Measure';
    }
    field(35; "Total Weight"; Decimal)
    {
      Caption = 'Total Weight';
    }
    field(36; "Linked To Document Type"; Integer)
    {
      Caption = 'Linked To Document Type';
    }
    field(37; "Linked To Document No."; Code[20])
    {
      Caption = 'Linked To Document No.';
    }
    field(38; "Linked To Document Line No."; Integer)
    {
      Caption = 'Linked To Document Line No.';
    }
    field(39; "Unit of Measure"; Code[20])
    {
      Caption = 'Unit of Measure';
    }
    // field(40; "Trans. Validation Type"; Enum TransValidationType117FDW)
    // {
    //   Caption = 'Transport Validation Type';
    // }
    field(41; "Trans. Validation Code"; Code[20])
    {
      Caption = 'Transport Validation Code';
    }
    field(42; "Whse. Activity Type"; Enum Microsoft.Warehouse.Activity."Warehouse Activity Type")
    {
      Caption = 'Whse. Activity Type';
    }
    field(43; "Whse. Activity No."; Code[20])
    {
      Caption = 'Whse. Activity No.';
    }
    // field(44; "LPN Qty. Inb. Restr."; Enum InbItemRestriction117FDW)
    // {
    //   Caption = 'Quantity Inbound Restriction';
    // }
    // field(45; "Conf. Trans. Validation Type"; Enum TransValidationType117FDW)
    // {
    //   Caption = 'Confirmed Transport Validation Type';
    // }
    field(46; "Conf. Trans. Validation Code"; Code[20])
    {
      Caption = 'Confirmed Transport Validation Code';
    }
    field(47; "Shipment Type"; Enum ShipmentType108FDW)
    {
      Caption = 'Shipment Type';
    }
    field(48; "Shipment No."; Code[20])
    {
      Caption = 'Shipment No.';
    }
    field(49; "Reschedule For Type"; Enum ShipmentType108FDW)
    {
      Caption = 'Reschedule For Type';
    }
    field(50; "Reschedule For No."; Code[20])
    {
      Caption = 'Reschedule For No.';
    }
    field(51; "Source Type"; Integer)
    {
      Caption = 'Source Type';
    }
    field(61; "Split in Posting"; Boolean)
    {
      Caption = 'Split in Posting';
    }
  }
  keys
  {
    key(PK; "No.")
    {
    }
    key(key2; "Whse. Document Type", "Whse. Document No.", "Pallet No.")
    {
    }
    key(key3; "Warehouse Status", "Whse. Document No.")
    {
    }
    key(key4; "Shipment No.", "Ship-to Type", "Ship-to No.", "Ship-to Address Code")
    {
    }
    key(key5; "Last Update On")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "No.", Type, "Location Code", Status)
    {
    }
  }
  var LicensePlateType: Record LicensePlateType108FDW;
 // LicenseManagement: Codeunit LicenseManagement108FDW;
  MeasureType: Option Length, Width, Height, Weight;
}