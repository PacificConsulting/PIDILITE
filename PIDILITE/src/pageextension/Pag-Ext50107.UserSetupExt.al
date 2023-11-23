pageextension 50107 "UserSetup_Ext" extends "User Setup"
{
    layout
    {
        addafter("Allow Posting To")
        {
            field("Purchase User"; Rec."Purchase User")
            {
                ApplicationArea = All;
                Caption = 'PO Reopen Permission';
            }
            field("Sales User"; Rec."Sales User")
            {
                ApplicationArea = All;
                Caption = 'SO Reopen Permission';
            }
        }
    }
}