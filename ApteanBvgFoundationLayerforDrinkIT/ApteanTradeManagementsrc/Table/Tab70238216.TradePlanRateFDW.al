table 70238216 "Trade Plan Rate FDW"
{
  Caption = 'Trade Plan Rate';

  fields
  {
    field(1; "Trade Plan No."; Code[20])
    {
      Caption = 'Trade Plan No.';
    }
    field(2; "Line No."; Integer)
    {
      Caption = 'Line No.';
    }
    field(3; "Source Type"; Enum TradePlanSourceTypeFDW)
    {
      Caption = 'Source Type';
    }
    field(4; "Source No."; Code[20])
    {
      Caption = 'Source No.';
    }
    field(5; "Source Address Code"; Code[10])
    {
      Caption = 'Source Address Code';
    }
    field(6; "Item Type"; Enum TradePlanItemTypeFDW)
    {
      Caption = 'Item Type';
    }
    field(7; "Item No."; Code[20])
    {
      Caption = 'No.';
    }
    field(8; "Variant Code"; Code[10])
    {
      Caption = 'Variant Code';
    }
    field(9; "Unit of Measure Code"; Code[10])
    {
      Caption = 'Unit of Measure Code';
    }
    field(10; "Currency Code"; Code[10])
    {
      Caption = 'Currency Code';
    }
    field(11; "Rate Type"; Enum TradePlanRateTypeFDW)
    {
      Caption = 'Rate Type';
    }
    field(12; "Volume Type"; Enum TradePlanVolumeTypeFDW)
    {
      Caption = 'Volume Type';
    }
    field(13; Rate; Decimal)
    {
      Caption = 'Rate';
    }
    field(14; "Trade Partner No."; Code[20])
    {
      Caption = 'Trade Partner No.';
    }
    field(15; "Starting Date"; Date)
    {
      Caption = 'Starting Date';
    }
    field(16; "Ending Date"; Date)
    {
      Caption = 'Ending Date';
    }
    field(17; "Volume Rates"; Boolean)
    {
      Caption = 'Volume Rates';
    }
    field(18; "Location Code"; Code[20])
    {
      Caption = 'Location Code';
    }
    field(19; "Shipment Method"; Code[20])
    {
      Caption = 'Shipment Method Code';
    }
    field(20; GlobalLotAttrValueID01; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 1';
    }
    field(21; GlobalLotAttrValueID02; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 2';
    }
    field(22; GlobalLotAttrValueID03; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 3';
    }
    field(23; GlobalLotAttrValueID04; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 4';
    }
    field(24; GlobalLotAttrValueID05; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 5';
    }
    field(25; GlobalLotAttrValueID06; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 6';
    }
    field(26; GlobalLotAttrValueID07; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 7';
    }
    field(27; GlobalLotAttrValueID08; Integer)
    {
      Caption = 'Global Lot Attribute Value ID 8';
    }
    field(28; "Trade Plan Type"; Enum "Trade Plan Freight Type34FDW")
    {
      Caption = 'Trade Plan Type';
    }
    field(29; "Free Storage Period"; DateFormula)
    {
      Caption = 'Free Storage Period';
    }
    field(30; "Periodic Rate Type"; Enum PeriodicRateType34FDW)
    {
      Caption = 'Periodic Rate Type';
    }
    field(31; "Rate Application Method"; Enum RateApplicationMethod34FDW)
    {
      Caption = 'Rate Application Method';
    }
    field(98; "Item Exclusion Filter"; Blob)
    {
      Caption = 'Item Exclusion Filter';
    }
    field(99; "Location Exclusion Filter"; Blob)
    {
      Caption = 'Location Exclusion Filter';
    }
    field(100; "Shipment Exclusion Filter"; Blob)
    {
      Caption = 'Shipment Method Exclusion Filter';
    }
    field(101; "Vendor Exclusion Filter"; Blob)
    {
      Caption = 'Vendor Exclusion Filter';
    }
    field(102; "Customer Exclusion Filter"; Blob)
    {
      Caption = 'Customer Exclusion Filter';
    }
    field(103; "No. of Item Exclusion"; Integer)
    {
      Caption = 'No. of Item Exclusion';
    }
    field(104; "No. of Location Exclusion"; Integer)
    {
      Caption = 'No. of Location Exclusion';
    }
    field(105; "No. of Shipment Exclusion"; Integer)
    {
      Caption = 'No. of Shipment Method Exclusion';
    }
    field(106; "No. of Vendor Exclusion"; Integer)
    {
      Caption = 'No. of Vendor Exclusion';
    }
    field(107; "No. of Customer Exclusion"; Integer)
    {
      Caption = 'No of Customer Exclusion';
    }
    field(110; "Shipping Type"; Text[30])
    {
      Caption = 'Packaging Type';
    }
    field(111; "Shipping Code"; Code[20])
    {
      Caption = 'Packaging Code';
    }
  }
  keys
  {
    key(PK; "Trade Plan No.", "Line No.")
    {
    }
  }
  fieldgroups
  {
    fieldgroup(Brick; "Currency Code", Rate, "Rate Type")
    {
    }
  }
  //var WhereTxtLbl: Label;
}