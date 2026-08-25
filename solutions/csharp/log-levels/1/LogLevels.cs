static class LogLine
{
    public static string Message(string logLine)
    {
        int messageStart = logLine.IndexOf(":");
        string message = logLine.Substring(messageStart + 1).Trim();
        return message;
        
    }

    public static string LogLevel(string logLine)
    {
        int messageEnd = logLine.IndexOf("]");
        // Grab the substring
        string logLevel = logLine
            .Substring(0 ,messageEnd);
        // Remove the brackets and make it lower case
        logLevel = logLevel
            .Replace("[", "")
            .Replace("]", "")
            .Trim()
            .ToLower();
        return logLevel;
    }

    public static string Reformat(string logLine)
    {
        string message = Message(logLine);
        string logLevel = LogLevel(logLine);
        
        return $"{message} ({logLevel})";
    }
}
