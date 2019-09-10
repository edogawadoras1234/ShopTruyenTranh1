using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookShopOnline
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DangNhap_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-2SVCGMM\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select TaiKhoan,MatKhau From TaiKhoan Where TaiKhoan ='" + TK.Text + "'and MatKhau='" + MK.Text + "'", con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            if (tb.Rows.Count > 0)
            {
                thongbao.Text = "Đăng nhập thành công";
            }
            else thongbao.Text = "Sai Tài Khoản/Mật Khẩu";
        }
    }
}