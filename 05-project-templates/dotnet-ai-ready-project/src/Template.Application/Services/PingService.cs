using Template.Domain.Abstractions;

namespace Template.Application.Services;

public sealed class PingService(IClock clock) : IPingService
{
    public string GetMessage()
    {
        return $"pong at {clock.UtcNow:O}";
    }
}
