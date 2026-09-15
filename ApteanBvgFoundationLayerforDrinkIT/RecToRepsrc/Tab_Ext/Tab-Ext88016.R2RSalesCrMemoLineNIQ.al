tableextension 88016 "R2R Sales Cr.Memo Line NIQ" extends "Sales Cr.Memo Line"
{
    fields
    {
        field(88000; "R2R IC Tar. Cmp. Glb. DIM1 NIQ"; Code[20])
        {
            Caption = 'IC Target Company Global DIM1';
            CaptionClass = '1,2,1,IC Target Company ';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1),
                                                          Blocked = const(false));
            ValidateTableRelation = false;
        }
        field(88001; "R2R IC Tar. Cmp. Glb. DIM2 NIQ"; Code[20])
        {
            Caption = 'IC Target Company Global DIM2';
            CaptionClass = '1,2,2,IC Target Company ';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2),
                                                          Blocked = const(false));
            ValidateTableRelation = false;
        }
        field(88010; "R2R Invoice Group Code NIQ"; Code[10])
        {
            Caption = 'Invoice Group Code';
            Editable = false;
            TableRelation = "R2R Invoice Group NIQ";
        }
    }
}