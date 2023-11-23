pageextension 50100 "Location_Card_Ext" extends "Location Card"
{
    layout
    {
        addafter("Use As In-Transit")
        {
            field("Project Location"; Rec."Project Location")
            {
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    if Rec."Project Location" = true then
                        DimEdit := true;
                end;
            }

            field("Project Code"; Rec."Project Code")
            {
                ApplicationArea = All;
                Editable = DimEdit;
            }
            field("Project Name"; Rec."Project Name")
            {
                ApplicationArea = All;
                Editable = DimEdit;
            }
            field("Client GSTIN"; Rec."Client GSTIN")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("Client State"; Rec."Client State")
            {
                ApplicationArea = All;
                Editable = true;
            }
        }
    }
    trigger OnOpenPage()
    begin
        if Rec."Project Location" = true then
            DimEdit := true
        else
            DimEdit := false;
    end;

    trigger OnClosePage()
    var
        DimValues: Record "Dimension Value";
        DimValuesNew: Record "Dimension Value";
        Location: Record Location;
    begin
        Location.SetFilter(Code, '<>%1', '');
        Location.SetRange("Project Location", true);
        if Location.FindSet() then
            repeat
                DimValues.SetRange("Dimension Code", 'PROJECT');
                DimValues.SetRange(Code, Location."Project Code");
                if not DimValues.FindFirst() then begin
                    DimValuesNew.Validate("Dimension Code", 'PROJECT');
                    DimValuesNew.Validate("Global Dimension No.", 1);
                    DimValuesNew.Validate(Code, Location."Project Code");
                    DimValuesNew.Validate(Name, Location."Project Name");
                    DimValuesNew.Insert();
                    Commit();
                end;
            until Location.Next() = 0;
    end;

    var
        DimEdit: Boolean;
}