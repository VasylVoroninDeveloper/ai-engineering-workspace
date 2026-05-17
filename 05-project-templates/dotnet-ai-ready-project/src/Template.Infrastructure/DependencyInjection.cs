using Microsoft.Extensions.DependencyInjection;
using Template.Domain.Abstractions;
using Template.Infrastructure.Time;

namespace Template.Infrastructure;

public static class DependencyInjection
{
    public static IServiceCollection AddInfrastructure(this IServiceCollection services)
    {
        services.AddSingleton<IClock, SystemClock>();
        return services;
    }
}
