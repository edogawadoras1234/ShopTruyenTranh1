using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookShopOnline.Models
{
    public class Sach
    {
        public int MaSach { get; set; }

        public string TenSach { get; set; }

        public string MoTa { get; set; }

        public string HinhAnh { get; set; }

        public string GiaSach { get; set; }

        public string MaTL { get; set; }

        // Navigation property

        public virtual List<TheLoai> TheLoais { get; set; }
    }
}