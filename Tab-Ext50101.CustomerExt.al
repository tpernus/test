tableextension 50101 "CustomerExt" extends Customer
{
    fields
    {
        field(50100; WarningLevel; Enum CustomerLevel)
        {
            DataClassification = AccountData;
            Caption = 'Warning Level';

        }
    }

    var
        myInt: Integer;
}