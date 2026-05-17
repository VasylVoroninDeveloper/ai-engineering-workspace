namespace Template.Domain.Abstractions;

public interface IClock
{
    DateTimeOffset UtcNow { get; }
}
