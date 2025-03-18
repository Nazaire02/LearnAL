table 50101 Emplyee
{
    Caption='Employee table';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"emp code"; Code[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; "emp name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "salary"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "DOJ"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "City"; Option)
        {
            OptionMembers=Abidjan, Bouaké, Yakro, Alepe;
            DataClassification = ToBeClassified;
        }
        field(6; "Gender"; Option)
        {
            OptionMembers=Male, female;
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; "emp code")
        {
            Clustered = true;
        }
        key(sk; "City")
        {
            
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    trigger OnInsert()
    begin
        Message('Data inserted');
    end;
    
    trigger OnModify()
    begin
        Message('Data modified');
    end;
    
    trigger OnDelete()
    begin
        Message('Data deleted');
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}