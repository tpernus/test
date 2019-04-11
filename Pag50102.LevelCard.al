page 50102 "Level Card"
{

    PageType = Card;
    SourceTable = "Level";
    Caption = 'Level Card';

    layout
    {
        area(content)
        {
            group(General)
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
