page 50202 Calculatrice
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Ma calculatrice';
    

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(valeur1; valeur1)
                {
                    Caption = 'Valeur 1';
                    ToolTip = 'Entrez la première valeur';
                }
                field(resultat; resultat)
                {
                    Caption = 'Résultat';
                    ToolTip = 'Le résultat de l''opération';
                    Editable = false;
                }
                field(valeur2; valeur2)
                {
                    Caption = 'Valeur 2';
                    ToolTip = 'Entrez la deuxième valeur';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Addition)
            {
                Caption = 'Additionner';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    resultat :=Calculator.Calcul(valeur1, valeur2, 'Addition');
                end;
            }
            action(Sousctraction)
            {
                Caption = 'Soustraire';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    resultat := Calculator.Calcul(valeur1, valeur2, 'Substraction');
                end;
            }
            action(Multiplication)
            {
                Caption = 'Multiplier';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    resultat := Calculator.Calcul(valeur1, valeur2, 'Multiplication');
                end;
            }
            action(Division)
            {
                Caption = 'Diviser';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    if valeur2 = 0 then begin
                        Error('Impossible de diviser par zéro');
                    end else begin
                        resultat := Calculator.Calcul(valeur1, valeur2, 'Division');
                    end;
                end;
            }
            action(Clear)
            {
                Caption = 'Effacer';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    valeur1 := 0;
                    valeur2 := 0;
                    resultat := 0;
                end;
            }
        }
    }

    var
        Calculator: Codeunit "Calcul";
        valeur1: Decimal;
        valeur2: Decimal;
        resultat: Decimal;
}