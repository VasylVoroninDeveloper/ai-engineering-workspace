using Microsoft.Extensions.DependencyInjection;
using Template.Application.Services;

namespace Template.Application;

public static class DependencyInjection
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        services.AddScoped<IPingService, PingService>();
        return services;
    }
}
