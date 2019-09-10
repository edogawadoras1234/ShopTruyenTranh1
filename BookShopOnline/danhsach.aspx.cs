using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;
using BookShopOnline.Models;
using System.Web.ModelBinding;

namespace BookShopOnline
{
    public partial class BookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Book> GetBooks([QueryString("id")] int? categoryId)
        {
            var _db = new BookShopOnline.Models.BookContext();
            IQueryable<Book> query = _db.Books;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.MaTL == categoryId);
            }
            return query;
        }
    }
}