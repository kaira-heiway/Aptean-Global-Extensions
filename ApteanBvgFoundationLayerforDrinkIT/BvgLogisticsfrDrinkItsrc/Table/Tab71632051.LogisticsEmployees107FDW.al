table 71632051 LogisticsEmployees107FDW
{
  Caption = 'Logistics Employees';

  fields
  {
    field(1; "User ID"; Code[50])
    {
      Caption = 'User ID';
    }
    field(5; "Route Filter Text"; Text[1024])
    {
      Caption = 'Route Filter';
    }
    field(6; "Date View As"; Option )
    {
      Caption = 'Date View As';
      OptionMembers = Date, "At Date";
      OptionCaption = 'Date, "At Date"';
    }
    // field(7; "Date View By"; Enum Microsoft.Foundation.Enums."Analysis Period Type")
    // {
    //   Caption = 'Date View By';
    // }
    field(8; "Date Formula As"; DateFormula)
    {
      Caption = 'Date As Formula';
    }
    field(9; "Route Cut Off Warning"; Enum AlertType107FDW)
    {
      Caption = 'Route Cut Off Warning';
    }
    field(10; "Allow Change Fixed RPN"; Enum AlertType107FDW)
    {
      Caption = 'Allow To Change a Fixed Route Planning';
    }
    field(11; "Allow Ret. Control Concession"; Boolean)
    {
      Caption = 'Allow Return Control Concession';
    }
    field(12; "Allow Reopen a Return Control"; Boolean)
    {
      Caption = 'Allow to Reopen a Return Control';
    }
  }
  keys
  {
    key(Key1; "User ID")
    {
    }
  }
}