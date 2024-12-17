namespace TBL.Views
{

    public partial class UnauthorizedPage : ContentPage
    {
        public UnauthorizedPage()
        {
            InitializeComponent();
        }

        private async void OnReturnClicked(object sender, EventArgs e)
        {
            await Navigation.PopToRootAsync();
        }
    }
}