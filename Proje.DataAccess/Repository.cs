using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using System.Data.Common;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;

namespace Proje.DataAccess
{
    public class Repository : BaseRepository, IRepository
    {
        #region Base Implementation

        private bool _disposed;
        ////Here we pass the connection and we flag the contextReused
        ////so we can use the repository with the using clause ...
        public Repository(PersonalWebSiteBlogEntities context)
        {
            this._context = context;
            this._contextReused = true;
        }

        #endregion

        #region Disposable
        //Dispose implementation
        public void Dispose()
        {
            DisposeObject(true);
            GC.SuppressFinalize(this);
        }
        //Distructor
        ~Repository()
        {
            DisposeObject(false);
        }
        //Concrete private implementation of the dispose method
        private void DisposeObject(bool disposing)
        {
            if (_disposed)
            {
                return;
            }
            if (disposing)
            {
                if (_context != null)
                {
                    _context.Dispose();
                }
                _disposed = true;
            }
        }
        #endregion

        long totalRowCount;

        public long GetTotalRowCount()
        {
            return totalRowCount;
        }


        public long Count<T>()
        {
            //try
            //{
            //    SayderEntities context = GetObjectContext();
            //    var query = new ObjectQuery<T>
            //        typeof(T).Name,
            //        context,
            //        MergeOption.NoTracking);
            //    int count = query.Count();
            //    ReleaseObjectContextIfNotReused();
            //    return count;
            //}
            //catch (Exception ex)
            //{
            //    //bool ekle = Ortak.Session.HataEkle(ex);
            //    return 0;
            //}
            return 0;
        }

        public long Count<T>(Expression<Func<T, bool>> expression)
        {
            //try
            //{
            //    SayderEntities context = GetObjectContext();
            //    var query = new ObjectQuery<T>(
            //        typeof(T).Name,
            //        ((IObjectContextAdapter)context),
            //        MergeOption.NoTracking)
            //        .Where(expression);
            //    int count = query.Count();
            //    ReleaseObjectContextIfNotReused();
            //    return count;
            //}
            //catch (Exception ex)
            //{

            //    // bool ekle = Ortak.Session.HataEkle(ex);
            //    return 0;
            //}
            return 0;
        }

        public IList<T> GetAll<T>()
        {
            try
            {
                PersonalWebSiteBlogEntities context = GetObjectContext();
                //IList<T> list = ((IObjectContextAdapter)context).ObjectContext.CreateQuery<T>("[" + typeof(T).Name + "]").ToList();

                var contex = ((IObjectContextAdapter)context).ObjectContext.CreateQuery<T>("[" + typeof(T).Name + "]");
                contex.MergeOption = MergeOption.NoTracking;
                IList<T> list = contex.ToList();

                ReleaseObjectContextIfNotReused();

                return list;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return null;
            }
        }

        public IList<T> GetAll<T>(Expression<Func<T, bool>> expression)
        {
            try
            {
                PersonalWebSiteBlogEntities context = GetObjectContext();
                //IList<T> list = ((IObjectContextAdapter)context).ObjectContext.CreateQuery<T>("[" + typeof(T).Name + "]")
                //    .Where(expression)
                //    .ToList();

                var contex = ((IObjectContextAdapter)context).ObjectContext.CreateQuery<T>("[" + typeof(T).Name + "]");
                contex.MergeOption = MergeOption.NoTracking;
                IList<T> list = contex.Where(expression).ToList();

                ReleaseObjectContextIfNotReused();

                return list;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return null;
            }
        }


        public IList<T> GetAllPaged<T>(Expression<Func<T, bool>> expression, Expression<Func<T, object>> sortExpression, int maximumRows, int startRowIndex)
        {
            try
            {
                PersonalWebSiteBlogEntities context = GetObjectContext();
                IQueryable<T> query = ((IObjectContextAdapter)context).ObjectContext.CreateQuery<T>("[" + typeof(T).Name + "]")
                    .Where(expression);

                totalRowCount = query.Count();

                IList<T> list = query
                    .OrderBy(sortExpression)
                    .Skip(startRowIndex)
                    .Take(maximumRows)
                    .ToList();

                ReleaseObjectContextIfNotReused();
                return list;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return null;
            }
        }



        public T GetSingle<T>(Expression<Func<T, bool>> expression)
        {
            PersonalWebSiteBlogEntities context = null;
            T result = default(T);
            try
            {
                context = GetObjectContext();
                var contex = ((IObjectContextAdapter)context).ObjectContext.CreateQuery<T>("[" + typeof(T).Name + "]");
                contex.MergeOption = MergeOption.NoTracking;
                result = contex.Where(expression).FirstOrDefault();

                ReleaseObjectContextIfNotReused();

            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);

            }
            return result;
        }

        public bool Add<T>(T entity)
        {
            try
            {
                PersonalWebSiteBlogEntities context = GetObjectContext();
                ((IObjectContextAdapter)context).ObjectContext.AddObject(typeof(T).Name, entity);
                int result = context.SaveChanges();
                ReleaseObjectContextIfNotReused();
                return true;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return false;
            }
        }

        public bool Update<T>(T entity)
        {
            PersonalWebSiteBlogEntities context = GetObjectContext();
            object originalItem;
            try
            {
                var oc = ((IObjectContextAdapter)context).ObjectContext.CreateEntityKey(typeof(T).Name, entity);

                System.Data.Entity.Core.EntityKey key = oc; // context.CreateEntityKey(typeof(T).Name, entity);
                if (((IObjectContextAdapter)context).ObjectContext.TryGetObjectByKey(key, out originalItem))
                {
                    ((IObjectContextAdapter)context).ObjectContext.ApplyPropertyChanges(typeof(T).Name, entity);
                    //context.ApplyCurrentValues(typeof(T).Name, entity);
                    // ((IObjectContextAdapter)context).ObjectContext.Detach(originalItem);

                }
                int result = ((IObjectContextAdapter)context).ObjectContext.SaveChanges();
                ReleaseObjectContextIfNotReused();

                return true;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return false;
            }
        }


        public bool Delete<T>(T entity)
        {
            PersonalWebSiteBlogEntities context = GetObjectContext();
            object originalItem;
            try
            {
                //EntityKey key = context.CreateEntityKey(typeof(T).Name, entity);
                var oc = ((IObjectContextAdapter)context).ObjectContext.CreateEntityKey(typeof(T).Name, entity);

                System.Data.Entity.Core.EntityKey key = oc;
                if (((IObjectContextAdapter)context).ObjectContext.TryGetObjectByKey(key, out originalItem))
                {
                    ((IObjectContextAdapter)context).ObjectContext.DeleteObject(originalItem);
                }
                int result = context.SaveChanges();
                ReleaseObjectContextIfNotReused();
                return true;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return false;
            }
        }


        /// <summary>
        /// Start Transaction
        /// </summary>
        /// <returns></returns>
        public DbTransaction BeginTransaction()
        {
            PersonalWebSiteBlogEntities context = GetObjectContext();
            if (((IObjectContextAdapter)context).ObjectContext.Connection.State != ConnectionState.Open)
            {
                ((IObjectContextAdapter)context).ObjectContext.Connection.Open();
            }

            return ((IObjectContextAdapter)context).ObjectContext.Connection.BeginTransaction();
        }

        public bool Save()
        {
            PersonalWebSiteBlogEntities context = GetObjectContext();
            try
            {
                int result = context.SaveChanges();
                ReleaseObjectContextIfNotReused();
                return true;
            }
            catch (Exception ex)
            {
                //bool ekle = Ortak.Session.HataEkle(ex);
                return false;
            }
        }
    }

}
