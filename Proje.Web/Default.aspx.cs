using Proje.Business;
using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class Default : System.Web.UI.Page
    {
        KULLANICIISLEM islemler = new KULLANICIISLEM();
        BLOGISLEM blogislem = new BLOGISLEM();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Kullanıcı İşlemleri Başlangıç
            Adsoyad.Text = islemler.GetUserName(); 
            AdSoyadContent.Text = islemler.GetUserName();
            Sektor.Text = islemler.GetJob();
            SektorContent.Text = islemler.GetJob();
            // Kullanıcı İşlemleri Bitiş

            // Blog İşlemleri Başlangıç
            Konu.Text = blogislem.GetSubject(1);
            Tarih.Text = blogislem.GetDate(1);
            Baslik.Text = blogislem.GetTitle(1);

            Konu2.Text = blogislem.GetSubject(2);
            Tarih2.Text = blogislem.GetDate(2);
            Baslik2.Text = blogislem.GetTitle(2);
            // Blog İşlemleri Bitiş
        }
    }
}