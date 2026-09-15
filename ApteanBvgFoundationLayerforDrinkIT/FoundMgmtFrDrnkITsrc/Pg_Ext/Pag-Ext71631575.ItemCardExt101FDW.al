pageextension 71631575 ItemCardExt101FDW extends "Item Card"
{
  layout
  {
    addafter(Item)
    {
      group(Foundation101FDW)
      {
        Caption = 'Drink-IT Foundation';

        group("General 101FDW")
        {
          Caption = 'General';

        //   field("Excluded for Pay. Disc. 101FDW"; Rec."Excluded for Pay. Disc. 101FDW")
        //   {
        //   }
        //   field("Default Sales Variant 101FDW"; Rec."Default Sales Variant 101FDW")
        //   {
        //     Caption = 'Default Sales Variant';
        //   }
        //   field("Default Purch. Variant 101FDW"; Rec."Default Purch. Variant 101FDW")
        //   {
        //     Caption = 'Default Purchase Variant';
        //   }
        }
        group("Volumes Weights101FDW")
        {
          Caption = 'Volumes and Weights';

          field("Unit Volume STD  101FDW"; Rec."Unit Volume")
          {
          }
        //   field("Unit Volume UOM  101FDW"; Rec."Unit Volume UOM 101FDW")
        //   {
        //   }
        //   field("Volume 3 Code   101FDW"; Rec."Volume 3 Code 101FDW")
        //   {
        //   }
        //   field("Volume 3 Value   101FDW"; Rec."Volume 3 Value 101FDW")
        //   {
        //   }
        //   field("Net Weight STD   101FDW"; Rec."Net Weight")
        //   {
        //   }
        //   field("Net Weight UOM   101FDW"; Rec."Net Weight UOM 101FDW")
        //   {
        //   }
        //   field("Gross Weight STD   101FDW"; Rec."Gross Weight")
        //   {
        //   }
        //   field("Gross Weight UOM  101FDW"; Rec."Gross Weight UOM 101FDW")
        //   {
        //   }
        }
        group(Strengths101FDW)
        {
          Caption = 'Strengths';

        //   field("Strength 1  101FDW"; Rec."Strength 1 101FDW")
        //   {
        //   }
        //   field("Strength 2  101FDW"; Rec."Strength 2 101FDW")
        //   {
        //   }
        //   field("Strength 3 Code  101FDW"; Rec."Strength 3 Code 101FDW")
        //   {
        //   }
        //   field("Strength 3 Value  101FDW"; Rec."Strength 3 Value 101FDW")
        //   {
        //   }
        }
        group("Unit of Measure101FDW")
        {
          Caption = 'Unit of Measure';

        //   field("Consumption UOM  101FDW"; Rec."Consumption UOM 101FDW")
        //   {
        //   }
        //   field("Qty. Cons. UPB UOM  101FDW"; Rec."Qty. Cons. UPB UOM 101FDW")
        //   {
        //   }
        //   field("Transport Unit  101FDW"; Rec."Transport Unit 101FDW")
        //   {
        //   }
        //   field("Qty. Base per Trans.  101FDW"; Rec."Qty. Base per Trans. 101FDW")
        //   {
        //   }
        //   field("Inventory Pallet  101FDW"; Rec."Inventory Pallet 101FDW")
        //   {
        //   }
        }
        group("Item Dimensions101FDW")
        {
          Caption = 'Item Dimensions';

        //   field("Item Dimension 1  101FDW"; Rec."Item Dimension 1 Code 101FDW")
        //   {
        //   }
        //   field("Item Dimension 2  101FDW"; Rec."Item Dimension 2 Code 101FDW")
        //   {
        //   }
        //   field("Item Dimension 3  101FDW"; Rec."Item Dimension 3 Code 101FDW")
        //   {
        //   }
        }
        group(LoanInUse101FDW)
        {
          Caption = 'Loan In Use';

        //   field("Loan InUse Item Sales  101FDW"; Rec."Loan InUse Item Sales 101FDW")
        //   {
        //   }
        //   field("Loan InUse Item Purch.  101FDW"; Rec."Loan InUse Item Purch. 101FDW")
        //   {
        //   }
        }
      }
    }
    addafter("Unit Cost")
    {
      field("Inventory Value Zero  101FDW"; Rec."Inventory Value Zero")
      {
      }
    }
    modify("Unit Volume")
    {
      Editable = IsBaseFieldEnabled;
      Visible = IsBaseFieldEnabled;
    }
    modify("Net Weight")
    {
      Editable = IsBaseFieldEnabled;
      Visible = IsBaseFieldEnabled;
    }
    modify("Gross Weight")
    {
      Editable = IsBaseFieldEnabled;
      Visible = IsBaseFieldEnabled;
    }
  }
  var 
  //FeatureControlManagement: Codeunit FeatureControlManagement101FDW;
  IsBaseFieldEnabled: Boolean;
}