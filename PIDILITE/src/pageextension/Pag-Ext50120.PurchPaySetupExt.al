pageextension 50120 "Purch_Pay_Setup_Ext" extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Document Default Line Type")
        {
            field("Auto Update GenProdPostingGr"; Rec."Auto Update GenProdPostingGr")
            {
                ApplicationArea = All;
                Editable = true;
            }
        }
    }
}