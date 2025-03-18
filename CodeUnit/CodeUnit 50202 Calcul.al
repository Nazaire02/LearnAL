codeunit 50202 Calcul
{
    trigger OnRun()
    begin
        
    end;
    procedure Calcul(valeur1: Decimal; valeur2: Decimal; type: Text[20]): Decimal
    begin
        if type = 'Addition' then
            exit(valeur1 + valeur2);
        if type = 'Substraction' then
            exit(valeur1 - valeur2);
        if type = 'Multiplication' then
            exit(valeur1 * valeur2);
        if type = 'Division' then
            exit(valeur1 / valeur2);        
    end;
}