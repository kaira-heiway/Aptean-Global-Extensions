tableextension 88068 "R2R Employee Ledger Entry NIQ" extends "Employee Ledger Entry"
{
    procedure DrillDownOnEntries(var DtldEmployeeLedgerEntry: Record "Detailed Employee Ledger Entry")
    var
        EmployeeLedgerEntry: Record "Employee Ledger Entry";
        DrillDownPageID: Integer;
    begin
        EmployeeLedgerEntry.Reset();
        DtldEmployeeLedgerEntry.CopyFilter("Employee No.", EmployeeLedgerEntry."Employee No.");
        DtldEmployeeLedgerEntry.CopyFilter("Currency Code", EmployeeLedgerEntry."Currency Code");
        DtldEmployeeLedgerEntry.CopyFilter("Initial Entry Global Dim. 1", EmployeeLedgerEntry."Global Dimension 1 Code");
        DtldEmployeeLedgerEntry.CopyFilter("Initial Entry Global Dim. 2", EmployeeLedgerEntry."Global Dimension 2 Code");
        EmployeeLedgerEntry.SetCurrentKey("Employee No.", "Posting Date");
        EmployeeLedgerEntry.SetRange(Open, true);
        OnBeforeDrillDownEntries(EmployeeLedgerEntry, DtldEmployeeLedgerEntry, DrillDownPageID);
        DtldEmployeeLedgerEntry.CopyFilter("R2R Employee Posting Group NIQ", EmployeeLedgerEntry."Employee Posting Group");
        Page.Run(DrillDownPageID, EmployeeLedgerEntry);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeDrillDownEntries(var EmployeeLedgerEntry: Record "Employee Ledger Entry"; var DtldEmployeeLedgerEntry: Record "Detailed Employee Ledger Entry"; var DrillDownPageID: Integer)
    begin
    end;
}
