pageextension 50110 "BalnkerSalesOrder_Ext" extends "Blanket Sales Order"
{
    layout
    {

    }
    actions
    {
        modify(SendApprovalRequest)
        {
            trigger OnBeforeAction()
            begin
                Rec.TestField("Payment Terms Code");
                Rec.TestField("Shortcut Dimension 1 Code");
                Rec.TestField("Location Code");
            end;
        }
        modify(MakeOrder)
        {
            trigger OnBeforeAction()
            begin
                Rec.TestField("Payment Terms Code");
                Rec.TestField("Shortcut Dimension 1 Code");
                Rec.TestField("Location Code");
            end;
        }
    }
}