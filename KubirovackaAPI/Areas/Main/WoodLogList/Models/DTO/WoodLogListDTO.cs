using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using KubirovackaAPI.Areas.Main.WoodLogList.Enums;
using KubirovackaAPI.Areas.Main.WoodLogList.Models.Database;

namespace KubirovackaAPI.Areas.Main.WoodLogList.Models.DTO
{
    public class WoodLogListDTO
    {
        public Guid Id { get; set; }
        
        [Required(ErrorMessage = "Jméno seznamu musí být uvedeno!"),
         MinLength(1, ErrorMessage = "Jméno seznamu musí být minimálně {1} znaků dlouhé!")]
        public string Name { get; set; }
        
        [Required(ErrorMessage = "Datum vytvoření seznamu musí být uvedeno!")] public DateTimeOffset CreatedAt { get; set; }
        public RewardType RewardType { get; set; }
        
        public int RewardInCents { get; set; }
        
        [Required] public Guid OwnerGroupId { get; set; }
        [Required(ErrorMessage = "Klády musí být zadány!")]
        public List<WoodLogDTO> Logs { get; set; }

        [DefaultValue(false)]
        public bool? EditedFromWeb { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
        public int Version { get; set; }
        #nullable enable
        public WoodLogListStatusDTO? StatusDto { get; set; }
        #nullable disable

    }
}