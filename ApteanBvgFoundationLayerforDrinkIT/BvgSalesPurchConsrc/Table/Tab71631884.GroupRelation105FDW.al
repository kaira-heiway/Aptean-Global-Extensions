table 71631884 GroupRelation105FDW
{
  Caption = 'Condition Group Relation';

  fields
  {
    field(1; Type; Enum IntlGroupType105FDW)
    {
      Caption = 'Type';
    }
    field(2; "No."; Code[20])
    {
      Caption = 'No.';
    }
    field(3; "Group Code"; Code[20])
    {
      Caption = 'Group Code';
    }
    field(4; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; Type, "No.", "Group Code")
    {
    }
    key(SK_Relation; Type, "Group Code", "No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; "Group Code", Description)
    {
    }
    fieldgroup(Brick; "Group Code", Description)
    {
    }
  }
  var 
  // Customer: Record Customer;
  // Item: Record Item;
  // ItemCategory: Record "Item Category";
  // Location: Record Location;
  // PaymentMethod: Record "Payment Method";
  // ReasonCode: Record "Reason Code";
  // ShipmentMethod: Record "Shipment Method";
  // UnitofMeasure: Record "Unit of Measure";
  // Vendor: Record Vendor;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  StatusCheckSuspended: Boolean;
}