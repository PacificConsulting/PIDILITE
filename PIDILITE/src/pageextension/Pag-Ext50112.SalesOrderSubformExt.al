pageextension 50112 "SalesOrderSubform_Ext" extends "Sales Order Subform"
{
    layout
    {
        addafter("Line Amount")
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
                Editable = true;
            }
        }
    }
}