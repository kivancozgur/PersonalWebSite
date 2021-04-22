using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class BlogYazilar : BaseBusiness
    {
        public IList<Proje.DataAccess.BLOG> Listele()
        {
            return repository.GetAll<Proje.DataAccess.BLOG>().ToList();
        }

        public Proje.DataAccess.BLOG GetById(int id)
        {
            return repository.GetSingle<Proje.DataAccess.BLOG>(p => p.blog_id == id);
        }

        public bool Ekle(Proje.DataAccess.BLOG Entity)
        {
            return repository.Add<Proje.DataAccess.BLOG>(Entity);
        }

        public bool Guncelle(Proje.DataAccess.BLOG Entity)
        {
            return repository.Update<Proje.DataAccess.BLOG>(Entity);
        }

        public bool Sil(Proje.DataAccess.BLOG Entity)
        {
            return repository.Delete<Proje.DataAccess.BLOG>(Entity);
        }
    }
}
