using Lanner.Backbone.Data.Model;
using Microsoft.EntityFrameworkCore;

namespace Lanner.Backbone.Data.Repository
{
    public class ProjectRepository : Repository<Project>, IProjectRepository
    {
        public ProjectRepository(DbContext context) : base(context)
        {
        }
    }
}
