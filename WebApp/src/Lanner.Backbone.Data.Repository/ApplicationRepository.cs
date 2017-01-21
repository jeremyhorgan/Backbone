using System.Linq;
using Lanner.Backbone.Data.Model;
using Microsoft.EntityFrameworkCore;

namespace Lanner.Backbone.Data.Repository
{
    public class ApplicationRepository : Repository<Application>, IApplicationRepository
    {
        public ApplicationRepository(DbContext context) : base(context)
        {            
        }

        public Application GetWithApplicationType(int id)
        {
            return Context.Set<Application>().Include(e => e.ApplicationType).FirstOrDefault(e => e.Id == id);
        }

        public Application GetWithProjects(int id)
        {
            return Context.Set<Application>().Include(e => e.Projects).FirstOrDefault(e => e.Id == id);
        }
    }
}
