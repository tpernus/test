table 50100 "Level"
{
    DataClassification = AccountData;
    LookupPageId = "Level List";

    fields
    {
        field(1; Level; Enum CustomerLevel)
        {
            DataClassification = AccountData;
            Caption = 'Level';

        }
        field(2; Amount; Decimal)
        {
            DataClassification = AccountData;
            Caption = 'Amount';
        }
    }


    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}