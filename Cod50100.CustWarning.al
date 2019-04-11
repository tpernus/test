codeunit 50100 "CustWarning"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', true, true)]
    local procedure SalesPostOnBeforePostSalesDoc(VAR SalesHeader: Record "Sales Header")
    var
        Cust: Record Customer;
        highLblErr: Label 'High Level';
        lowLblMsg: Label 'Low';
    begin
        Cust.GET(SalesHeader."Sell-to Customer No.");
        case Cust.WarningLevel of
            Cust.WarningLevel::High:
                Error(highLblErr);
            Cust.WarningLevel::Low:
                Message(lowLblMsg);
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', true, true)]
    local procedure SalesPostOnAfterPostSalesDoc(SalesInvHdrNo: Code[20])
    //OnAfterPostSalesDoc(VAR SalesHeader : Record "Sales Header";VAR GenJnlPostLine : Codeunit "Gen. Jnl.-Post Line";SalesShptHdrNo : Code;RetRcpHdrNo : Code;SalesInvHdrNo : Code;SalesCrMemoHdrNo : Code;CommitIsSuppressed : Boolean)
    var
        SalesInvHdr: Record "Sales Invoice Header";
        Customer: Record Customer;
        UpdateLevel: Codeunit UpdateCustLevel;

    begin
        SalesInvHdr.GET(SalesInvHdrNo);
        Customer.GET(SalesInvHdr."Bill-to Customer No.");
        UpdateLevel.UpdateCustLevel(Customer);
    end;

}