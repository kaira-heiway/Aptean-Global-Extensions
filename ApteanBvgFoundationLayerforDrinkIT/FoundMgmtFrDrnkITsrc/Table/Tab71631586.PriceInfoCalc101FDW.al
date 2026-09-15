table 71631586 PriceInfoCalc101FDW
{
  Caption = 'Price Info Calc.';

  fields
  {
    field(1; ID; Integer)
    {
      Caption = 'ID';
    }
    field(10; "Customer View"; Text[1024])
    {
      Caption = 'Customer View';
    }
    field(20; "Item View"; Text[1024])
    {
      Caption = 'Item View';
    }
    field(30; "Include Variants"; Boolean)
    {
      Caption = 'Include Variants';
    }
    field(40; "As per Date"; Date)
    {
      Caption = 'As per Date';
    }
    field(50; "Recreate Entries"; Boolean)
    {
      Caption = 'Recreate Entries';
    }
    field(60; "Starting Entry No."; Integer)
    {
      Caption = 'Starting Entry No.';
    }
    field(70; "Session ID"; Integer)
    {
      Caption = 'Session ID';
    }
    field(80; "Task ID"; Guid)
    {
      Caption = 'Task ID';
    }
    field(90; "Error Message"; Text[250])
    {
      Caption = 'Error Message';
    }
    field(100; Finished; Boolean)
    {
      Caption = 'Finished';
    }
    field(112; Started; Boolean)
    {
      Caption = 'Started';
    }
    field(120; "Calculate Deposits"; Boolean)
    {
      Caption = 'Calculate Deposits';
    }
    field(121; "Calculate Taxes"; Boolean)
    {
      Caption = 'Calculate Taxes';
    }
    field(122; "Calculate Discounts"; Boolean)
    {
      Caption = 'Calculate Discounts';
    }
    field(123; "Existing Entry Behaviour"; Enum ExistEntryBehaviour101FDW)
    {
      Caption = 'Existing Entry Behaviour';
    }
    field(124; "Rec. Sales Line Filter"; Enum RecSalesLinesFilter101FDW)
    {
      Caption = 'Rec. Sales Line Filter';
    }
    field(130; "Item No. From"; Code[20])
    {
      Caption = 'Item No. From';
    }
    field(131; "Item No. To"; Code[20])
    {
      Caption = 'Item No. To';
    }
    field(140; "Customer No. From"; Code[20])
    {
      Caption = 'Customer No. From';
    }
    field(141; "Customer No. To"; Code[20])
    {
      Caption = 'Customer No. To';
    }
  }
  keys
  {
    key(PK; ID)
    {
    }
  }
}