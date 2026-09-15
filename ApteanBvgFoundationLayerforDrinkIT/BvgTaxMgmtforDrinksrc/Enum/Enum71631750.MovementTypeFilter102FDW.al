enum 71631750 MovementTypeFilter102FDW
{
  Extensible = true;
  ObsoleteReason = 'Only used on worksheet to filter. Not needed, can be done with MovementType enum.';
  ObsoleteState = Pending;
  ObsoleteTag = '24.0';

  value(0; Taxed)
  {
  Caption = 'Taxed';
  }
  value(1; Untaxed)
  {
  Caption = 'Untaxed';
  }
  value(2; "Taxed + Charge")
  {
  Caption = 'Taxed + Charge';
  }
  value(3; "Charge Only")
  {
  Caption = 'Charge Only';
  }
  value(4; Blocked)
  {
  Caption = 'Blocked';
  }
  value(5; " ")
  {
  Caption = ' ';
  }
}