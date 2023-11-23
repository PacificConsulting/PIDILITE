pageextension 50113 "Purch_Invoice_Subform_Ext" extends "Purch. Invoice Subform"
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
        addafter("Line Amount")
        {
            field("Gen Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
                Editable = true;
            }
        }
        moveafter("Item Reference No."; Description, "Unit of Measure Code", "Location Code", "Bin Code", Quantity,
        "Direct Unit Cost", "Line Amount", "Line Discount %", "Line Discount Amount", "Gen. Prod. Posting Group",
        "TDS Section Code", "Nature of Remittance", "Act Applicable", "Allow Invoice Disc.", "GST Group Code", "HSN/SAC Code", "GST Group Type", "GST Credit", Exempted,
        "GST Jurisdiction Type", "Shortcut Dimension 1 Code", "Qty. to Assign", "Qty. Assigned", "GST Assessable Value", "Custom Duty Amount")
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