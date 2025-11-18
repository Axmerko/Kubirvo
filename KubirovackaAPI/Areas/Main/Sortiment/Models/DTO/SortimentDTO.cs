using System;

namespace KubirovackaAPI.Areas.Main.Sortiment.Models.DTO
{
    public class SortimentDTO
    {
        public SortimentDTO() {}

        public SortimentDTO(Database.Sortiment sortiment)
        {
            Id = sortiment.Id;
            OwnerGroupGuid = sortiment.OwnerGroupGuid;
            OwnerUserGuid = sortiment.OwnerUserGuid;
            Name = sortiment.Name;
            Code = sortiment.Code;
        }
        
        public Guid Id { get; set; }
        public Guid OwnerGroupGuid { get; set; }
        public Guid OwnerUserGuid { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
    }
}