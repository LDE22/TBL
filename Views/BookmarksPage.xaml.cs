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

            // ������������� ������ ��������
            Bookmarks = new ObservableCollection<Bookmark>
            {
                new Bookmark { Name = "������ �����", Description = "�������", Image = "master1.png" },
                new Bookmark { Name = "������ �����", Description = "�����", Image = "master2.png" },
                new Bookmark { Name = "������ ���", Description = "��������", Image = "master3.png" }
            };

            DeleteCommand = new Command<Bookmark>(OnDeleteBookmark);

            BindingContext = this;
        }

        // �������� ��������
        private void OnDeleteBookmark(Bookmark bookmark)
        {
            if (bookmark != null && Bookmarks.Contains(bookmark))
            {
                Bookmarks.Remove(bookmark);
            }
        }
        // ����� ��� ���������� �������� �� ������
        public void AddBookmark(Bookmark bookmark)
        {
            if (!Bookmarks.Contains(bookmark))
            {
                Bookmarks.Add(bookmark);
            }
        }
    }
}
