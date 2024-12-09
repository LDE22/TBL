namespace TBL.Views
{
    public partial class BookmarksPage : ContentPage
    {
        public BookmarksPage()
        {
            InitializeComponent();

            // ������ ������ ��� ��������
            var bookmarks = new List<Bookmark>
            {
                new Bookmark { Name = "������ �����", Description = "�������", Image = "master1.png" },
                new Bookmark { Name = "������ �����", Description = "�����", Image = "master2.png" },
                new Bookmark { Name = "������ ���", Description = "��������", Image = "master3.png" }
            };

            // �������� ������ � CollectionView ����� ��� ���
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
