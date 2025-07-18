permissionset 50100 "BDN BCTech"
{
    Caption = 'BDN BCTech', Locked = true;
    Assignable = true;
    Permissions = tabledata "BDN Car Brand" = RIMD,
        tabledata "BDN Car Model" = RIMD,
        table "BDN Car Brand" = X,
        table "BDN Car Model" = X,
        page "BDN API Car Brand" = X,
        page "BDN API Car Model" = X;
}