using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Advertising.Models.Database;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database.Join;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;

namespace KubirovackaAPI.Areas.Main.User.Models.Database
{
    public sealed class Group
    {
        [Key]
        public Guid Id { get; set; }
        
        [Required]
        public string Name { get; set; }
        
        [Required, DefaultValue(GroupType.Default)]
        public GroupType GroupType { get; set; }

        public Guid? ParentId { get; set; }
        public Group Parent { get; set; }
        
        public bool IsAdvertiser { get; set; }
        public int AdCredit { get; set; }
        
        public ICollection<UserGroup> UserGroups { get; set; }
        
        public ICollection<WoodLogList.Models.Database.WoodLogList> LogsLists { get; set; }
        public ICollection<DeliveryNote.Models.Database.DeliveryNote> DeliveryNotes { get; set; }
        
        public ICollection<License> LicensesOwned { get; set; }
        public ICollection<Ad> AdsOwned { get; set; }
        
        public ICollection<WoodLogListStatus> LogListStatuses { get; set; }
    }
}