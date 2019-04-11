pageextension 50100 "CustWarning" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field(Warning; WarningLevel)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(Processing)
        {
            action(UpdateLevel)
            {
                ApplicationArea = All;
                RunObject = codeunit UpdateCustLevel;
                Image = Process;
                Caption = 'Update Customer Levels';
            }
        }
    }

    var
        myInt: Integer;
}