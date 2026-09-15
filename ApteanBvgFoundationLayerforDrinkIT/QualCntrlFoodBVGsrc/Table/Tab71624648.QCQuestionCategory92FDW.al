table 71624648 QCQuestionCategory92FDW
{
  Caption = 'Quality Control Question Category';

  fields
  {
    field(1; Category; Code[20])
    {
      Caption = 'Category';
    }
    field(11; Description; Text[100])
    {
      Caption = 'Description';
    }
  }
  keys
  {
    key(PK; Category)
    {
    }
  }
}