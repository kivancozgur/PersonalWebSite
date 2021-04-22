using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class Kullanici : BaseBusiness
    {
        public IList<Proje.DataAccess.KULLANICI> Listele()
        {
            return repository.GetAll<Proje.DataAccess.KULLANICI>().ToList();
        }

        public Proje.DataAccess.KULLANICI GetById(int id)
        {
            return repository.GetSingle<Proje.DataAccess.KULLANICI>(p => p.kullanici_id == id);
        }

        public bool Ekle(Proje.DataAccess.KULLANICI Entity)
        {
            return repository.Add<Proje.DataAccess.KULLANICI>(Entity);
        }

        public bool Guncelle(Proje.DataAccess.KULLANICI Entity)
        {
            return repository.Update<Proje.DataAccess.KULLANICI>(Entity);
        }

        public bool Sil(Proje.DataAccess.KULLANICI Entity)
        {
            return repository.Delete<Proje.DataAccess.KULLANICI>(Entity);
        }
    }
}
