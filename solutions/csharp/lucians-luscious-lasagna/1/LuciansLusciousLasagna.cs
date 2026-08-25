class Lasagna
{
    private const int ExpectedMinutes = 40;
    
    public int ExpectedMinutesInOven()
    {
        return ExpectedMinutes;
    }
    
    public int RemainingMinutesInOven(int timeInOven)
    {
        return ExpectedMinutes - timeInOven;
    }
    
    public int PreparationTimeInMinutes(int layers)
    {
        return 2 * layers;
    }
    
    public int ElapsedTimeInMinutes(int layers, int elapsedTime)
    {
        return elapsedTime +  PreparationTimeInMinutes(layers);
    }
}
