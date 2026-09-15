tableextension 88065 R2RBankAccountStatementExtNIQ extends "Bank Account Statement"
{
    trigger OnBeforeDelete()
    var
        UserSetup: Record "User Setup";
    begin
        UserSetup.Get(UserId);
        if not UserSetup."R2R Allow Delete BankStat NIQ" then
            Error(BankStatementDelErr);
    end;

    var
        BankStatementDelErr: Label 'You are not allowed to delete a bank account statement. If you need it field allow delete bank acc. statement must be yes in the user setup.', Locked = true;
}
