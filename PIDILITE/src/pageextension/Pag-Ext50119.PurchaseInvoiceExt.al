pageextension 50119 "Purchase_Invoice_Ext" extends "Purchase Invoice"
{
    layout
    {
        modify("Vendor Invoice No.")
        {
            ApplicationArea = All;
            Visible = true;
        }
        addafter("Vendor Invoice No.")
        {
            field("Vendor Shipment No."; Rec."Vendor Shipment No.")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
    }
}