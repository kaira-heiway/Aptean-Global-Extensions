page 71632064 ReturnControl107FDW
{
  Caption = 'Return control';
  SourceTable = ReturnControl107FDW;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field("Route Planning No."; Rec."Route Planning No.")
        {
        }
        field("Item No."; Rec."Item No.")
        {
        }
        field("Unit Of Measure Code"; Rec."Unit Of Measure Code")
        {
        }
        field("Calculated Quantity"; Rec."Calculated Quantity")
        {
        }
        field("Counted Quantity"; Rec."Counted Quantity")
        {
        }
        field(Difference; Rec.Difference)
        {
        }
        field("Difference for Driver"; Rec."Difference For Driver")
        {
        }
        field("Difference For Company"; Rec."Difference For Company")
        {
        }
      }
    }
  }
  actions
  {
    area(Processing)
    {
      action("Calculate Returned Quantities")
      {
        Caption = 'Calculate Returned Quantities';
      }
      action("Autofill Counted Quantity")
      {
        Caption = 'Autofill Counted Quantity';
      }
      action(Finish)
      {
        Caption = 'Finish';
      }
      action(Concess)
      {
        Caption = 'Concess';
      }
      action(Reopen)
      {
        Caption = 'Reopen';
      }
    }
    area(Promoted)
    {
      group(Category_Process)
      {
        actionref("Calculate Returned Quantities_Promoted"; "Calculate Returned Quantities")
        {
        }
        actionref("Autofill Counted Quantity_Promoted"; "Autofill Counted Quantity")
        {
        }
        actionref(Finish_Promoted; Finish)
        {
        }
        actionref(Concess_Promoted; Concess)
        {
        }
        actionref(Reopen_Promoted; Reopen)
        {
        }
      }
    }
  }
  var ConfirmManagement: Codeunit System.Utilities."Confirm Management";
  ediableCountedQty: Boolean;
  EditableDifference: Boolean;
  ReturnControlStatus: Enum ReturnControlStatus107FDW;
  WkshStyle: Text;
}