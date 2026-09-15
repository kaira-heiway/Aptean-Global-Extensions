table 71631881 Classification105FDW
{
  Caption = 'Condition Classification';

  fields
  {
    field(1; Type; Enum IntlRelationType105FDW)
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
    field(11; "Shortcut Dimension 1 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 1 Code';
    }
    field(12; "Shortcut Dimension 2 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 2 Code';
    }
    field(13; "Shortcut Dimension 3 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 3 Code';
    }
    field(14; "Shortcut Dimension 4 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 4 Code';
    }
    field(15; "Shortcut Dimension 5 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 5 Code';
    }
    field(16; "Shortcut Dimension 6 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 6 Code';
    }
    field(17; "Shortcut Dimension 7 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 7 Code';
    }
    field(18; "Shortcut Dimension 8 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 8 Code';
    }
    field(19; "Shortcut Dimension 9 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 9 Code';
    }
    field(20; "Shortcut Dimension 10 Code"; Code[1024])
    {
      Caption = 'Shortcut Dimension 10 Code';
    }
    field(80; "Item Dimension 1 Code"; Code[1024])
    {
      Caption = 'Item Dimension 1 Code';
    }
    field(81; "Item Dimension 2 Code"; Code[1024])
    {
      Caption = 'Item Dimension 2 Code';
    }
    field(82; "Item Dimension 3 Code"; Code[1024])
    {
      Caption = 'Item Dimension 3 Code';
    }
    field(97; "Type Filter"; Enum IntlRelationType105FDW)
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
    field(501; "Dimension Code 1 Filter"; Code[20])
    {
      Caption = 'Dimension Code 1 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(502; "Dimension Code 2 Filter"; Code[20])
    {
      Caption = 'Dimension Code 2 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(503; "Dimension Code 3 Filter"; Code[20])
    {
      Caption = 'Dimension Code 3 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(504; "Dimension Code 4 Filter"; Code[20])
    {
      Caption = 'Dimension Code 4 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(505; "Dimension Code 5 Filter"; Code[20])
    {
      Caption = 'Dimension Code 5 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(506; "Dimension Code 6 Filter"; Code[20])
    {
      Caption = 'Dimension Code 6 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(507; "Dimension Code 7 Filter"; Code[20])
    {
      Caption = 'Dimension Code 7 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(508; "Dimension Code 8 Filter"; Code[20])
    {
      Caption = 'Dimension Code 8 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(509; "Dimension Code 9 Filter"; Code[20])
    {
      Caption = 'Dimension Code 9 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
    }
    field(510; "Dimension Code 10 Filter"; Code[20])
    {
      Caption = 'Dimension Code 10 Filter';
      ObsoleteReason = 'This field will be removed. The old functional that it was integrating to was discontinued.';
      ObsoleteState = Pending;
      ObsoleteTag = '22.0';
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
  var 
  //IntlDimensionHook105FDW: Codeunit IntlDimensionHook105FDW;
  // IntlDimensionSHook105FDW: Codeunit IntlDimensionSHook105FDW;
  // IntlDimensionHookBuffer105FDW: Codeunit IntlDimensionHook105FDW;
  // IntlGeneralHelper105FDW: Codeunit IntlGeneralHelper105FDW;
  // IntlGeneralHook105FDW: Codeunit IntlGeneralHook105FDW;
  HasSetupShortcutDimCodesDIT: Boolean;
  HasSetupShortcutDimCodesGL: Boolean;
  SkipInitDimensionSetupBufferQuery: Boolean;
  StatusCheckSuspended: Boolean;
  SetupShortcutDimCodesDIT: array[3]of Code[20];
  SetupShortcutDimCodesGL: array[10]of Code[20];
}