report 71631580 InsertPriceInfo101FDW
{
  Caption = 'Insert Price Info';

  dataset
  {
    dataitem(Item; Item)
    {
    }
    dataitem(Customer; Customer)
    {
    }
  }
  requestpage
  {
    layout
    {
      area(Content)
      {
        group(Options)
        {
          Caption = 'Options';

          field(AsPerDateCtrl; AsPerDate)
          {
            Caption = 'As per Date';
          }
          field(IncludeVariantsCtrl; IncludeVariants)
          {
            Caption = 'Include Variants';
          }
          field(ExistingEntriesBehaviourCtrl; ExistingEntriesBehaviour)
          {
            Caption = 'Existing Entries Behaviour';
          }
          field(RecSalesFilterCtrl; RecSalesFilter)
          {
            Caption = 'Recurring Sales';
          }
          field(CalcDespositsCtrl; CalcDesposits)
          {
            Caption = 'Calculate Deposits';
          }
          field(CalcTaxesCtrl; CalcTaxes)
          {
            Caption = 'Calculate Taxes';
          }
          field(CalcDiscountsCtrl; CalcDiscounts)
          {
            Caption = 'Calculate Discounts';
          }
          field(ShowSummaryCtrl; ShowSummary)
          {
            Caption = 'Show Summary';
          }
          field(ProcessInParallelCtrl; ProcessInParallel)
          {
            Caption = 'Process in Parallel';
            Visible = true;
          }
        }
      }
    }
  }
  protected var 
  CalcDesposits: Boolean;
  CalcDiscounts: Boolean;
  CalcTaxes: Boolean;
  AsPerDate: Date;
 // FeatureControlManagement: Codeunit FeatureControlManagement101FDW;
  IncludeVariants: Boolean;
  ShowSummary: Boolean;
  ProcessInParallel: Boolean;
  ProcessInParallelVisible: Boolean;
  EndDateTime: DateTime;
  StartDateTime: DateTime;
  ExistingEntriesBehaviour: Enum ExistEntryBehaviour101FDW;
  RecSalesFilter: Enum RecSalesLinesFilter101FDW;
  CountAfter: Integer;
  CountBefore: Integer;
}