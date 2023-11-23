pageextension 50115 "Bank_Receipt_Voucher_Ext" extends "Bank Receipt Voucher"
{
    layout
    {
        modify("Debit Amount")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("Credit Amount")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("Bal. Account Type")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Bal. Account No.")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("Document Date")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("External Document No.")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("Location Code")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("Shortcut Dimension 1 Code")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("T.A.N. No.")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("TDS Section Code")
        {
            ApplicationArea = All;
            Visible = true;
        }
        movebefore("Document Type"; "Document No.")
        addafter("Document No.")
        {
            field("Party Type"; Rec."Party Type")
            {
                ApplicationArea = all;
                Visible = true;
            }
            field("Party Code"; Rec."Party Code")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
        moveafter("Party Code"; "Account Type", "Account No.", Description, "Currency Code", "Debit Amount", "Credit Amount", Amount,
        "Amount (LCY)", "Bal. Account Type", "Bal. Account No.", "Document Date",
        "External Document No.", "Cheque Date", "Cheque No.")

        addafter("Cheque No.")
        {
            field("PO No."; Rec."PO No.")
            {
                ApplicationArea = All;
            }
        }
        moveafter("PO No."; "Location Code", "Shortcut Dimension 1 Code", "T.A.N. No.", "TDS Section Code",
        "T.C.A.N. No.", "TCS Nature of Collection")
        addafter("TCS Nature of Collection")
        {
            field("Recipient Bank Account"; Rec."Recipient Bank Account")
            {
                ApplicationArea = all;
                Visible = true;
            }
            field("Message to Recipient"; Rec."Message to Recipient")
            {
                ApplicationArea = all;
                Visible = true;
            }
            field("Nature of Supply"; Rec."Nature of Supply")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
        moveafter("Nature of Supply"; "GST Group Code", "GST Group Type")
        addafter("GST Group Type")
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Excl. GST in TCS Base"; Rec."Excl. GST in TCS Base")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Offline Application"; Rec."Offline Application")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Place of Supply"; Rec."GST Place of Supply")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Customer Type"; Rec."GST Customer Type")
            {
                ApplicationArea = All;
                Visible = true;
            }

        }
        moveafter("GST Customer Type"; "GST Vendor Type", "HSN/SAC Code")
        addafter("HSN/SAC Code")
        {
            field(Exempted; Rec.Exempted)
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Component Code"; Rec."GST Component Code")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
        moveafter("GST Component Code"; "GST on Advance Payment")
        addafter("GST on Advance Payment")
        {
            field("GST Jurisdiction Type"; Rec."GST Jurisdiction Type")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Bill-to/BuyFrom State Code"; Rec."GST Bill-to/BuyFrom State Code")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Ship-to State Code"; Rec."GST Ship-to State Code")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
        moveafter("GST Ship-to State Code"; "Location State Code")
        addafter("Location State Code")
        {

            field("GST Inv. Rounding Precision"; Rec."GST Inv. Rounding Precision")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Inv. Rounding Type"; Rec."GST Inv. Rounding Type")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Reverse Charge"; Rec."GST Reverse Charge")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Reason Type"; Rec."GST Reason Type")
            {
                ApplicationArea = All;
                Visible = true;
            }

        }
        moveafter("GST Reason Type"; "Bank Charge")
        addafter("Bank Charge")
        {
            field("Vendor GST Reg. No."; Rec."Vendor GST Reg. No.")
            {
                ApplicationArea = All;
                Visible = true;
            }

            field("Purch. Invoice Type"; Rec."Purch. Invoice Type")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Inc. GST in TDS Base"; Rec."Inc. GST in TDS Base")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Credit"; Rec."GST Credit")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Without Payment of Duty"; Rec."GST Without Payment of Duty")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Assessable Value"; Rec."GST Assessable Value")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST in Journal"; Rec."GST in Journal")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Transaction Type"; Rec."GST Transaction Type")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("GST Adjustment Entry"; Rec."GST Adjustment Entry")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
        moveafter("GST Transaction Type"; "Location GST Reg. No.", "Customer GST Reg. No.")
        addafter("Customer GST Reg. No.")
        {
            field("Ship-to GST Reg. No."; Rec."Ship-to GST Reg. No.")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Order Address GST Reg. No."; Rec."Order Address GST Reg. No.")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Order Address State Code"; Rec."Order Address State Code")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Bill to-Location(POS)"; Rec."Bill to-Location(POS)")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Reference Invoice No."; Rec."Reference Invoice No.")
            {
                ApplicationArea = All;
                Visible = true;
            }

        }
        moveafter("Reference Invoice No."; "Amount Excl. GST", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group",
        "Bal. Gen. Posting Type", "Bal. Gen. Bus. Posting Group", "Bal. Gen. Prod. Posting Group")


    }
}