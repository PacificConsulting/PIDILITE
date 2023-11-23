pageextension 50117 "Cash_Receipt_Voucher_Ext" extends "Cash Receipt Voucher"
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
        moveafter("Party Code"; "Account Type", "Account No.", Description, "Debit Amount", "Credit Amount", Amount,
         "Bal. Account Type", "Bal. Account No.", "Document Date",
        "External Document No.")


        addafter("External Document No.")
        {
            field("PO No."; Rec."PO No.")
            {
                ApplicationArea = All;
            }
        }
        moveafter("PO No."; "Location Code", "Shortcut Dimension 1 Code", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group",
        "Bal. Gen. Posting Type", "Bal. Gen. Bus. Posting Group", "Bal. Gen. Prod. Posting Group")
    }
}