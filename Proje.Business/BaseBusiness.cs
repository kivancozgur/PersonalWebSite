using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Proje.DataAccess;
using System.Linq.Expressions;
using System.Data;
using System.Data.Common;
using System.Data.Entity;

namespace Proje.Business
{
    public abstract class BaseBusiness
    {
        internal IRepository repository = new Repository(new PersonalWebSiteBlogEntities());
    }
}
