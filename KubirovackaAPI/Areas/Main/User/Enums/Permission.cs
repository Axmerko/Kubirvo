namespace KubirovackaAPI.Areas.Main.User.Enums
{
    public enum Permission
    {
        None = -1,
        SuperAdmin = 0,
        CreateList = 1,
        EditList = 2,
        AssignLicense = 3,
        MakeGroupAdvertiser = 4,
        GetSummary = 5,
        GetPerformanceStats = 6, // Pouze pokud je to pro urcitou skupinu, pokud je to obecne, tak se
                                 // proste ukazuji statistiky ze vsech seznamu vytvorenych uzivatelem
        GetEarningsStats = 7,
        GetListInfo = 8,
        DeleteList = 9,
        GetOverviewXLSX = 10,
        ListLicenses = 11,
        ListMembers = 12,
        AddNewUserToGroup = 13,
        EditUserProfile = 14,
        GetLists = 15,
        SetUserStatusInGroup = 16,
        CanViewOtherUsers = 17,
        GetRoles = 18,
        WoodQualities = 19,
        Company = 20,
        ShareList = 21,
        AcceptSharedList = 22,
        ManageAds = 23,
        ChangeListStatus = 24
    }
}