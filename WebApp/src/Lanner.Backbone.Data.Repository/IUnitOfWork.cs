namespace Lanner.Backbone.Data.Repository
{
    public interface IUnitOfWork
    {
        IApplicationRepository Applications { get; }
        IProjectRepository Projects { get; }

        int Complete();
    }
}
