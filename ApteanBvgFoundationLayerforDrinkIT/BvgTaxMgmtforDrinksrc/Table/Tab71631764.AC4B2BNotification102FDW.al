table 71631764 AC4B2BNotification102FDW
{
  Caption = 'AC4 B2B Notification';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(2; "Mail History Entry No"; Integer)
    {
      Caption = 'Mail History Entry No';
    }
    field(3; "Notification Id"; Text[50])
    {
      Caption = 'Notification Id';
    }
    // field(4; Status; __MissingTypeSymbol__)
    // {
    //   Caption = 'Status';
    // }
    field(5; "Error Message"; Text[250])
    {
      Caption = 'Error Message';
    }
    field(6; "Status Message"; Text[250])
    {
      Caption = 'Status Message';
    }
    field(7; Attachment; Blob)
    {
      Caption = 'Attachment';
    }
    field(8; DRN; Text[50])
    {
      Caption = 'DRN';
    }
    field(9; "Validation Date"; Date)
    {
      Caption = 'Validation Date';
    }
    field(10; Amount; Decimal)
    {
      Caption = 'Amount';
    }
  }
  keys
  {
    key(PK; "Entry No.")
    {
    }
    key(Key1; "Mail History Entry No", "Notification Id")
    {
    }
  }
}