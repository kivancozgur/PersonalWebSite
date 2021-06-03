using Proje.Business;
using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web.Blog
{
    public partial class BlogPost : System.Web.UI.Page
    {
        KULLANICIISLEM islemler = new KULLANICIISLEM();
        BLOGISLEM blogislem = new BLOGISLEM();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Blog İşlemleri Başlangıç
            Konu.Text = blogislem.GetSubject(1);
            Tarih.Text = blogislem.GetDate(1);
            Baslik.Text = blogislem.GetTitle(1);
            Yazar.Text = blogislem.GetWriter(1);
            Icerik.Text = blogislem.GetContent(1);
            // Blog İşlemleri Bitiş

            // Kullanıcı İşlemleri Başlangıç
            Adsoyad.Text = islemler.GetUserName();
            Sektor.Text = islemler.GetJob();
            // Kullanıcı İşlemleri Bitiş
        }
    }
}