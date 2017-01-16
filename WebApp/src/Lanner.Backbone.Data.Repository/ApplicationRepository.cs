using Lanner.Backbone.Data.Model;
using Microsoft.EntityFrameworkCore;

namespace Lanner.Backbone.Data.Repository
{
    public class ApplicationRepository : Repository<Application>, IApplicationRepository
    {
        public ApplicationRepository(DbContext context) : base(context)
        {
        }
    }
}
