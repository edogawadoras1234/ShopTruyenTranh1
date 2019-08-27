using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BookShopOnline.Models
{
    public class Book
    {
        [ScaffoldColumn(false)]
        [Key]
        public int MaSach { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string TenSach { get; set; }
        [Required, StringLength(1000), Display(Name = "Book Description"),
        DataType(DataType.MultilineText)]
        public string MoTa { get; set; }
        public string HinhAnh { get; set; }
        [Display(Name = "Price")]
        public float? GiaSach { get; set; }
        public int? MaTL { get; set; }
        public virtual Category Category { get; set; }
    }
}