pageextension 50106 "Purch_Comment_Sheet_Ext" extends "Purch. Comment Sheet"
{
    layout
    {
        addafter(Date)
        {
            field(Type; Rec.Type)
            {
                ApplicationArea = All;
            }
        }
    }
}