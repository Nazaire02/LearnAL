page 50201 "Etudiant Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Etudiant;
    CaptionML=ENU='Add new student', FRA = 'Ajouter un étudiant';
    
    
    layout
    {
        area(Content)
        {
            group(Général)
            {
                field(Nom;Rec.Nom){
                    ApplicationArea=All;
                }
                field(Prenoms;Rec.Prenoms){
                    ApplicationArea=All;
                }
            }
            group(Détails)
            {
                field(Statut;Rec.Statut){
                    ApplicationArea=All;
                }
                field(Inscrit;Rec.Inscrit){
                    ApplicationArea=All;
                }
                field(Matricule;Rec.Matricule){
                    ApplicationArea=All;
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