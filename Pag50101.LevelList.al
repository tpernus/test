page 50101 "Level List"
{

    PageType = List;
    SourceTable = "Level";
    Caption = 'Level List';
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Level Card";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Level"; "Level")
                {
                    ApplicationArea = All;
                }
                field("Amount"; "Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
