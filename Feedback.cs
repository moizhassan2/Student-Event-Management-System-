public class Feedback
{
    public int Id { get; set; }
    public int EventId { get; set; }
    public Event Event { get; set; }

    public string Comment { get; set; }
    public int Rating { get; set; }
}
