using Template.Application.Services;
using Template.Domain.Abstractions;
using Xunit;

namespace Template.Application.Tests;

public sealed class PingServiceTests
{
    [Fact]
    public void GetMessage_ReturnsExpectedTimestamp()
    {
        var fakeClock = new FakeClock(new DateTimeOffset(2030, 1, 1, 0, 0, 0, TimeSpan.Zero));
        var service = new PingService(fakeClock);

        var message = service.GetMessage();

        Assert.Equal("pong at 2030-01-01T00:00:00.0000000+00:00", message);
    }

    private sealed class FakeClock(DateTimeOffset utcNow) : IClock
    {
        public DateTimeOffset UtcNow { get; } = utcNow;
    }
}
