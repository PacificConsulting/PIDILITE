pageextension 50111 "PurchaseOrderSubform_Ext" extends "Purchase Order Subform"
{
    layout
    {
        modify("Line Discount %")
        {
            Visible = true;
            ApplicationArea = all;
        }
        modify("Line Discount Amount")
        {
            Visible = true;
            ApplicationArea = all;
        }
        modify("Allow Invoice Disc.")
        {
            Visible = true;
            ApplicationArea = all;
        }

        moveafter("Item Reference No."; Description, "Unit of Measure Code", "Location Code", "Bin Code", Quantity,
        "Direct Unit Cost", "Line Amount", "Line Discount %", "Line Discount Amount")
        addafter("Line Discount Amount")
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
                Editable = true;
            }
        }
        moveafter("Gen. Prod. Posting Group"; "TDS Section Code", "Nature of Remittance", "Act Applicable",
        "Allow Invoice Disc.", "GST Group Code", "HSN/SAC Code", "GST Group Type", Exempted, "GST Jurisdiction Type",
        "GST Credit","Shortcut Dimension 1 Code", "Qty. to Receive", "Quantity Received", "Qty. to Invoice", "Quantity Invoiced", "Qty. to Assign",
        "GST Assessable Value", "Custom Duty Amount", "Qty. Assigned", "Promised Receipt Date", "Planned Receipt Date",
        "Expected Receipt Date", "Over-Receipt Quantity", "Over-Receipt Code")
        modify("No.")
        {
            trigger OnAfterValidate()
            var
            begin
                PurchPaySetup.Get();
                if Rec.Type = Rec.Type::"G/L Account" then begin
                    Rec.Validate("Gen. Prod. Posting Group", PurchPaySetup."Auto Update GenProdPostingGr");
                    Rec.Modify();
                end;
            end;
        }
    }
    var
        PurchPaySetup: Record "Purchases & Payables Setup";
}