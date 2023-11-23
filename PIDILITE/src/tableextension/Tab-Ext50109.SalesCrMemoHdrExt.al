tableextension 50109 "SalesCrMemoHdr_Ext" extends "Sales Cr.Memo Header"
{
    fields
    {
        field(50000; Retention; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(50001; "Mobilisation Advance"; Decimal)
        {
            DataClassification = CustomerContent;
        }
    }

}