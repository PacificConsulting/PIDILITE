tableextension 50105 "BankAccountLedEntry_Ext" extends "Bank Account Ledger Entry"
{
    fields
    {
        field(50000; "PO No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }

    var
        myInt: Integer;
}