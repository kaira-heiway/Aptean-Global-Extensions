page 71631580 Vehicle101FDW
{
  Caption = 'Vehicle';
  SourceTable = Vehicle101FDW;

  layout
  {
    area(Content)
    {
      repeater(GroupName)
      {
        field(Code; Rec.Code)
        {
        }
        field(Description; Rec.Description)
        {
        }
        field(Type; Rec.Type)
        {
        }
        field("License Plate"; Rec."License Plate")
        {
        }
        field("Maximum Weight"; Rec."Maximum Weight")
        {
        }
        field("Maximum Pallet Places"; Rec."Maximum Pallet Places")
        {
        }
        field("Unload Left Side"; Rec."Unload Left Side")
        {
        }
        field("Unload Right Side"; Rec."Unload Right Side")
        {
        }
        field("Unload Backside"; Rec."Unload Backside")
        {
        }
        field(Status; Rec.Status)
        {
        }
      }
    }
  }
}