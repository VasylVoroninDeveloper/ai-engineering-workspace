using Template.Application;
using Template.Application.Services;
using Template.Infrastructure;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddApplication();
builder.Services.AddInfrastructure();

var app = builder.Build();

app.MapGet("/health", () => Results.Ok(new { status = "ok" }));

app.MapGet("/ping", (IPingService pingService) =>
{
    return Results.Ok(new { message = pingService.GetMessage() });
});

app.Run();
