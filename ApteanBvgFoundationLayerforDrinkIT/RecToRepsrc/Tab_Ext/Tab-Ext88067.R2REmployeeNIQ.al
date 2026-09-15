tableextension 88067 "R2R Employee NIQ" extends Employee
{
    fields
    {
        field(88000; "R2R Balance at Date (LCY) NIQ"; Decimal)
        {
            CalcFormula = sum("Detailed Employee Ledger Entry"."Amount (LCY)" where("Employee No." = field("No."),
                                                                                 "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = field("Currency Filter"),
                                                                                 "Posting Date" = field("Date Filter"),
                                                                                 "R2R Employee Posting Group NIQ" = field("R2R Emp. Post. Gr. Filter NIQ")));
            Caption = 'Balance at Date (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88001; "R2R Emp. Post. Gr. Filter NIQ"; Code[20])
        {
            Caption = 'Employee Posting Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Employee Posting Group";
        }
    }
    procedure OpenEmployeeLedgerEntries(FilterOnDueEntries: Boolean)
    var
        DetailedEmployeeLedgerEntry: Record "Detailed Employee Ledger Entry";
        EmployeeLedgerEntry: Record "Employee Ledger Entry";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeOpenEmployeeLedgerEntries(Rec, DetailedEmployeeLedgerEntry, FilterOnDueEntries, IsHandled);
        if IsHandled then
            exit;

        DetailedEmployeeLedgerEntry.SetRange("Employee No.", "No.");
        CopyFilter("Global Dimension 1 Filter", DetailedEmployeeLedgerEntry."Initial Entry Global Dim. 1");
        CopyFilter("Global Dimension 2 Filter", DetailedEmployeeLedgerEntry."Initial Entry Global Dim. 2");
        if FilterOnDueEntries and (GetFilter("Date Filter") <> '') then
            DetailedEmployeeLedgerEntry.SetFilter("Posting Date", '<=%1', GetRangeMax("Date Filter"));
        CopyFilter("Currency Filter", DetailedEmployeeLedgerEntry."Currency Code");
        EmployeeLedgerEntry.DrillDownOnEntries(DetailedEmployeeLedgerEntry);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeOpenEmployeeLedgerEntries(var Employee: Record Employee; var DetailedEmployeeLedgEntry: Record "Detailed Employee Ledger Entry"; FilterOnDueEntries: Boolean; var IsHandled: Boolean)
    begin
    end;
}
