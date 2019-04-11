page 50100 "Language List"
{
    
    PageType = List;
    SourceTable = "Language";
    Caption = 'MY Language List';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code";"Code")
                {
                    ApplicationArea = All;
                }
                field("Name";"Name")
                {
                    ApplicationArea = All;
                }
                field("Windows Language ID";"Windows Language ID")
                {
                    ApplicationArea = All;
                }
                field("Windows Language Name";"Windows Language Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
