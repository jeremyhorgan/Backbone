using System;
using System.Linq;
using System.Linq.Expressions;
using Lanner.Backbone.Data.Context;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Lanner.Backbone.Data.Repository.Test
{
    internal static class AssertHelper
    {
        internal static void EntityExists<TEntity>(string connectionString, Expression<Func<TEntity, bool>> predicate) where TEntity : class
        {
            var options = new DbContextOptionsBuilder<BackboneDbContext>();            
            options.UseSqlServer(connectionString);
            using (var context = new BackboneDbContext(options.Options))
            {
                var list = context.Set<TEntity>().Where(predicate);
                Assert.AreEqual(1, list.Count());
            }
        }

        internal static void EntityNotExists<TEntity>(string connectionString, Expression<Func<TEntity, bool>> predicate) where TEntity : class
        {
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            options.UseSqlServer(connectionString);
            using (var context = new BackboneDbContext(options.Options))
            {
                var list = context.Set<TEntity>().Where(predicate);
                Assert.AreEqual(0, list.Count());
            }
        }
    }
}
