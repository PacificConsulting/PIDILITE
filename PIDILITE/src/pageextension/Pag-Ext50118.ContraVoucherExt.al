pageextension 50118 "Contra_Voucher_Ext" extends "Contra Voucher"
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
        movebefore("Document Type"; "Document No.")
        moveafter("Document Type"; "Account Type", "Account No.", Description, "Debit Amount", "Credit Amount", Amount, "Bal. Account Type", "Bal. Account No.", "Document Date", "External Document No.", "Location Code",
   "Shortcut Dimension 1 Code", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group",
        "Bal. Gen. Posting Type", "Bal. Gen. Bus. Posting Group", "Bal. Gen. Prod. Posting Group")
    }
}