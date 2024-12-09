namespace TBL.Views
{
    public partial class BookmarksPage : ContentPage
    {
        public BookmarksPage()
        {
            InitializeComponent();

            // Пример данных для закладок
            var bookmarks = new List<Bookmark>
            {
                new Bookmark { Name = "Мастер Алина", Description = "Маникюр", Image = "master1.png" },
                new Bookmark { Name = "Мастер Света", Description = "Брови", Image = "master2.png" },
                new Bookmark { Name = "Мастер Оля", Description = "Прическа", Image = "master3.png" }
            };

            // Привязка данных к CollectionView через его имя
            BookmarksCollectionView.ItemsSource = bookmarks;
        }
    }

    public class Bookmark
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
    }
}
