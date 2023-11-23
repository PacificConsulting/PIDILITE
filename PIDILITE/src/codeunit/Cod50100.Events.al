codeunit 50100 "Events"
{
    trigger OnRun()
    begin

    end;
    //Item Jnl.-Post Line
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertItemLedgEntry', '', false, false)]
    local procedure OnBeforeInsertItemLedgEntry(var ItemLedgerEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line"; TransferItem: Boolean; OldItemLedgEntry: Record "Item Ledger Entry")
    var
        PurRcptHdr: Record "Purch. Rcpt. Header";
        PosSalesShip: Record "Sales Shipment Header";
    begin
        if ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Purchase Receipt" then begin
            if PurRcptHdr.Get(ItemLedgerEntry."Document No.") then
                ItemLedgerEntry."Order No." := PurRcptHdr."Order No.";
        end;
        if ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" then begin
            if PosSalesShip.Get(ItemLedgerEntry."Document No.") then
                ItemLedgerEntry."Order No." := PosSalesShip."Order No.";
        end;
    end;
    //Gen. Jnl.-Post Line
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeVendLedgEntryInsert', '', false, false)]
    local procedure OnBeforeVendLedgEntryInsert(var VendorLedgerEntry: Record "Vendor Ledger Entry"; GenJournalLine: Record "Gen. Journal Line"; GLRegister: Record "G/L Register")
    begin
        VendorLedgerEntry."PO No." := GenJournalLine."PO No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnPostBankAccOnBeforeBankAccLedgEntryInsert', '', false, false)]
    local procedure OnPostBankAccOnBeforeBankAccLedgEntryInsert(var BankAccountLedgerEntry: Record "Bank Account Ledger Entry"; var GenJournalLine: Record "Gen. Journal Line"; BankAccount: Record "Bank Account")
    begin
        BankAccountLedgerEntry."PO No." := GenJournalLine."PO No.";
    end;

    var
        myInt: Integer;
}