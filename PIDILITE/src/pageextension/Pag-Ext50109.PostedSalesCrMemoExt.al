pageextension 50109 "PostedSalesCrMemo_Ext" extends "Posted Sales Credit Memo"
{
    layout
    {
        addafter("Your Reference")
        {
            field(Retention; Rec.Retention)
            {
                ApplicationArea = All;
            }
            field("Mobilisation Advance"; Rec."Mobilisation Advance")
            {
                ApplicationArea = All;
            }
        }
    }
}