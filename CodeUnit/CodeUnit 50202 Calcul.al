codeunit 50202 Calcul
{
    trigger OnRun()
    begin

    end;

    procedure Calcul(valeur1: Decimal; valeur2: Decimal; type: Text[20]): Decimal
    begin
        case type of
            'Addition':
                exit(valeur1 + valeur2);
            'Substraction':
                exit(valeur1 - valeur2);
            'Multiplication':
                exit(valeur1 * valeur2);
            'Division':
                exit(valeur1 / valeur2);
        end;
    end;
}