tableextension 50103 "GenJnlLine_Ext" extends "Gen. Journal Line"
{
    fields
    {
        field(50000; "PO No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Purchase Header"."No." where(Status = filter(Released), "Buy-from Vendor No." = field("Account No."));
        }
    }

}