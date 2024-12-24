using TBL.Models;
using TBL.Data;
using TBL.ViewModels;

namespace TBL.Views
{
    public partial class TicketDetailsPage : ContentPage
    {
        private readonly TicketDetailsViewModel _viewModel;

        public TicketDetailsPage(Ticket ticket, UserData userData)
        {
            InitializeComponent();
            _viewModel = new TicketDetailsViewModel(ticket, userData);
            BindingContext = _viewModel;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await _viewModel.LoadDataAsync(); // «агрузка данных при открытии страницы
        }
    }
}
