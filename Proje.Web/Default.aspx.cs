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
        PersonalWebSiteBlogEntities db = new PersonalWebSiteBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var a = db.KULLANICI.Where(s => s.kullanici_id == 1).FirstOrDefault();
            //ADI.Text = a.ad;
        }
    }
}