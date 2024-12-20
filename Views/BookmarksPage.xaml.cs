using System.Collections.ObjectModel;
using TBL.Models;

namespace TBL.Views
{
    public partial class BookmarksPage : ContentPage
    {
        public ObservableCollection<Bookmark> Bookmarks { get; set; }

        public Command<Bookmark> DeleteCommand { get; }

        public BookmarksPage()
        {
            InitializeComponent();

            // Инициализация списка закладок
            Bookmarks = new ObservableCollection<Bookmark>
            {
                new Bookmark { Name = "Мастер Алина", Description = "Маникюр", Image = "master1.png" },
                new Bookmark { Name = "Мастер Света", Description = "Брови", Image = "master2.png" },
                new Bookmark { Name = "Мастер Оля", Description = "Прическа", Image = "master3.png" }
            };

            DeleteCommand = new Command<Bookmark>(OnDeleteBookmark);

            BindingContext = this;
        }

        // Удаление закладки
        private void OnDeleteBookmark(Bookmark bookmark)
        {
            if (bookmark != null && Bookmarks.Contains(bookmark))
            {
                Bookmarks.Remove(bookmark);
            }
        }
        // Метод для добавления закладки из поиска
        public void AddBookmark(Bookmark bookmark)
        {
            if (!Bookmarks.Contains(bookmark))
            {
                Bookmarks.Add(bookmark);
            }
        }
    }
}
