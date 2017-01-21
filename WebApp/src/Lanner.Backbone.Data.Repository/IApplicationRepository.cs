using Lanner.Backbone.Data.Model;

namespace Lanner.Backbone.Data.Repository
{
    public interface IApplicationRepository : IRepository<Application>
    {
        Application GetWithApplicationType(int id);
        Application GetWithProjects(int id);
    }
}