using System;
using Microsoft.EntityFrameworkCore;

namespace Lanner.Backbone.Data.Repository
{
    public class UnitOfWork : IUnitOfWork, IDisposable
    {
        private readonly DbContext _context;
        private readonly Lazy<IApplicationRepository> _applicationRepository;
        private readonly Lazy<IProjectRepository> _projectRepository;

        public UnitOfWork(DbContext context)
        {
            _context = context;

            _applicationRepository = new Lazy<IApplicationRepository>(() => new ApplicationRepository(_context));
            _projectRepository = new Lazy<IProjectRepository>(() => new ProjectRepository(_context));
        }

        public IApplicationRepository Applications => _applicationRepository.Value;
        public IProjectRepository Projects => _projectRepository.Value;

        public int Complete()
        {
            try
            {
                return _context.SaveChanges();
            }
            catch (Exception e)
            {                
                throw new RepositoryException("Failed to save repository changes.", e);
            }
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
