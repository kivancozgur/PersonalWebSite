using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class KULLANICIISLEM
    {
        public int kullanici_id { get; set; }
        public string ad { get; set; }
        public string soyad { get; set; }
        public string sektor { get; set; }

        public string GetUserName()
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.KULLANICI.Where(x => x.kullanici_id == 1).FirstOrDefault();
            return a.ad + " " + a.soyad;
        }

        public string GetJob()
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.KULLANICI.Where(x => x.kullanici_id == 1).FirstOrDefault();
            return a.sektor;
        }


    }
}
