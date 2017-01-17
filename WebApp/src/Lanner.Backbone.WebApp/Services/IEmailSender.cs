using System.Threading.Tasks;

namespace Lanner.Backbone.WebApp.Services
{
    public interface IEmailSender
    {
        Task SendEmailAsync(string email, string subject, string message);
    }
}
