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
        protected void Page_Load(object sender, EventArgs e)
        {
            Adsoyad.Text = islemler.GetUserName(); 
            Sektor.Text = islemler.GetJob();
            //var a = db.KULLANICI.Where(s => s.kullanici_id == 1).FirstOrDefault();
            //ADI.Text = a.ad;
        }
    }
}