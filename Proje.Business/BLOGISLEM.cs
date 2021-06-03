using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class BLOGISLEM
    {
        public int blog_id { get; set; }
        public string konu { get; set; }
        public string baslik { get; set; }
        public string icerik { get; set; }
        public string tarih { get; set; }
        public string yazar { get; set; }

        public string GetSubject(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.BLOG.Where(x => x.blog_id == id).FirstOrDefault();
            return a.konu;
        }
        public string GetTitle(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.BLOG.Where(x => x.blog_id == id).FirstOrDefault();
            return a.baslik;
        }
        public string GetContent(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.BLOG.Where(x => x.blog_id == id).FirstOrDefault();
            return a.icerik;
        }
        public string GetWriter(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.BLOG.Where(x => x.blog_id == id).FirstOrDefault();
            return a.yazar;
        }
        public string GetDate(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            var a = db.BLOG.Where(x => x.blog_id == id).FirstOrDefault();
            return a.tarih;
        }


    }
}
