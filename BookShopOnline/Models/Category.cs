using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BookShopOnline.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        [Key]
        public int MaTL { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string TenTL { get; set; }
        public virtual ICollection<Book> Books { get; set; }
    }
}