tableextension 71624761 LotNoInformation100FDW extends "Lot No. Information"
{
  fields
  {
    field(71624729; "Expiration Date 101FDW"; Date)
    {
      Caption = 'Expiration Date';
    }
    field(71624730; "Posting Date 101FDW"; Date)
    {
      Caption = 'Posting Date';
    }
    field(71624731; "Strength 1 111FDW"; Decimal)
    {
      Caption = 'Strength 1';
    }
    field(71624732; "Strength 2 111FDW"; Decimal)
    {
      Caption = 'Strength 2';
    }
    field(71624733; "Strength 3 Code 111FDW"; Code[10])
    {
      Caption = 'Strength 3 Code';
    }
    field(71624734; "Strength 3 Value 111FDW"; Decimal)
    {
      Caption = 'Strength 3 Value';
    }
    field(71624735; "Cask No. 111FDW"; Code[20])
    {
      Caption = 'Cask No.';
    }
    // field(71624736; "Alcohol Aging Period 111FDW"; Enum "Alcohol Aging Period 111FDW")
    // {
    //   Caption = 'Alcohol Aging Adj. Period';
    // }
    field(71624737; "Alc. Ag. Period Formula 111FDW"; DateFormula)
    {
      Caption = 'Alcohol Aging Adj. Period Formula';
    }
    field(71624738; "Alc. Aging Loss Perc. 111FDW"; Decimal)
    {
      Caption = 'Alcohol Aging Adj. Loss %';
    }
    field(71624739; "Last Alc. Ag. Adj. Date 111FDW"; Date)
    {
      Caption = 'Last Alcohol Aging Adj. Date';
    }
    field(71624740; "Next Alc. Ag. Adj. Date 111FDW"; Date)
    {
      Caption = 'Next Alcohol Aging Adj. Date';
    }
  }
  keys
  {
    key(ExpDatePostingDate101FDW; "Expiration Date 101FDW", "Posting Date 101FDW")
    {
    }
  }
}