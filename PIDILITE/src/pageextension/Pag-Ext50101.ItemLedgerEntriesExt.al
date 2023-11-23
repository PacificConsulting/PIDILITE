pageextension 50101 "Item_Ledger_Entries_Ext" extends "Item Ledger Entries"
{
    layout
    {
        modify("Order No.")
        {
            Visible = true;
        }
    }
    /* trigger OnOpenPage()
    var
        ItemLedEntries: Record "Item Ledger Entry";
        PurRcptHdr: Record "Purch. Rcpt. Header";
        PosSalesShip: Record "Sales Shipment Header";
    begin
        ItemLedEntries.SetRange("Order No.", '');
        if ItemLedEntries.FindSet() then
            repeat
                if ItemLedEntries."Document Type" = ItemLedEntries."Document Type"::"Purchase Receipt" then begin
                    if PurRcptHdr.Get(ItemLedEntries."Document No.") then
                        ItemLedEntries."Order No." := PurRcptHdr."Order No.";
                end;
                if ItemLedEntries."Document Type" = ItemLedEntries."Document Type"::"Sales Shipment" then begin
                    if PosSalesShip.Get(ItemLedEntries."Document No.") then
                        ItemLedEntries."Order No." := PosSalesShip."Order No.";
                end;
                ItemLedEntries.Modify();
                Commit();
            until ItemLedEntries.Next() = 0;
        CurrPage.Update();
    end; */
}