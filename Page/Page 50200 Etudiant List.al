page 50200 ListEtudiant
{
    Caption = 'Liste des étudiants';
    PageType = List;
    CardPageId = "Etudiant Card";
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Etudiant;
    InsertAllowed = false;
    ModifyAllowed = false;

    layout
    {
        area(Content)
        {
            repeater("TableHeader")
            {
                field("Etudiant code"; Rec."Etudiant code")
                {
                    ApplicationArea = All;
                }
                field(Nom; Rec.Nom)
                {
                    ApplicationArea = All;
                }
                field(Prenoms; Rec.Prenoms)
                {
                    ApplicationArea = All;
                }
                field(Statut; Rec.Statut)
                {
                    ApplicationArea = All;
                }
                field(Inscrit; Rec.Inscrit)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}