namespace TBL.Views;

public partial class ReviewsPage : ContentPage
{
    public ReviewsPage()
    {
        InitializeComponent();
    }

    public List<Review> UserReviews { get; set; } = new List<Review>
    {
        new Review { Text = "Отличная работа!", Author = "Света", Rating = 5 },
        new Review { Text = "Все было здорово!", Author = "Алекс", Rating = 4 }
    };
}

public class Review
{
    public string Text { get; set; }
    public string Author { get; set; }
    public int Rating { get; set; }
}
