report 50200 Etudiant
{
    DefaultLayout=RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption='Etats des étudiants';
    RDLCLayout='./Report/RDLC/Etudiants.RDLC';
    
    dataset
    {
        dataitem(Etudiant;Etudiant)
        {
            column(Etudiant_code;"Etudiant code")
            {
                
            }
            column(Nom;Nom){}
            column(Prenoms;Prenoms){}
            column(Statut;Statut){}
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    
                }
            }
        }
    }
    var
        myInt: Integer;
}