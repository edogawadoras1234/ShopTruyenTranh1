using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookShopOnline.Models
{
    public class TheLoai
    {
        public int MaTL { get; set; }

        public string TenTL { get; set; }

        public virtual Sach Sach { get; set; }
    }
}