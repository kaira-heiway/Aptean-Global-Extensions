table 71632053 MultiDeliveryTimes107FDW
{
  Caption = 'Multiple Delivery Times';

  fields
  {
    field(1; Code; Code[10])
    {
      Caption = 'Code';
    }
    field(2; "Source Type"; Enum IntlDeliverySrcType107FDW)
    {
      Caption = 'Source Type';
    }
    field(3; "Source Code"; Code[20])
    {
      Caption = 'Source Code';
    }
    // field(4; Day; Enum IntlDays100FDW)
    // {
    //   Caption = 'Day';
    // }
    field(5; "Opening Time"; Time)
    {
      Caption = 'Delivery from time';
    }
    field(6; "Closing Time"; Time)
    {
      Caption = 'Delivery to time';
    }
    field(7; "Address Code"; Code[20])
    {
      Caption = 'Address Code';
    }
    field(9; Default; Boolean)
    {
      Caption = 'Default';
    }
  }
  keys
  {
    // key(PK; Code, "Source Type", "Source Code", "Address Code", Day)
    // {
    // }
    key(PK; Code, "Source Type", "Source Code", "Address Code")
    {
    }
    key(PK1; "Source Type", "Source Code", Code)
    {
    }
  }
}