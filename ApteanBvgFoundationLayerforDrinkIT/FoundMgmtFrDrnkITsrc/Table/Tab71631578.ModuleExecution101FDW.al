table 71631578 ModuleExecution101FDW
{
  Caption = 'Module Execution';

  fields
  {
    field(1; "Execution Index"; Integer)
    {
      Caption = 'Execution Index';
    }
    // field(2; Module; Enum Module100FDW)
    // {
    //   Caption = 'Module';
    // }
  }
  keys
  {
    // key(PK; Module)
    // {
    // }
    key(key1; "Execution Index")
    {
    }
  }
}