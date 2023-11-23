pageextension 50114 "Journal_Voucher_Ext" extends "Journal Voucher"
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

        moveafter("Account No."; Description, "Currency Code", "Debit Amount", "Credit Amount", Amount,
        "Amount (LCY)", "Bal. Account Type", "Bal. Account No.", "Document Date",
        "External Document No.", "Location Code", "Shortcut Dimension 1 Code",
        "T.A.N. No.", "TDS Section Code")


        addafter("TDS Section Code")
        {
            field("T.C.A.N. No."; Rec."T.C.A.N. No.")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("TCS Nature of Collection"; Rec."TCS Nature of Collection")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
        moveafter("TCS Nature of Collection"; "Cheque Date", "Cheque No.")
        addafter("Cheque No.")
        {
            field("PO No."; Rec."PO No.")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }

        moveafter("PO No."; "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group",
        "Bal. Gen. Posting Type", "Bal. Gen. Bus. Posting Group", "Bal. Gen. Prod. Posting Group")
    }
}