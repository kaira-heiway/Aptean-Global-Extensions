table 71631731 TaxRule102FDW
{
  Caption = 'Tax Rule';

  fields
  {
    field(1; "Tax Code"; Code[20])
    {
      Caption = 'Tax Code';
    }
    field(2; "Direction of Movement"; Enum DirectionofMovement102FDW)
    {
      Caption = 'Direction of Movement';
    }
    field(3; "Entry Type"; Enum EntryTypeDocTax102FDW)
    {
      Caption = 'Entry Type';
    }
    field(4; "From Type"; Enum FromToType102FDW)
    {
      Caption = 'From Type';
    }
    field(5; "From Tax Class. Code"; Code[20])
    {
      Caption = 'From Class. Code';
    }
    field(6; "To Type"; Enum FromToType102FDW)
    {
      Caption = 'To Type';
    }
    field(7; "To Tax Class. Code"; Code[20])
    {
      Caption = 'To Class. Code';
    }
    field(8; "Item Tax Class. Code"; Code[20])
    {
      Caption = 'Item Class. Code';
    }
    field(9; "Tax Box ID"; Code[20])
    {
      Caption = 'Tax Box ID';
    }
    field(10; "Movement Type"; Enum MovementType102FDW)
    {
      Caption = 'Movement Type';
    }
    field(11; "Reason Code 102FDW"; Code[10])
    {
      Caption = 'Based on Reason Code';
    }
    field(12; "Rsn Code (att line) 102FDW"; Code[10])
    {
      Caption = 'Reason Code (attached line)';
    }
    field(13; "Rate Code"; Code[20])
    {
      Caption = 'Rate Code';
    }
    field(14; Inventoriable; Boolean)
    {
      Caption = 'Inventoriable';
    }
    field(15; "VAT Bus. Posting Group"; Code[20])
    {
      Caption = 'VAT Business Posting Group';
    }
    field(16; "VAT Prod. Posting Group"; Code[20])
    {
      Caption = 'VAT Product Posting Group';
    }
  }
  keys
  {
    key(PK; "Tax Code", "Direction of Movement", "Entry Type", "From Type", "From Tax Class. Code", "To Type", "To Tax Class. Code", "Item Tax Class. Code", "Reason Code 102FDW")
    {
    }
  }
  // var EntryTypeErr: Label ;
}