table 50200 Etudiant
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50000; "Etudiant code"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }

        field(50001; "Nom"; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(50002; "Prenoms"; Text[40])
        {
            DataClassification = ToBeClassified;

        }
        field(50003; "Matricule"; Text[20])
        {
            DataClassification = ToBeClassified;

        }

        field(50004; "Statut"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Doublant,Admis;
        }

        field(50005; Inscrit; Boolean)
        {
           CaptionML=ENU = 'Registered', FRA = 'Elève inscrit';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Etudiant code")
        {
            Clustered = true;
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

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}