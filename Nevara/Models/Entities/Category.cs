﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Nevara.Data.Interfaces;
using Nevara.Models.Enum;
using Nevara.Models.Interfaces;

namespace Nevara.Models.Entities
{
    
    [Table("Categories")]
    public class Category : IHasSoftDelete
    {

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }
        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(255)]
        [Column(TypeName = "varchar(255)")]
        public string Image { get; set; }   
        public bool IsDeleted { get; set; }
        public ICollection<Product> Products { set; get; }
    }
}
