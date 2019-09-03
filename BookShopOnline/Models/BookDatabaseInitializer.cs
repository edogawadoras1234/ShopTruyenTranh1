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
                 TenTL = "Trinh Thám"
                 },
                 new Category
                 {
                 MaTL = 2,
                 TenTL = "Hành Động"
                 },
                 new Category{
                 MaTL= 3,
                 TenTL = "Võ Thuật"
                 },
                 new Category{
                 MaTL= 4,
                 TenTL = "Tình Cảm"
                 },
                 new Category{
                 MaTL= 5,
                 TenTL = "Siêu Nhân"
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
                 TenSach = "Thám tử Conan",
                 MoTa = "Kudo Shinichi bị một tổ chức áo đen cho uống thuốc độc và teo nhỏ trở thành Edogawa Conan." +
                 " Mặc dù cơ thể bị teo nhỏ nhưng với trí tuệ của một thám tử lừng danh anh vẫn phá được nhiều vụ án mà người lớn phải đau đầu suy nghĩ",
                 HinhAnh="Pic1.JPG",
                 GiaSach = 10000,
                 MaTL = 1
                 },
                 //book 2
                 new Book
                 {
                 MaSach = 2,
                 TenSach = "7 viên ngọc rồng",
                 MoTa = "Songoku cùng các chiến binh Z phải chiến đấu với nhiều quái vật và mọi người cùng nhau tăng cấp lên các sức mạnh mới",
                 HinhAnh="Pic2.JPG",
                 GiaSach = 12000,
                 MaTL = 2
                 },
                 //book 3
                 new Book
                 {
                 MaSach = 3,
                 TenSach = "One Punch Man",
                 MoTa = "Saitama cùng đồng bọn đánh với các quái vât. Riêng anh chỉ với 1 đấm có thể giết hết quái vật",
                 HinhAnh="Pic3.JPG",
                 GiaSach = 10000,
                 MaTL = 3
                 },
                 new Book
                 {
                 MaSach = 4,
                 TenSach = " Ore no Yome ni Nare Yo",
                 MoTa = "Bộ truyện lãng mạn học đường cùng với Yome và Ore",
                 HinhAnh="Pic4.jpg",
                 GiaSach = 10000,
                 MaTL = 4
                 },
                 new Book
                 {
                 MaSach = 5,
                 TenSach = "Kamen Rider Zi-o",
                 MoTa = "Mùa thu năm 2018, một cô gái cùng cỗ máy thời gian xuất hiện trước mặt nhân vật chính của chúng ta, " +
                 "Tokiwa Sougo sinh vào năm 2000 mà cô gái được báo mộng sẽ trở thành Vua." +
                 " Cô gái bí ẩn xuất hiện từ cỗ máy thời gian nói với main rằng: Tôi đến từ năm 2068." +
                 " Trong tương lai, thế giới sẽ do Ma Vương thống trị, khiến loài người lầm than, tạo nên một thế giới vô vọng." +
                 " Cô gái tới năm 2018 với hi vọng thay đổi thế giới tương lai đầy tuyệt vọng mà cô nói. " +
                 "Trong tương lai, cậu sẽ trở thành Zi-O, vị vua thời gian, và cũng là ma vương hủy diệt thế giới.",
                 HinhAnh="Pic5.jpg",
                 GiaSach = 10000,
                 MaTL = 5
                 },
                 };
            return books;
        }
    }
}