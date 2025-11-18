using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KubirovackaAPI.Areas.Main.Sortiment.Models.DTO;

namespace KubirovackaAPI.Areas.Main.Sortiment.Models.Database
{
    public class Sortiment
    {
        protected Sortiment() {}

        public Sortiment(Guid ownerGroupGuid, Guid ownerUserGuid, string code, string name)
        {
            OwnerGroupGuid = ownerGroupGuid;
            OwnerUserGuid = ownerUserGuid;
            Code = code;
            Name = name;
        }
        
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid Id { get; set; }
        public Guid OwnerGroupGuid { get; set; }
        public Guid OwnerUserGuid { get; set; }
        
        public string Code { get; set; }
        public string Name { get; set; }
        
        [ForeignKey(nameof(OwnerGroupGuid))]
        public virtual User.Models.Database.Group OwnerGroup { get; set; }
        [ForeignKey(nameof(OwnerUserGuid))]
        public virtual User.Models.Database.User OwnerUser { get; set; }

        public void Update(CreateSortimentDTO dto)
        {
            Name = dto.Name;
            Code = dto.Code;
        }
    }
}