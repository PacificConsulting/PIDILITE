pageextension 50102 "Vendor_Card_Ext" extends "Vendor Card"
{
    layout
    {
        modify("P.A.N. No.")
        {
            ApplicationArea = ALL;
            ShowMandatory = true;
        }
        modify("GST Registration No.")
        {
            ShowMandatory = true;
            ApplicationArea = All;
        }
        modify(Address)
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("Address 2")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("Country/Region Code")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify(City)
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("Post Code")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("State Code")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("GST vendor Type")
        {
            trigger OnAfterValidate()
            begin
                if Rec."GST Vendor Type" = Rec."GST Vendor Type"::Registered then
                    Message('Please Upload GST Certification')
                else
                    Message('Please Upload NON GST Certification');
            end;
        }
    }
    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec.Validate("Gen. Bus. Posting Group", 'DOMESTIC');
        Rec.Validate("Vendor Posting Group", 'DOMESTIC');
    end;
}