table 71631883 Group105FDW
{
  Caption = 'Condition Group';

  fields
  {
    field(1; Type; Enum IntlGroupType105FDW)
    {
      Caption = 'Type';
    }
    field(2; Code; Code[20])
    {
      Caption = 'Code';
    }
    field(3; Description; Text[100])
    {
      Caption = 'Description';
    }
    field(97; "Type Filter"; Enum IntlGroupType105FDW)
    {
      Caption = 'Type Filter (Relation)';
    }
    field(98; "No. Filter"; Code[20])
    {
      Caption = 'No. Filter (Relation)';
    }
    field(99; "Last Modified Date Time"; DateTime)
    {
      Caption = 'Last Modified Date Time';
    }
    field(100; "No. of Customers"; Integer)
    {
      Caption = 'No. of Customers';
    }
    field(101; "No. of Vendors"; Integer)
    {
      Caption = 'No. of Vendors';
    }
    field(102; "No. of Items"; Integer)
    {
      Caption = 'No. of Items';
    }
    field(103; "No. of Locations"; Integer)
    {
      Caption = 'No. of Locations';
    }
    field(104; "No. of Reason Codes"; Integer)
    {
      Caption = 'No. of Reason Codes';
    }
    field(105; "No. of Item Category Codes"; Integer)
    {
      Caption = 'No. of Item Category Codes';
    }
    field(106; "No. of Consumption UOM Codes"; Integer)
    {
      Caption = 'No. of Consumption UOM Codes';
    }
    field(107; "No. of Shipment Method Codes"; Integer)
    {
      Caption = 'No. of Shipment Method Codes';
    }
    field(108; "No. of Payment Method Codes"; Integer)
    {
      Caption = 'No. of Payment Method Codes';
    }
    field(150; "No. of Rules (Source)"; Integer)
    {
      Caption = 'No. of Rules (Source)';
    }
    field(151; "No. of Rules (Item)"; Integer)
    {
      Caption = 'No. of Rules (Item)';
    }
    field(152; "No. of Rules (Based Source)"; Integer)
    {
      Caption = 'No. of Rules (Based Source)';
    }
    field(153; "No. of Rules (Based Item)"; Integer)
    {
      Caption = 'No. of Rules (Based Item)';
    }
  }
  keys
  {
    key(PK; Type, Code)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Code, Description)
    {
    }
    fieldgroup(Brick; Code, Description)
    {
    }
  }
  var GroupRelation105FDW: Record GroupRelation105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
}