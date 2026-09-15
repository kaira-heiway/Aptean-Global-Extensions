page 70218879 InspectionStatusListFDW
{
  Caption = 'Inspection Status List';
  SourceTable = InspectionStatusHeaderFDW;

  layout
  {
    area(Content)
    {
      repeater(Group)
      {
        field(Code; Rec.Code)
        {
        }
        field(Description; Rec.Description)
        {
        }
        field(Priority; Rec.Priority)
        {
        }
        field(InspectionHold; Rec.InspectionHold)
        {
        }
        field(Obsolete; Rec.Obsolete)
        {
          Visible = true;
        }
        field("Permission Role ID"; Rec."Permission Role ID")
        {
        }
      }
    }
  }
  var ObsoleteVisible: Boolean;
}