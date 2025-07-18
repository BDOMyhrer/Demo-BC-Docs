table 50100 "BDN Car Brand"
{
    DataClassification = CustomerContent;
    Caption = 'Car Brand';

    fields
    {
        field(1; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Country; Text[100])
        {
            Caption = 'Country';
        }
    }

    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Name, Description)
        {
        }
        fieldgroup(Brick; Name, Description, Country)
        {
        }
    }
}