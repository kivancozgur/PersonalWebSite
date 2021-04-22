using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using System.Data.Common;
namespace Proje.DataAccess
{
    public interface IRepository : IDisposable
    {
        //Add a new Entity
        bool Add<T>(T entity);

        //Count the number of entities available
        long Count<T>();

        //Count using a filer
        long Count<T>(Expression<Func<T, bool>> expression);

        //Delete an existing entity
        bool Delete<T>(T entity);

        //List all the available entities
        IList<T> GetAll<T>();

        //List the entities using a filter
        IList<T> GetAll<T>(Expression<Func<T, bool>> expression);

        //sayfalama için
        long GetTotalRowCount();
        IList<T> GetAllPaged<T>(Expression<Func<T, bool>> expression, Expression<Func<T, object>> sortExpression, int maximumRows, int startRowIndex);

        //Get a single entity
        T GetSingle<T>(Expression<Func<T, bool>> expression);

        //Update an existing entity
        bool Update<T>(T entity);

        DbTransaction BeginTransaction();
        bool Save();


    }

}
