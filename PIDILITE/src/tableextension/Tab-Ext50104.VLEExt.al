tableextension 50104 "VLE_Ext" extends "Vendor Ledger Entry"
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