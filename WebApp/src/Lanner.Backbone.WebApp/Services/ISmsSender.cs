using System.Threading.Tasks;

namespace Lanner.Backbone.WebApp.Services
{
    public interface ISmsSender
    {
        Task SendSmsAsync(string number, string message);
    }
}
