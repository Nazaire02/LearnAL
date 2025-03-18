tableextension 50104 CustomerExtend extends Customer
{
    fields
    {
        field(50000; Fidelite; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}