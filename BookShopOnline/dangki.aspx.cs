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
    public partial class dangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (Name.Text == "")
                ten.Visible = true;
            else ten.Visible = false;

            if (EmailAddress.Text == "")
                email.Visible = true;
            else email.Visible = false;

            if (ConfirmEmailAddress.Text == "")
                xnemail.Visible = true;
            else xnemail.Visible = false;

            if (Password.Text == "")
                mk.Visible = true;
            else mk.Visible = false;
            if (ConfirmPassword.Text == "")
                xnmk.Visible = true;          
            else
            {
                xnmk.Visible = false;
                if (KtTrungKhoa())
                {

                    Label1.Text = "Tài khoản đã tồn tại";
                }
                else
                {
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-2SVCGMM\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True");
                    SqlCommand cmdd = new SqlCommand("INSERT INTO TaiKhoan(TaiKhoan,MatKhau) VALUES('" + EmailAddress.Text + "','" + Password.Text + "')", con);
                    con.Open();
                    cmdd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Đăng kí thành công!";
                }
            }

        }
        protected void Name_TextChanged(object sender, EventArgs e)
        {

        }
        public bool KtTrungKhoa()
        {
            bool ok = false;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-2SVCGMM\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select TaiKhoan from TaiKhoan where TaiKhoan='" + EmailAddress.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr[0].ToString().ToLower().Trim() == EmailAddress.Text.ToLower().Trim())
                    ok = true;
            }
            con.Close();
            return ok;
        }
    }
}