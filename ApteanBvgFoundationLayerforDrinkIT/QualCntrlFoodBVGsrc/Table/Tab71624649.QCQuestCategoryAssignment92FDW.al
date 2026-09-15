table 71624649 QCQuestCategoryAssignment92FDW
{
  Caption = 'Quality Control Question Category Assignment';

  fields
  {
    field(1; "Question Code"; Code[20])
    {
      Caption = 'Question Code';
    }
    field(2; "Question Category"; Code[20])
    {
      Caption = 'Question Category';
    }
  }
  keys
  {
    key(PK; "Question Code", "Question Category")
    {
    }
  }
}