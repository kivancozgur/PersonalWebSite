using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;

namespace Proje.DataAccess
{
    public abstract class BaseRepository
    {
        //Our entity framework engine used in the solution
        internal PersonalWebSiteBlogEntities _context;
        //Switch that tells us if the datacontext is reused
        internal bool _contextReused;

        //This return the current, or a new connection through the EF
        public DbContext GetDbContext()
        {
            if (!_contextReused)
            {
                DbContext entities = new PersonalWebSiteBlogEntities();
                //entities.ExecuteStoreCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
                //entities.CommandTimeout = 360;
                return entities;
            }
            //_context.ExecuteStoreCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
            //_context.CommandTimeout = 360;
            _context.Database.CommandTimeout = 3600;
            return _context;
        }


        public PersonalWebSiteBlogEntities GetObjectContext()
        {
            try
            {
                if (!_contextReused)
                {
                    return new PersonalWebSiteBlogEntities();
                }
            }
            catch (Exception ex)
            {
            }
            return _context;
        }


        //This is the public method that we will call from our repository
        public void ReleaseObjectContextIfNotReused()
        {

            try
            {
                if (!_contextReused)
                {
                    ReleaseObjectContext();
                }
            }
            catch
            {

                throw;

            }

        }

        //Simple dispose of the current EF
        public void ReleaseObjectContext()
        {
            if (_context != null)
            {
                _context.Dispose();
            }
            _contextReused = false;
        }

    }
}
