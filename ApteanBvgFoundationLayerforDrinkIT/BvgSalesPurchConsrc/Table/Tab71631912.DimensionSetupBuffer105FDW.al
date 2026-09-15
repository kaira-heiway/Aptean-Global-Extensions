table 71631912 DimensionSetupBuffer105FDW
{
  Caption = 'Dimension Setup Buffer';

  fields
  {
    field(1; "Entry No."; Integer)
    {
      Caption = 'Entry No.';
    }
    field(480; "Dimension Set ID"; Integer)
    {
      Caption = 'Dimension Set ID';
    }
    field(23; "Shortcut Dimension 1 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 1 Code';
    }
    field(24; "Shortcut Dimension 2 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 2 Code';
    }
    field(481; "Shortcut Dimension 3 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 3 Code';
    }
    field(482; "Shortcut Dimension 4 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 4 Code';
    }
    field(483; "Shortcut Dimension 5 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 5 Code';
    }
    field(484; "Shortcut Dimension 6 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 6 Code';
    }
    field(485; "Shortcut Dimension 7 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 7 Code';
    }
    field(486; "Shortcut Dimension 8 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(487; "Shortcut Dimension 9 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(488; "Shortcut Dimension 10 Code"; Code[20])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(581; "Item Dimension 1 Code"; Code[20])
    {
      Caption = 'Item Dimension 1 Code';
    }
    field(582; "Item Dimension 2 Code"; Code[20])
    {
      Caption = 'Item Dimension 2 Code';
    }
    field(583; "Item Dimension 3 Code"; Code[20])
    {
      Caption = 'Item Dimension 3 Code';
    }
  }
  keys
  {
    key(Key1; "Entry No.")
    {
    }
  }
  // var IntlDimensionHook: Codeunit IntlDimensionHook105FDW;
  // PageCaptionLbl: Label;
}