table 71631748 TaxManagementSetup102FDW
{
  Caption = 'Tax Management Setup';

  fields
  {
    field(1; "Primary Key"; Code[10])
    {
      Caption = 'Primary Key';
    }
    field(2; "Jnl. Templ. Name Tax Posting"; Code[10])
    {
      Caption = 'Jnl. Templ. Name Tax Posting';
    }
    field(3; "Jnl. Batch Name Tax Posting"; Code[10])
    {
      Caption = 'Jnl. Batch Name Tax Posting';
    }
    field(4; "Tax Posting to G/L"; Boolean)
    {
      Caption = 'Tax Posting to G/L';
    }
    field(5; "Sales Doc. Calc. Point 102FDW"; Enum DocumentCalcPoint102FDW)
    {
      Caption = 'Sales Document Calc. Point';
    }
    field(6; "Purch. Doc. Calc. Point 102FDW"; Enum DocumentCalcPoint102FDW)
    {
      Caption = 'Purchase Document Calc. Point';
    }
    field(7; "Amount Dec. Places 102FDW"; Text[5])
    {
      Caption = 'Tax Amount Decimal Places';
    }
    field(8; "Unit Amnt Dcml. Pl. 102FDW"; Text[5])
    {
      Caption = 'Tax Unit Amount Decimal Places';
    }
    field(9; "Amount Rnd. Prec. 102FDW"; Decimal)
    {
      Caption = 'Tax Amount Rounding Precision';
    }
    field(10; "Unit Amt Rnd Prec. 102FDW"; Decimal)
    {
      Caption = 'Tax Unit Amount Rounding Precision';
    }
    field(11; "Settlement 102FDW"; Code[10])
    {
      Caption = 'Tax Settlement';
    }
    field(12; "Journal 102FDW"; Code[10])
    {
      Caption = 'Tax Journal';
    }
    field(15; "Tax Office Code"; Code[20])
    {
      Caption = 'Tax Office Code';
    }
    field(16; "Tax Responsible Contact"; Code[20])
    {
      Caption = 'Tax Responsible Contact';
    }
    field(20; "Purch. Incl. Charge Exp. Cost"; Boolean)
    {
      Caption = 'Include Tax Charge in Purchase Expected Cost';
    }
    field(21; "Calc.Whse.AdjustByExciseType"; Boolean)
    {
      Caption = 'Calculate Adjustments by excise type';
    }
    field(22; "Tax Rules Required"; Enum TaxRulesRequired102FDW)
    {
      Caption = 'Tax Rules Required';
    }
    field(23; "Tax Posting in Job Queue"; Boolean)
    {
      Caption = 'Tax Posting in Job Queue';
    }
    field(24; "Capt. Tax Unit Amount1 102FDW"; Text[20])
    {
      Caption = 'Caption Tax Unit Amount 1';
    }
    field(25; "Capt. Tax Unit Amount2 102FDW"; Text[20])
    {
      Caption = 'Caption Tax Unit Amount 2';
    }
    field(26; "VAT Special Regulations"; Boolean)
    {
      Caption = 'VAT Special Regulations';
    }
    field(27; "Check Tax Rule in Return Entry"; Boolean)
    {
      Caption = 'Check Tax Rule in Return Entry';
    }
    field(28; "Check Tax Rule in Order Entry"; Boolean)
    {
      Caption = 'Check Tax Rule in Order Entry';
    }
  }
  keys
  {
    key(PK; "Primary Key")
    {
    }
  }
}