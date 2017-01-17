using System;
using System.Collections.Generic;
using MediatR;
using Microsoft.Extensions.DependencyInjection;

namespace Lanner.Backbone.WebApp.Services
{
    static class MediatorServiceCollectionExtensions
    {
        internal static IServiceCollection AddMediator(this IServiceCollection services)
        {
            services.AddScoped<SingleInstanceFactory>(p => t => p.GetRequiredService(t));
            services.AddScoped<MultiInstanceFactory>(p => t => p.GetRequiredServices(t));
            services.AddScoped<IMediator, Mediator>();

            return services;
        }

        private static IEnumerable<object> GetRequiredServices(this IServiceProvider provider, Type serviceType)
        {
            return (IEnumerable<object>)provider.GetRequiredService(typeof(IEnumerable<>).MakeGenericType(serviceType));
        }
    }
}
