report 50100 "CustomerList"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    ProcessingOnly = false;
    PreviewMode = Normal;
    RDLCLayout = 'CustomerList.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";

            column(No; "No.")
            {
                IncludeCaption = true;

            }

            column(Name; Name)
            { }
            dataitem(salesinvHader; "Sales Invoice Header")
            {
                DataItemLink = "Bill-to Customer No." = field ("No.");
                DataItemLinkReference = Customer;
                column(LastinvAmount; "Amount Including VAT")
                {
                    AutoFormatType = 1;
                }
            }

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(MyInt; MyInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }
    }
    var
        MyInt: Integer;
}