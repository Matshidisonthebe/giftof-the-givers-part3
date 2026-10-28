namespace GiftOfTheGiversReliefSystem.Data;

public static class SeedData
{
    public static Task InitializeAsync(IServiceProvider services)
    {
        ArgumentNullException.ThrowIfNull(services);

        return Task.CompletedTask;
    }
}
