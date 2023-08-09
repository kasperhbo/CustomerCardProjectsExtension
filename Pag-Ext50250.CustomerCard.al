pageextension 50250 "Customer Card " extends "Customer Card"
{

    layout
    {
        addafter(Statistics)
        {
            //Add a part to the page
            part(CustProjLP; CustomerProjectsListPart)
            {
                ApplicationArea = All;
                Caption = 'Customer Projects';
            }
        }
    }

    trigger OnOpenPage();
    begin
        //So only the projects for the current customer are shown
        CurrPage.CustProjLP.Page.SetRange(Rec."No.");
    end;
}
