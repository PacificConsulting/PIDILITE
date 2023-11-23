tableextension 50110 "Purch_Payable_Setup_Ext" extends "Purchases & Payables Setup"
{
    fields
    {
        field(50000; "Auto Update GenProdPostingGr"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Product Posting Group";
            Caption = 'Auto Update Gen. Prod. Posting gr.';
        }
    }

    var

}