codeunit 50101 "UpdateCustLevel"
{
    trigger OnRun()

    begin
        UpdateCustLevel(MyCust);
    end;

    procedure UpdateCustLevel(var CustP: Record Customer)
    var
    begin
        CountRec := 0;
        CountAll := myCust.Count();
        Menu.Open(txt001Lbl);
        if CustP.FindSet() then
            repeat
                CountRec += 1;
                Menu.Update(1, Round(CountRec / CountAll * 10000, 1));
                CustP.SetFilter("Date Filter", '..%1', WorkDate());
                CustP.CalcFields("Balance Due (LCY)");
                CustLevel.SetFilter(Amount, '..%1', CustP."Balance Due (LCY)");
                IF CustLevel.FindLast() THEN begin
                    CustP.WarningLevel := CustLevel.Level;
                    CustP.Modify(true);
                end

            until CustP.Next() = 0;
    end;

    var
        myCust: Record Customer;
        CustLevel: Record Level;
        Menu: Dialog;
        txt001Lbl: Label '@1@@@@@@@@@@@@@@@@@@@@@';
        CountRec: Integer;
        CountAll: Integer;

}