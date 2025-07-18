table 50101 "BDN Car Model"
{
    DataClassification = CustomerContent;
    Caption = 'Car Model';

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
        field(3; "Brand Id"; Guid)
        {
            TableRelation = "BDN Car Brand".SystemId;
            Caption = 'Brand Id';
        }
        field(4; Power; Integer)
        {
            Caption = 'Power (cc)';
        }
        field(5; "Fuel Type"; Enum "Fuel Type")
        {
            Caption = 'Fuel Type';
        }
    }

    keys
    {
        key(PK; Name, "Brand Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Name, Description)
        {
        }
        fieldgroup(Brick; Name, Description, Power, "Fuel Type")
        {
        }
    }
}