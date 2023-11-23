report 50104 "Modify Posting Date"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    ProcessingOnly = true;
    Caption = 'Modify Posting Date';

    Permissions = TableData "G/L Entry" = rimd,
                  TableData "Cust. Ledger Entry" = rimd,
                  TableData "Sales Invoice Header" = rimd,
                  TableData "Sales Invoice Line" = rimd,
                  TableData "Detailed Cust. Ledg. Entry" = rimd,
                  TableData "Value Entry" = rimd,
                  TableData "GST Ledger Entry" = rimd,
                  TableData "Detailed GST Ledger Entry" = rimd;
    dataset
    {
        // dataitem(DataItemName; SourceTableName)
        // {
        //     column(ColumnName; SourceFieldName)
        //     {

        //     }
        // }

    }



    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field("G/L Document No."; GLDocumentNo)
                    {
                        ApplicationArea = All;
                        trigger OnLookup(var Text: Text): Boolean
                        begin
                            IF PAGE.RUNMODAL(20, GLEntry11) = ACTION::LookupOK THEN begin
                                GLDocumentNo := GLEntry11."Document No.";
                                GLENTRY.Reset();
                                GLENTRY.SetRange("Document No.", GLDocumentNo);
                                IF GLENTRY.FindFirst() then begin
                                    OldDate := GLENTRY."Posting Date";
                                end;
                            END;
                        end;

                    }
                    field("Old Date"; OldDate)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field("New Date"; NewDate)
                    {
                        ApplicationArea = all;
                        Editable = true;
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }

        }

    }
    trigger OnPostReport();
    begin
        GLENTRY.Reset();
        GLENTRY.SetRange("Document No.", GLDocumentNo);
        IF GLENTRY.FindSet() then
            repeat
                GLENTRY."Posting Date" := NewDate;
                GLENTRY.Modify();
            until GLENTRY.Next = 0;
        Message('Done');
        Clear(GLDocumentNo);
        Clear(OldDate);
        Clear(NewDate);
    end;

    trigger OnInitReport();
    Begin
        Clear(GLDocumentNo);
        Clear(OldDate);
        Clear(NewDate);
    End;



    var
        GLENTRY: Record 17;
        GLDocumentNo: Code[20];
        OldDate: Date;
        NewDate: date;
        GLEntry11: Record 17;
}