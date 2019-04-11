pageextension 50102 "SalesReceivablesSetupExt" extends "Sales & Receivables Setup"
{
    layout
    {

    }

    actions
    {
        addlast(Navigation)
        {
            action(Level)
            {
                ApplicationArea = All;
                RunObject = page "Level List";
                Image = List;
                Caption = 'Levels';
            }
        }
    }
}
