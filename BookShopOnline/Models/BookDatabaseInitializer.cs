using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;

namespace BookShopOnline.Models
{
    public class BookDatabaseInitializer : DropCreateDatabaseAlways<BookContext>
    {
        protected override void Seed(BookContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetBooks().ForEach(p => context.Books.Add(p));
        }
        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
               {
                 MaTL = 1,
                 TenTL = "TrinhTham"
                 },
                 new Category
                 {
                 MaTL = 2,
                 TenTL = "HanhDong"
                 },
                 new Category{
                 MaTL= 3,
                 TenTL = "VoThuat"
                 },
                 };
            return categories;
        }
        private static List<Book> GetBooks()
        {
            var books = new List<Book> {
                 //book 1
                 new Book
                 {
                 MaSach = 1,
                 TenSach = "Thám tử lừng danh Conan",
                 MoTa = "Thám tử lừng danh xuất hiện năm 2019",
                 HinhAnh="Pic1.JPG",
                 GiaSach = 16.04f,
                 MaTL = 1
                 },
                 //book 2
                 new Book
                 {
                 MaSach = 2,
                 TenSach = "7 viên ngọc rồng",
                 MoTa = "Songoku và đồng bọn",
                 HinhAnh="Pic2.JPG",
                 GiaSach = 19.60f,
                 MaTL = 2
                 },
                 //book 3
                 new Book
                 {
                 MaSach = 3,
                 TenSach = "Saitama",
                 MoTa = "Saitama cùng đồng bọn",
                 HinhAnh="Pic3.JPG",
                 GiaSach = 26.73f,
                 MaTL = 3
                 },
                 };
            return books;
        }
    }
}